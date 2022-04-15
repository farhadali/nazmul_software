<?php

namespace App\Http\Controllers;

use App\Models\Purchase;
use App\Models\VoucherMaster;
use App\Models\AccountLedger;
use App\Models\AccountGroup;
use App\Models\AccountHead;
use App\Models\Accounts;
use App\Models\Branch;
use App\Models\VoucherType;
use App\Models\VoucherMasterDetail;
use App\Models\StoreHouse;
use App\Models\PurchaseFormSettings;
use App\Models\PurchaseDetail;
use App\Models\PurchaseAccount;
use Auth;
use DB;
use Illuminate\Http\Request;
use Session;

class PurchaseController extends Controller
{

    function __construct()
    {
         $this->middleware('permission:purchase-list|purchase-create|purchase-edit|purchase-delete|purchase-print', ['only' => ['index','store']]);
         $this->middleware('permission:purchase-print', ['only' => ['purchasePrint']]);
         $this->middleware('permission:purchase-create', ['only' => ['create','store']]);
         $this->middleware('permission:purchase-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:purchase-delete', ['only' => ['destroy']]);
         $this->page_name = "Purchase";
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $auth_user = Auth::user();
       if($request->has('limit')){
            $limit = $request->limit ??  default_pagination();
            session()->put('_pur_limit', $request->limit);
        }else{
             $limit= \Session::get('_pur_limit') ??  default_pagination();
            
        }
        
        $_asc_desc = $request->_asc_desc ?? 'DESC';
        $asc_cloumn =  $request->asc_cloumn ?? 'id';

        $datas = Purchase::with(['_master_branch','_master_details']);
        $datas = $datas->whereIn('_branch_id',explode(',',\Auth::user()->branch_ids));
        if($auth_user->user_type !='admin'){
            $datas = $datas->where('_user_id',$auth_user->id);   
        }

        if($request->has('_user_date') && $request->_user_date=="yes" && $request->_datex !="" && $request->_datex !=""){
            $_datex =  change_date_format($request->_datex);
            $_datey=  change_date_format($request->_datey);

             $datas = $datas->whereDate('_date','<=', $_datex);
            $datas = $datas->whereDate('_date','>=', $_datey);
        }

        if($request->has('id') && $request->id !=""){
            $ids =  array_map('intval', explode(',', $request->id ));
            $datas = $datas->whereIn('id', $ids); 
        }
        
        if($request->has('_code') && $request->_code !=''){
            $datas = $datas->where('_code','like',"%trim($request->_code)%");
        }

        if($request->has('_transection_ref') && $request->_transection_ref !=''){
            $datas = $datas->where('_transection_ref','like',"%trim($request->_transection_ref)%");
        }
        if($request->has('_note') && $request->_note !=''){
            $datas = $datas->where('_note','like',"%trim($request->_note)%");
        }
        if($request->has('_user_name') && $request->_user_name !=''){
            $datas = $datas->where('_user_name','like',"%trim($request->_user_name)%");
        }
        
        if($request->has('_amount') && $request->_amount !=''){
            $datas = $datas->where('_amount','=',trim($request->_amount));
        }
        
        $datas = $datas->orderBy($asc_cloumn,$_asc_desc)
                        ->paginate($limit);

         $page_name = $this->page_name;
         $account_types = AccountHead::select('id','_name')->orderBy('_name','asc')->get();
         $account_groups = AccountGroup::select('id','_name')->orderBy('_name','asc')->get();
          $current_date = date('Y-m-d');
          $current_time = date('H:i:s');
         

         if($request->has('print')){
            if($request->print =="single"){
                return view('backend.purchase.master_print',compact('datas','page_name','account_types','request','account_groups','current_date','current_time'));
            }

            if($request->print =="detail"){
                return view('backend.purchase.details_print',compact('datas','page_name','account_types','request','account_groups','current_date','current_time','limit'));
            }
         }

        return view('backend.purchase.index',compact('datas','page_name','account_types','request','account_groups','current_date','limit'));
    }

     public function reset(){
        Session::flash('_pur_limit');
       return  \Redirect::to('purchase?limit='.default_pagination());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $users = Auth::user();
        $page_name = $this->page_name;
        $account_types = AccountHead::select('id','_name')->orderBy('_name','asc')->get();
        $account_groups = AccountGroup::select('id','_name')->orderBy('_name','asc')->get();
        $branchs = Branch::orderBy('_name','asc')->get();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        $voucher_types = VoucherType::select('id','_name','_code')->orderBy('_code','asc')->get();
        $store_houses = StoreHouse::whereIn('_branch_id',explode(',',$users->cost_center_ids))->get();
        $form_settings = PurchaseFormSettings::first();
        $inv_accounts = AccountLedger::where('_account_head_id',2)->get();
        $p_accounts = AccountLedger::where('_account_head_id',10)->get();
        $dis_accounts = AccountLedger::where('_account_head_id',11)->get();
        $vat_accounts = AccountLedger::where('_account_group_id',47)->get();

       return view('backend.purchase.create',compact('account_types','page_name','account_groups','branchs','permited_branch','permited_costcenters','voucher_types','store_houses','form_settings','inv_accounts','p_accounts','dis_accounts','vat_accounts'));
    }


    public function purchaseSettings(Request $request){
        $data = PurchaseFormSettings::first();
        if(empty($data)){
            $data = new PurchaseFormSettings();
        }
        $data->_default_inventory = $request->_default_inventory;
        $data->_default_purchase = $request->_default_purchase;
        $data->_default_discount = $request->_default_discount;
        $data->_show_barcode = $request->_show_barcode;
        $data->_show_vat = $request->_show_vat;
        $data->_show_store = $request->_show_store;
        $data->_show_self = $request->_show_self;
        $data->_default_vat_account = $request->_default_vat_account;
        $data->save();

        return redirect('purchase/create');
                       

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      //  return $request->all();
       //###########################
        // Purchase Master information Save Start
        //###########################
         $users = Auth::user();
        $Purchase = new Purchase();
        $Purchase->_date = change_date_format($request->_date);
        $Purchase->_time = date('H:i:s');
        $Purchase->_order_ref_id = $request->_order_ref_id;
        $Purchase->_referance = $request->_referance;
        $Purchase->_ledger_id = $request->_main_ledger_id;
        $Purchase->_user_id = $request->_main_ledger_id;
        $Purchase->_created_by = $users->id."-".$users->name;
        $Purchase->_user_id = $users->id;
        $Purchase->_user_name = $users->name;
        $Purchase->_note = $request->_note;
        $Purchase->_sub_total = $request->_sub_total;
        $Purchase->_discount_input = $request->_discount_input;
        $Purchase->_total_discount = $request->_total_discount;
        $Purchase->_total_vat = $request->_total_vat;
        $Purchase->_total = $request->_total;
        $Purchase->_branch_id = $request->_branch_id;
        $Purchase->_status = 1;
        $Purchase->save();
        $purchase_id = $Purchase->id;

        //###########################
        // Purchase Master information Save End
        //###########################

        //###########################
        // Purchase Details information Save Start
        //###########################
        $_item_ids = $request->_item_id;
        $_barcodes = $request->_barcode;
        $_qtys = $request->_qty;
        $_rates = $request->_rate;
        $_sales_rates = $request->_sales_rate;
        $_vats = $request->_vat;
        $_vat_amounts = $request->_vat_amount;
        $_values = $request->_value;
        $_main_branch_id_detail = $request->_main_branch_id_detail;
        $_main_cost_center = $request->_main_cost_center;
        $_store_ids = $request->_main_store_id;
        $_store_salves_ids = $request->_store_salves_id;
        if(sizeof($_item_ids) > 0){
            for ($i = 0; $i <sizeof($_item_ids) ; $i++) {
                $PurchaseDetail = new PurchaseDetail();
                $PurchaseDetail->_item_id = $_item_ids[$i];
                $PurchaseDetail->_qty = $_qtys[$i];
                $PurchaseDetail->_barcode = $_barcodes[$i];
                $PurchaseDetail->_rate = $_rates[$i];
                $PurchaseDetail->_sales_rate = $_sales_rates[$i];
                $PurchaseDetail->_discount = $_discounts[$i] ?? 0;
                $PurchaseDetail->_discount_amount = $_discount_amounts[$i] ?? 0;
                $PurchaseDetail->_vat = $_vats[$i] ?? 0;
                $PurchaseDetail->_vat_amount = $_vat_amounts[$i] ?? 0;
                $PurchaseDetail->_value = $_values[$i] ?? 0;
                $PurchaseDetail->_store_id = $_store_ids[$i] ?? 0;
                $PurchaseDetail->_cost_center_id = $_main_cost_center[$i] ?? 1;
                $PurchaseDetail->_store_salves_id = $_store_salves_ids[$i] ?? 1;
                $PurchaseDetail->_branch_id = $_main_branch_id_detail[$i] ?? 1;
                $PurchaseDetail->_no = $purchase_id;
                $PurchaseDetail->_status = 1;
                $PurchaseDetail->_created_by = $users->id."-".$users->name;
                $PurchaseDetail->save();





            }
        }

        //###########################
        // Purchase Details information Save End
        //###########################

        //###########################
        // Purchase Account information Save End
        //###########################
        $_total_dr_amount = 0;
        $_total_cr_amount = 0;

        $PurchaseFormSettings = PurchaseFormSettings::first();
        $_default_inventory = $PurchaseFormSettings->_default_inventory;
        $_default_purchase = $PurchaseFormSettings->_default_purchase;
        $_default_discount = $PurchaseFormSettings->_default_discount;
        $_default_vat_account = $PurchaseFormSettings->_default_vat_account;

        $_ref_master_id=$purchase_id;
        $_ref_detail_id=$purchase_id;
        $_short_narration='N/A';
        $_narration = $request->_note;
        $_reference= $request->_referance;
        $_transaction= 'Purchase';
        $_date = change_date_format($request->_date);
        $_table_name = $request->_form_name;
        $_branch_id = $request->_branch_id;
        $_cost_center =  1;
        $_name =$users->name;
        if($request->_sub_total > 0){
            //Default Purchase
        $this->account_data_save($_ref_master_id,$_ref_detail_id,$_short_narration,$_narration,$_reference,$_transaction,$_date,$_table_name,$_account_ledger=$_default_purchase,$_dr_amount=$request->_sub_total,$_cr_amount=0,$_branch_id,$_cost_center,$_name);
        //Default Supplier
        $this->account_data_save($_ref_master_id,$_ref_detail_id,$_short_narration,$_narration,$_reference,$_transaction,$_date,$_table_name,$_account_ledger=$request->_main_ledger_id,$_dr_amount=0,$_cr_amount=$request->_sub_total,$_branch_id,$_cost_center,$_name);
        }

        if($request->_total_discount > 0){
            //Default Supplier
        $this->account_data_save($_ref_master_id,$_ref_detail_id,$_short_narration,$_narration,$_reference,$_transaction,$_date,$_table_name,$_account_ledger=$request->_main_ledger_id,$_dr_amount=$request->_total_discount,$_cr_amount=0,$_branch_id,$_cost_center,$_name);
             //Default Discount
        $this->account_data_save($_ref_master_id,$_ref_detail_id,$_short_narration,$_narration,$_reference,$_transaction,$_date,$_table_name,$_account_ledger=$_default_discount,$_dr_amount=$request->_total_discount,$_cr_amount=0,$_branch_id,$_cost_center,$_name);
        
        }
        if($request->_total_vat > 0){
            //Default Vat Account
        $this->account_data_save($_ref_master_id,$_ref_detail_id,$_short_narration,$_narration,$_reference,$_transaction,$_date,$_table_name,$_account_ledger=$_default_vat_account,$_dr_amount=$request->_total_vat,$_cr_amount=0,$_branch_id,$_cost_center,$_name);
        //Default Supplier
        $this->account_data_save($_ref_master_id,$_ref_detail_id,$_short_narration,$_narration,$_reference,$_transaction,$_date,$_table_name,$_account_ledger=$request->_main_ledger_id,$_dr_amount=0,$_cr_amount=$request->_total_vat,$_branch_id,$_cost_center,$_name);
        
        }

        // ############################
        // Purchase Account         Dr 
        //      Account Payable     Cr
        //
        //  Inventory Account       Dr
        //     Purchase Account     Cr
        //
        //  Account Payable         Dr
        //      Purchase Discount   Cr
         //
        //    Vat Account          Dr
        //      Account Payable   Cr
        //##################################

        $_ledger_id = $request->_ledger_id;
        $_short_narr = $request->_short_narr;
        $_dr_amount = $request->_dr_amount;
        $_cr_amount = $request->_cr_amount;
        $_branch_id_detail = $request->_branch_id_detail;
        $_cost_center = $request->_cost_center;
        if(sizeof($_ledger_id) > 0){
                for ($i = 0; $i <sizeof($_ledger_id) ; $i++) {
                    if($_ledger_id[$i] !=""){
                        $_account_type_id =  ledger_to_group_type($_ledger_id[$i])->_account_head_id;
                        $_account_group_id =  ledger_to_group_type($_ledger_id[$i])->_account_group_id;

                        $_total_dr_amount += $_dr_amount[$i] ?? 0;
                        $_total_cr_amount += $_cr_amount[$i] ?? 0;

                        $PurchaseAccount = new PurchaseAccount();
                        $PurchaseAccount->_no = $purchase_id;
                        $PurchaseAccount->_account_type_id = $_account_type_id;
                        $PurchaseAccount->_account_group_id = $_account_group_id;
                        $PurchaseAccount->_ledger_id = $_ledger_id[$i];
                        $PurchaseAccount->_cost_center = $_cost_center[$i] ?? 0;
                        $PurchaseAccount->_branch_id = $_branch_id_detail[$i] ?? 0;
                        $PurchaseAccount->_short_narr = $_short_narr[$i] ?? 'N/A';
                        $PurchaseAccount->_dr_amount = $_dr_amount[$i] ?? 0;
                        $PurchaseAccount->_cr_amount = $_cr_amount[$i] ?? 0;
                        $PurchaseAccount->_status = 1;
                        $PurchaseAccount->_created_by = $users->id."-".$users->name;
                        $PurchaseAccount->save();

                        $purchase_detail_id = $PurchaseAccount->id;

                        //Reporting Account Table Data Insert
                        $_ref_master_id=$purchase_id;
                        $_ref_detail_id=$purchase_detail_id;
                        $_short_narration=$_short_narr[$i] ?? 'N/A';
                        $_narration = $request->_note;
                        $_reference= $request->_referance;
                        $_transaction= 'Purchase';
                        $_date = change_date_format($request->_date);
                        $_table_name ='purchase_accounts';
                        $_account_ledger = $_ledger_id[$i];
                        $_dr_amount = $_dr_amount[$i] ?? 0;
                        $_cr_amount = $_cr_amount[$i] ?? 0;
                        $_branch_id = $_branch_id_detail[$i] ?? 0;
                        $_cost_center = $_cost_center[$i] ?? 0;
                        $_name =$users->name;
                        $this->account_data_save($_ref_master_id,$_ref_detail_id,$_short_narration,$_narration,$_reference,$_transaction,$_date,$_table_name,$_account_ledger,$_dr_amount,$_cr_amount,$_branch_id,$_cost_center,$_name);
                          
                    }
                }
            }


    }


    public function account_data_save($_ref_master_id,$_ref_detail_id,$_short_narration,$_narration,$_reference,$_transaction,$_date,$_table_name,$_account_ledger,$_dr_amount,$_cr_amount,$_branch_id,$_cost_center,$_name){
        $_account_head =  ledger_to_group_type($_account_ledger)->_account_head_id;
        $_account_group =  ledger_to_group_type($_account_ledger)->_account_group_id;
            $Accounts = new Accounts();
            $Accounts->_ref_master_id = $_ref_master_id;
            $Accounts->_ref_detail_id = $_ref_detail_id;
            $Accounts->_short_narration = $_short_narration;
            $Accounts->_narration = $_narration;
            $Accounts->_reference = $_reference;
            $Accounts->_transaction = $_transaction;
            $Accounts->_date = $_date;
            $Accounts->_table_name = $_table_name;
            $Accounts->_account_head = $_account_head;
            $Accounts->_account_group = $_account_group;
            $Accounts->_account_ledger = $_account_ledger;
            $Accounts->_dr_amount = $_dr_amount;
            $Accounts->_cr_amount = $_cr_amount;
            $Accounts->_branch_id = $_branch_id;
            $Accounts->_cost_center = $_cost_center;
            $Accounts->_name =$_name;
            $Accounts->save(); 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Purchase  $purchase
     * @return \Illuminate\Http\Response
     */
    public function show(Purchase $purchase)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Purchase  $purchase
     * @return \Illuminate\Http\Response
     */
    public function edit(Purchase $purchase)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Purchase  $purchase
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Purchase $purchase)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Purchase  $purchase
     * @return \Illuminate\Http\Response
     */
    public function destroy(Purchase $purchase)
    {
        //
    }
}
