<?php

namespace App\Http\Controllers;

use App\Models\PurchaseReturn;
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
use App\Models\PurchaseReturnFormSetting;
use App\Models\PurchaseDetail;
use App\Models\PurchaseReturnAccount;
use App\Models\PurchaseReturnDetail;
use App\Models\ProductPriceList;
use App\Models\ItemInventory;
use App\Models\Inventory;
use App\Models\ItemCategory;
use App\Models\Units;
use App\Models\SalesDetail;
use Auth;
use DB;
use Illuminate\Http\Request;
use Session;

class PurchaseReturnController extends Controller
{

      function __construct()
    {
         $this->middleware('permission:purchase-return-list|purchase-return-create|purchase-return-edit|purchase-return-delete|purchase-return-print', ['only' => ['index','store']]);
         $this->middleware('permission:purchase-return-print', ['only' => ['purchase-returnPrint']]);
         $this->middleware('permission:purchase-return-create', ['only' => ['create','store']]);
         $this->middleware('permission:purchase-return-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:purchase-return-delete', ['only' => ['destroy']]);
         $this->page_name = "Purchase Return";
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function index(Request $request)
    {
        //return $request->all();
        $auth_user = Auth::user();
       if($request->has('limit')){
            $limit = $request->limit ??  default_pagination();
            session()->put('_pur_limit', $request->limit);
        }else{
             $limit= \Session::get('_pur_limit') ??  default_pagination();
            
        }
        
        $_asc_desc = $request->_asc_desc ?? 'DESC';
        $asc_cloumn =  $request->asc_cloumn ?? 'id';

        $datas = PurchaseReturn::with(['_master_branch','_master_details','purchase_account','_ledger']);
        $datas = $datas->whereIn('_branch_id',explode(',',\Auth::user()->branch_ids));
        if($request->has('_branch_id') && $request->_branch_id !=""){
            $datas = $datas->where('_user_id',$request->_branch_id);  
        }else{
           if($auth_user->user_type !='admin'){
                $datas = $datas->where('_user_id',$auth_user->id);   
            } 
        }
        

        if($request->has('_user_date') && $request->_user_date=="yes" && $request->_datex !="" && $request->_datex !=""){
            $_datex =  change_date_format($request->_datex);
            $_datey=  change_date_format($request->_datey);

             $datas = $datas->whereDate('_date','>=', $_datex);
            $datas = $datas->whereDate('_date','<=', $_datey);
        }

        if($request->has('id') && $request->id !=""){
            $ids =  array_map('intval', explode(',', $request->id ));
            $datas = $datas->whereIn('id', $ids); 
        }
        
        if($request->has('_order_ref_id') && $request->_order_ref_id !=''){
            $datas = $datas->where('_order_ref_id',$request->_order_ref_id);
        }

        if($request->has('_referance') && $request->_referance !=''){
            $datas = $datas->where('_referance','like',"%trim($request->_referance)%");
        }
        if($request->has('_note') && $request->_note !=''){
            $datas = $datas->where('_note','like',"%trim($request->_note)%");
        }
        if($request->has('_user_name') && $request->_user_name !=''){
            $datas = $datas->where('_user_name','like',"%trim($request->_user_name)%");
        }
        
        if($request->has('_sub_total') && $request->_sub_total !=''){
            $datas = $datas->where('_sub_total','=',trim($request->_sub_total));
        }
        if($request->has('_total_discount') && $request->_total_discount !=''){
            $datas = $datas->where('_total_discount','=',trim($request->_total_discount));
        }
        if($request->has('_total_vat') && $request->_total_vat !=''){
            $datas = $datas->where('_total_vat','=',trim($request->_total_vat));
        }
        if($request->has('_total') && $request->_total !=''){
            $datas = $datas->where('_total','=',trim($request->_total));
        }
        if($request->has('_ledger_id') && $request->_ledger_id !='' && $request->has('_search_main_ledger_id') && $request->_search_main_ledger_id ){
            $datas = $datas->where('_ledger_id','=',trim($request->_ledger_id));
        }
        
        $datas = $datas->where('_status',1)->orderBy($asc_cloumn,$_asc_desc)
                        ->paginate($limit);

         $page_name = $this->page_name;
         $account_types = AccountHead::select('id','_name')->orderBy('_name','asc')->get();
         $account_groups = AccountGroup::select('id','_name')->orderBy('_name','asc')->get();
          $current_date = date('Y-m-d');
          $current_time = date('H:i:s');
          $users = Auth::user();
           $form_settings = PurchaseReturnFormSetting::first();
           $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
         $store_houses = StoreHouse::whereIn('_branch_id',explode(',',$users->cost_center_ids))->get();
        //return $datas;
         if($request->has('print')){
            if($request->print =="single"){
                return view('backend.purchase-return.master_print',compact('datas','page_name','account_types','request','account_groups','current_date','current_time','limit','form_settings','permited_branch','permited_costcenters','store_houses'));
            }

            if($request->print =="detail"){
                return view('backend.purchase-return.details_print',compact('datas','page_name','account_types','request','account_groups','current_date','current_time','limit','form_settings','permited_branch','permited_costcenters','store_houses'));
            }
         }

        return view('backend.purchase-return.index',compact('datas','page_name','account_types','request','account_groups','current_date','limit','form_settings','permited_branch','permited_costcenters','store_houses'));
    }

     public function reset(){
        Session::flash('_pur_limit');
       return  \Redirect::to('purchase-return?limit='.default_pagination());
    }

    public function purchaseOrderSearch(Request $request){
        $limit = $request->limit ?? default_pagination();
        $_asc_desc = $request->_asc_desc ?? 'ASC';
        $asc_cloumn =  $request->asc_cloumn ?? '_date';
        $text_val = $request->_text_val;
        $datas = Purchase::with(['_ledger'])->where('_status',1);
         if($request->has('_text_val') && $request->_text_val !=''){
            $datas = $datas->where('_date','like',"%$request->_text_val%")
            ->orWhere('id','like',"%$request->_text_val%");
        }
        $datas = $datas->orderBy($asc_cloumn,$_asc_desc)->paginate($limit);
        return json_encode( $datas);
    }

    public function purchaseOrderDetails(Request $request){
        $this->validate($request, [
            '_purchase_main_id' => 'required',
        ]);
        $_purchase_main_id = $request->_purchase_main_id;

       $datas = ProductPriceList::with(['_detail_branch','_detail_cost_center','_store'])
                                ->where('_master_id',$_purchase_main_id)
                                ->where('_qty','>',0)
                                ->where('_status',1)
                                ->get();

        
        return json_encode( $datas);
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
        $account_groups = [];
        $branchs = Branch::orderBy('_name','asc')->get();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        $voucher_types = VoucherType::select('id','_name','_code')->orderBy('_code','asc')->get();
        $store_houses = StoreHouse::whereIn('_branch_id',explode(',',$users->cost_center_ids))->get();
        $form_settings = PurchaseReturnFormSetting::first();
        $inv_accounts = AccountLedger::where('_account_head_id',2)->get();
        $p_accounts = AccountLedger::where('_account_head_id',10)->get();
        $dis_accounts = AccountLedger::where('_account_head_id',11)->get();
        $vat_accounts = AccountLedger::where('_account_group_id',47)->get();
        $categories = ItemCategory::orderBy('_name','asc')->get();
        $units = Units::orderBy('_name','asc')->get();

       return view('backend.purchase-return.create',compact('account_types','page_name','account_groups','branchs','permited_branch','permited_costcenters','voucher_types','store_houses','form_settings','inv_accounts','p_accounts','dis_accounts','vat_accounts','categories','units'));
    }


    public function purchaseSettings(Request $request){
        $data = PurchaseReturnFormSetting::first();
        if(empty($data)){
            $data = new PurchaseReturnFormSetting();
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

        return redirect('purchase-return/create');
                       

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         
     // return $request->all();
        $this->validate($request, [
            '_date' => 'required',
            '_branch_id' => 'required',
            '_order_ref_id' => 'required',
            '_main_ledger_id' => 'required',
            '_form_name' => 'required'
        ]);
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
        $_purchase_detal_refs = $request->_purchase_detal_ref;
        $_price_list_ids = $request->_price_list_id;
        $over_qty =array();
        if(sizeof($_price_list_ids) > 0){
            for ($i = 0; $i <sizeof($_item_ids) ; $i++) {
                $checkqty = ProductPriceList::where('_qty','>=',$_qtys[$i])
                                    ->where('id',$_price_list_ids[$i])->first();
                if(empty($checkqty)){
                    array_push($over_qty, 1);
                }
            }
        }
        if(sizeof($over_qty) > 0){
            return redirect()->back()->with('danger','You can not return more then available qty !');
        }


        DB::beginTransaction();
       try {
       

    //###########################
    // Purchase Master information Save Start
    //###########################
       $_print_value = $request->_print ?? 0;
         $users = Auth::user();
        $PurchaseReturn = new PurchaseReturn();
        $PurchaseReturn->_date = change_date_format($request->_date);
        $PurchaseReturn->_time = date('H:i:s');
        $PurchaseReturn->_order_ref_id = $request->_order_ref_id;
        $PurchaseReturn->_referance = $request->_referance;
        $PurchaseReturn->_ledger_id = $request->_main_ledger_id;
        $PurchaseReturn->_user_id = $users->id;
        $PurchaseReturn->_created_by = $users->id."-".$users->name;
        $PurchaseReturn->_user_id = $users->id;
        $PurchaseReturn->_user_name = $users->name;
        $PurchaseReturn->_note = $request->_note;
        $PurchaseReturn->_sub_total = $request->_sub_total;
        $PurchaseReturn->_discount_input = $request->_discount_input;
        $PurchaseReturn->_total_discount = $request->_total_discount;
        $PurchaseReturn->_total_vat = $request->_total_vat;
        $PurchaseReturn->_total = $request->_total;
        $PurchaseReturn->_branch_id = $request->_branch_id;
        $PurchaseReturn->_status = 1;
        $PurchaseReturn->save();
        $purchase_id = $PurchaseReturn->id;

        //###########################
        // Purchase Master information Save End
        //###########################

        //###########################
        // Purchase Details information Save Start
        //###########################
        
        if(sizeof($_item_ids) > 0){
            for ($i = 0; $i <sizeof($_item_ids) ; $i++) {
                $PurchaseReturnDetail = new PurchaseReturnDetail();
                $PurchaseReturnDetail->_item_id = $_item_ids[$i];
                $PurchaseReturnDetail->_qty = $_qtys[$i];
                $PurchaseReturnDetail->_barcode = $_barcodes[$i] ?? '';
                $PurchaseReturnDetail->_rate = $_rates[$i];
                $PurchaseReturnDetail->_sales_rate = $_sales_rates[$i];
                $PurchaseReturnDetail->_discount = $_discounts[$i] ?? 0;
                $PurchaseReturnDetail->_discount_amount = $_discount_amounts[$i] ?? 0;
                $PurchaseReturnDetail->_vat = $_vats[$i] ?? 0;
                $PurchaseReturnDetail->_vat_amount = $_vat_amounts[$i] ?? 0;
                $PurchaseReturnDetail->_value = $_values[$i] ?? 0;
                $PurchaseReturnDetail->_store_id = $_store_ids[$i] ?? 1;
                $PurchaseReturnDetail->_cost_center_id = $_main_cost_center[$i] ?? 1;
                $PurchaseReturnDetail->_store_salves_id = $_store_salves_ids[$i] ?? '';
                $PurchaseReturnDetail->_branch_id = $_main_branch_id_detail[$i] ?? 1;
                $PurchaseReturnDetail->_no = $purchase_id;
                $PurchaseReturnDetail->_purchase_ref_id = $request->_order_ref_id;
                $PurchaseReturnDetail->_purchase_detal_ref = $_purchase_detal_refs[$i];
                $PurchaseReturnDetail->_status = 1;
                $PurchaseReturnDetail->_created_by = $users->id."-".$users->name;
                $PurchaseReturnDetail->save();
                $_purchase_detail_id = $PurchaseReturnDetail->id;

                $item_info = Inventory::where('id',$_item_ids[$i])->first();

                
                $ProductPriceList = ProductPriceList::find($_price_list_ids[$i]);
                $_p_qty = $ProductPriceList->_qty;
               
                $_status = (($_p_qty - $_qtys[$i]) > 0) ? 1 : 0;
               
                $ProductPriceList->_qty = ($_p_qty - $_qtys[$i]);
                $ProductPriceList->_status = $_status;
                $ProductPriceList->save();


                $ItemInventory = new ItemInventory();
                $ItemInventory->_item_id =  $_item_ids[$i];
                $ItemInventory->_item_name =  $item_info->_item ?? '';
                $ItemInventory->_unit_id =  $item_info->_unit_id ?? '';
                $ItemInventory->_category_id = _item_category($_item_ids[$i]);
                $ItemInventory->_date = change_date_format($request->_date);
                $ItemInventory->_time = date('H:i:s');
                $ItemInventory->_transection = "Purchase Return";
                $ItemInventory->_transection_ref = $purchase_id;
                $ItemInventory->_transection_detail_ref_id = $_purchase_detail_id;
                $ItemInventory->_qty = -($_qtys[$i]);
                $ItemInventory->_rate = $_sales_rates[$i];
                $ItemInventory->_cost_rate = $_rates[$i];
                $ItemInventory->_cost_value = ($_qtys[$i]*$_rates[$i]);
                $ItemInventory->_value = -($_values[$i] ?? 0);
                $ItemInventory->_branch_id = $_main_branch_id_detail[$i] ?? 1;
                $ItemInventory->_store_id = $_store_ids[$i] ?? 1;
                $ItemInventory->_cost_center_id = $_main_cost_center[$i] ?? 1;
                $ItemInventory->_store_salves_id = $_store_salves_ids[$i] ?? '';
                $ItemInventory->_status = 1;
                $ItemInventory->_created_by = $users->id."-".$users->name;
                $ItemInventory->save(); 

                inventory_stock_update($_item_ids[$i]);
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

         $PurchaseReturnFormSetting = PurchaseReturnFormSetting::first();
        $_default_inventory = $PurchaseReturnFormSetting->_default_inventory;
        $_default_purchase = $PurchaseReturnFormSetting->_default_purchase;
        $_default_discount = $PurchaseReturnFormSetting->_default_discount;
        $_default_vat_account = $PurchaseReturnFormSetting->_default_vat_account;

        $_ref_master_id=$purchase_id;
        $_ref_detail_id=$purchase_id;
        $_short_narration='N/A';
        $_narration = $request->_note;
        $_reference= $request->_referance;
        $_transaction= 'Purchase Return';
        $_date = change_date_format($request->_date);
        $_table_name = $request->_form_name;
        $_branch_id = $request->_branch_id;
        $_cost_center =  1;
        $_name =$users->name;
        if($request->_sub_total > 0){
            //Default Supplier
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_purchase),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,$request->_sub_total,0,$_branch_id,$_cost_center,$_name,1);
            //Default Purchase Return
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_purchase,0,$request->_sub_total,$_branch_id,$_cost_center,$_name,2);
        

            //Default Purchase Return
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_inventory),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_purchase,$request->_sub_total,0,$_branch_id,$_cost_center,$_name,3);
        //Default Inventory
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_purchase),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_inventory,0,$request->_sub_total,$_branch_id,$_cost_center,$_name,4);
        }

        if($request->_total_discount > 0){
            //Default Supplier
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_discount),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,$request->_total_discount,$_cr_amount=0,$_branch_id,$_cost_center,$_name,5);
             //Default Discount
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_discount,0,$request->_total_discount,$_branch_id,$_cost_center,$_name,6);
        
        }
        if($request->_total_vat > 0){
            //Default Supplier
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_vat_account),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,$request->_total_vat,$_cr_amount=0,$_branch_id,$_cost_center,$_name,7);
        //Default Vat Account
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_vat_account,$_dr_amount=0,$request->_total_vat,$_branch_id,$_cost_center,$_name,8);
        
        }

        // ############################
        //  Purchase Account         Dr 
        //      Account Payable     Cr
        //
        //  Inventory Account       Dr
        //     Purchase Account     Cr
        //
        //  Account Payable         Dr
        //    Purchase Discount   Cr
        //
        //  Vat Account          Dr
        //     Account Payable   Cr
        //##################################

        $_ledger_id = (array) $request->_ledger_id;
        $_short_narr = (array) $request->_short_narr;
        $_dr_amount = (array) $request->_dr_amount;
         $_cr_amount = (array) $request->_cr_amount;
        $_branch_id_detail = (array) $request->_branch_id_detail;
        $_cost_center = (array) $request->_cost_center;
       
        if(sizeof($_ledger_id) > 0){
                foreach($_ledger_id as $i=>$ledger) {
                    if($ledger !=""){
                       
                     // echo  $_cr_amount[$i];
                        $_account_type_id =  ledger_to_group_type($ledger)->_account_head_id;
                        $_account_group_id =  ledger_to_group_type($ledger)->_account_group_id;

                        $_total_dr_amount += $_dr_amount[$i] ?? 0;
                        $_total_cr_amount += $_cr_amount[$i] ?? 0;

                        $PurchaseReturnAccount = new PurchaseReturnAccount();
                        $PurchaseReturnAccount->_no = $purchase_id;
                        $PurchaseReturnAccount->_account_type_id = $_account_type_id;
                        $PurchaseReturnAccount->_account_group_id = $_account_group_id;
                        $PurchaseReturnAccount->_ledger_id = $ledger;
                        $PurchaseReturnAccount->_cost_center = $_cost_center[$i] ?? 0;
                        $PurchaseReturnAccount->_branch_id = $_branch_id_detail[$i] ?? 0;
                        $PurchaseReturnAccount->_short_narr = $_short_narr[$i] ?? 'N/A';
                        $PurchaseReturnAccount->_dr_amount = $_dr_amount[$i];
                        $PurchaseReturnAccount->_cr_amount = $_cr_amount[$i];
                        $PurchaseReturnAccount->_status = 1;
                        $PurchaseReturnAccount->_created_by = $users->id."-".$users->name;
                        $PurchaseReturnAccount->save();

                        $purchase_detail_id = $PurchaseReturnAccount->id;

                        //Reporting Account Table Data Insert
                        $_ref_master_id=$purchase_id;
                        $_ref_detail_id=$purchase_detail_id;
                        $_short_narration=$_short_narr[$i] ?? 'N/A';
                        $_narration = $request->_note;
                        $_reference= $request->_referance;
                        $_transaction= 'Purchase Return';
                        $_date = change_date_format($request->_date);
                        $_table_name ='purchase_return_accounts';
                        $_account_ledger = $_ledger_id[$i];
                        $_dr_amount_a = $_dr_amount[$i] ?? 0;
                        $_cr_amount_a = $_cr_amount[$i] ?? 0;
                        $_branch_id_a = $_branch_id_detail[$i] ?? 0;
                        $_cost_center_a = $_cost_center[$i] ?? 0;
                        $_name =$users->name;
                        account_data_save($_ref_master_id,$_ref_detail_id,$_short_narration,$_narration,$_reference,$_transaction,$_date,$_table_name,$_account_ledger,$_dr_amount_a,$_cr_amount_a,$_branch_id_a,$_cost_center_a,$_name,(9+$i));
                          
                    }
                }
            }
     DB::commit();
            return redirect()->back()->with('success','Information save successfully')->with('_master_id',$purchase_id)->with('_print_value',$_print_value);
       } catch (\Exception $e) {
           DB::rollback();
           
           return redirect()->back()->with('danger',"Information Not Save. There Is an ERROR ");
        }
      
    }


  


    public function purchasePrint($id){
        $users = Auth::user();
        $page_name = $this->page_name;
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        $voucher_types = VoucherType::select('id','_name','_code')->orderBy('_code','asc')->get();
         $data =  PurchaseReturn::with(['_master_branch','_master_details','purchase_account','_ledger'])->find($id);
        $form_settings = PurchaseReturnFormSetting::first();
           $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
         $store_houses = StoreHouse::whereIn('_branch_id',explode(',',$users->cost_center_ids))->get();
       return view('backend.purchase-return.print',compact('page_name','permited_branch','permited_costcenters','data','form_settings','permited_branch','permited_costcenters','store_houses'));
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
     

     public function edit($id)
    {
        $users = Auth::user();
        $page_name = $this->page_name;
        $account_types = AccountHead::select('id','_name')->orderBy('_name','asc')->get();
        $account_groups = [];
        $branchs = Branch::orderBy('_name','asc')->get();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        $voucher_types = VoucherType::select('id','_name','_code')->orderBy('_code','asc')->get();
        $store_houses = StoreHouse::whereIn('_branch_id',explode(',',$users->cost_center_ids))->get();
        $form_settings = PurchaseReturnFormSetting::first();
        $inv_accounts = AccountLedger::where('_account_head_id',2)->get();
        $p_accounts = AccountLedger::where('_account_head_id',10)->get();
        $dis_accounts = AccountLedger::where('_account_head_id',11)->get();
        $vat_accounts = AccountLedger::where('_account_group_id',47)->get();
        $categories = ItemCategory::orderBy('_name','asc')->get();
        $units = Units::orderBy('_name','asc')->get();
         $data =  PurchaseReturn::with(['_master_branch','_master_details','purchase_account','_ledger'])->find($id);
          $sales_number = SalesDetail::where('_purchase_invoice_no',$id)->count();
       return view('backend.purchase-return.edit',compact('account_types','page_name','account_groups','branchs','permited_branch','permited_costcenters','voucher_types','store_houses','form_settings','inv_accounts','p_accounts','dis_accounts','vat_accounts','categories','units','data','sales_number'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Purchase  $purchase
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
         
       // return $request->all();

        $this->validate($request, [
            '_order_number' => 'required',
            '_form_name' => 'required',
        ]);

        $purchase_id = $request->_order_number;
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
        $purchase_detail_ids = $request->purchase_detail_id;
         $_price_list_ids = $request->_price_list_id;
         $_purchase_detal_refs = $request->_purchase_detal_ref;
        $checkqty = array();
        $over_qtys = array();
    //Prevoius Return information
     $previous_infos = PurchaseReturnDetail::where('_no',$purchase_id)->get();
    foreach ($previous_infos as $value) {
        $product_prices = ProductPriceList::where('_purchase_detail_id',$value->_purchase_detal_ref)->first();
         $new_qty = ($value->_qty+$product_prices->_qty);
         array_push($checkqty, ['id'=>$product_prices->_purchase_detail_id,'_qty'=>$new_qty]);
    }

    foreach ($_purchase_detal_refs as $item_key=> $_item) {
        foreach ($checkqty as $check_item) {
            if($_item==$check_item["id"] && $_qtys[$item_key] > $check_item["_qty"] ){
                array_push($over_qtys, $_item);
            }
        }
    }

    if(sizeof($over_qtys) > 0){
        return redirect()->back()->with('danger','You Can not Return More then available Qty !');
    }else{
         foreach ($previous_infos as $value) {
            $product_prices = ProductPriceList::where('_purchase_detail_id',$value->_purchase_detal_ref)->first();
             $new_qty = ($value->_qty+$product_prices->_qty);
             $product_prices->_qty =$new_qty;
             $product_prices->save();

        }
    }
   // return $over_qtys;

       //######################
       // Previous information need to make zero for every thing.
       //#####################


     
     
   
    PurchaseReturnDetail::where('_no', $purchase_id)
            ->update(['_status'=>0]);
    ItemInventory::where('_transection',"Purchase")
        ->where('_transection_ref',$purchase_id)
        ->update(['_status'=>0]);
    PurchaseReturnAccount::where('_no',$purchase_id)                               
            ->update(['_status'=>0]);
    Accounts::where('_ref_master_id',$purchase_id)
                    ->where('_table_name',$request->_form_name)
                     ->update(['_status'=>0]); 
    Accounts::where('_ref_master_id',$purchase_id)
                    ->where('_table_name','purchase_return_accounts')
                     ->update(['_status'=>0]);   

      //  return 6;           

    //###########################
    // Purchase Return Master information Save Start
    //###########################
       $_print_value = $request->_print ?? 0;
       $users = Auth::user();
        $PurchaseReturn = PurchaseReturn::where('id',$purchase_id)->first();
        if(empty($PurchaseReturn)){
            return redirect()->back()->with('danger','Something Went Wrong !');
        }
        $PurchaseReturn->_date = change_date_format($request->_date);
        $PurchaseReturn->_time = date('H:i:s');
        $PurchaseReturn->_order_ref_id = $request->_order_ref_id;
        $PurchaseReturn->_referance = $request->_referance;
        $PurchaseReturn->_ledger_id = $request->_main_ledger_id;
        $PurchaseReturn->_user_id = $request->_main_ledger_id;
        $PurchaseReturn->_created_by = $users->id."-".$users->name;
        $PurchaseReturn->_updated_by = $users->id."-".$users->name;
        $PurchaseReturn->_user_id = $users->id;
        $PurchaseReturn->_user_name = $users->name;
        $PurchaseReturn->_note = $request->_note;
        $PurchaseReturn->_sub_total = $request->_sub_total;
        $PurchaseReturn->_discount_input = $request->_discount_input;
        $PurchaseReturn->_total_discount = $request->_total_discount;
        $PurchaseReturn->_total_vat = $request->_total_vat;
        $PurchaseReturn->_total = $request->_total;
        $PurchaseReturn->_branch_id = $request->_branch_id;
        $PurchaseReturn->_status = 1;
        $PurchaseReturn->save();
        $purchase_id = $PurchaseReturn->id;

        //###########################
        // PurchaseReturn Master information Save End
        //###########################

        //###########################
        // PurchaseReturn Details information Save Start
        //###########################
        
        if(sizeof($_item_ids) > 0){
            for ($i = 0; $i <sizeof($_item_ids) ; $i++) {
                if($purchase_detail_ids[$i]==0){
                    $PurchaseReturnDetail = new PurchaseReturnDetail();
                }else{
                    $PurchaseReturnDetail = PurchaseReturnDetail::find($purchase_detail_ids[$i]);
                }
                
                $PurchaseReturnDetail->_item_id = $_item_ids[$i];
                $PurchaseReturnDetail->_qty = $_qtys[$i];
                $PurchaseReturnDetail->_barcode = $_barcodes[$i] ?? '';
                $PurchaseReturnDetail->_rate = $_rates[$i];
                $PurchaseReturnDetail->_sales_rate = $_sales_rates[$i];
                $PurchaseReturnDetail->_discount = $_discounts[$i] ?? 0;
                $PurchaseReturnDetail->_discount_amount = $_discount_amounts[$i] ?? 0;
                $PurchaseReturnDetail->_vat = $_vats[$i] ?? 0;
                $PurchaseReturnDetail->_vat_amount = $_vat_amounts[$i] ?? 0;
                $PurchaseReturnDetail->_value = $_values[$i] ?? 0;
                $PurchaseReturnDetail->_store_id = $_store_ids[$i] ?? 1;
                $PurchaseReturnDetail->_cost_center_id = $_main_cost_center[$i] ?? 1;
                $PurchaseReturnDetail->_store_salves_id = $_store_salves_ids[$i] ?? '';
                $PurchaseReturnDetail->_branch_id = $_main_branch_id_detail[$i] ?? 1;
                $PurchaseReturnDetail->_no = $purchase_id;
                $PurchaseReturnDetail->_purchase_ref_id = $request->_order_ref_id;
                $PurchaseReturnDetail->_purchase_detal_ref = $_purchase_detal_refs[$i];
                $PurchaseReturnDetail->_status = 1;
                $PurchaseReturnDetail->_created_by = $users->id."-".$users->name;
                $PurchaseReturnDetail->save();
                $_purchase_detail_id = $PurchaseReturnDetail->id;

                $item_info = Inventory::where('id',$_item_ids[$i])->first();

                
                $ProductPriceList = ProductPriceList::where('_purchase_detail_id',$_purchase_detal_refs[$i])
                                                    ->where('_master_id',$request->_order_ref_id)->first();
                $_p_qty = $ProductPriceList->_qty;
               
                $_status = (($_p_qty-$_qtys[$i]) > 0) ? 1 : 0;
               
                $ProductPriceList->_qty = ($_p_qty - $_qtys[$i]);
                $ProductPriceList->_status = $_status;
                $ProductPriceList->save();


                

                $ItemInventory = ItemInventory::where('_transection',"Purchase Return")
                                    ->where('_transection_ref',$purchase_id)
                                    ->where('_transection_detail_ref_id',$_purchase_detail_id)
                                    ->first();
                if(empty($ItemInventory)){
                    $ItemInventory = new ItemInventory();
                    $ItemInventory->_created_by = $users->id."-".$users->name;
                }

                $ItemInventory->_item_id =  $_item_ids[$i];
                $ItemInventory->_item_name =  $item_info->_item ?? '';
                 $ItemInventory->_unit_id =  $item_info->_unit_id ?? '';
                $ItemInventory->_category_id = _item_category($_item_ids[$i]);
                $ItemInventory->_date = change_date_format($request->_date);
                $ItemInventory->_time = date('H:i:s');
                $ItemInventory->_transection = "Purchase Return";
                $ItemInventory->_transection_ref = $purchase_id;
                $ItemInventory->_transection_detail_ref_id = $_purchase_detail_id;
                $ItemInventory->_qty = -($_qtys[$i]);
                $ItemInventory->_rate = $_sales_rates[$i];
                $ItemInventory->_cost_rate = $_rates[$i];
                $ItemInventory->_cost_value = ($_qtys[$i]*$_rates[$i]);
                $ItemInventory->_value = -($_values[$i] ?? 0);
                $ItemInventory->_branch_id = $_main_branch_id_detail[$i] ?? 1;
                $ItemInventory->_store_id = $_store_ids[$i] ?? 1;
                $ItemInventory->_cost_center_id = $_main_cost_center[$i] ?? 1;
                $ItemInventory->_store_salves_id = $_store_salves_ids[$i] ?? '';
                $ItemInventory->_status = 1;
                $ItemInventory->_created_by = $users->id."-".$users->name;
                $ItemInventory->save(); 

                inventory_stock_update($_item_ids[$i]);
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

        $PurchaseReturnFormSetting = PurchaseReturnFormSetting::first();
        $_default_inventory = $PurchaseReturnFormSetting->_default_inventory;
        $_default_purchase = $PurchaseReturnFormSetting->_default_purchase;
        $_default_discount = $PurchaseReturnFormSetting->_default_discount;
        $_default_vat_account = $PurchaseReturnFormSetting->_default_vat_account;

        $_ref_master_id=$purchase_id;
        $_ref_detail_id=$purchase_id;
        $_short_narration='N/A';
        $_narration = $request->_note;
        $_reference= $request->_referance;
        $_transaction= 'Purchase Return';
        $_date = change_date_format($request->_date);
        $_table_name = $request->_form_name;
        $_branch_id = $request->_branch_id;
        $_cost_center =  1;
        $_name =$users->name;
        if($request->_sub_total > 0){
            //Default Supplier
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_purchase),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,$request->_sub_total,0,$_branch_id,$_cost_center,$_name,1);
            //Default Purchase Return
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_purchase,0,$request->_sub_total,$_branch_id,$_cost_center,$_name,2);
        

            //Default Purchase Return
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_inventory),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_purchase,$request->_sub_total,0,$_branch_id,$_cost_center,$_name,3);
        //Default Inventory
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_purchase),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_inventory,0,$request->_sub_total,$_branch_id,$_cost_center,$_name,4);
        }

        if($request->_total_discount > 0){
            //Default Supplier
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_discount),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,$request->_total_discount,$_cr_amount=0,$_branch_id,$_cost_center,$_name,5);
             //Default Discount
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_discount,0,$request->_total_discount,$_branch_id,$_cost_center,$_name,6);
        
        }
        if($request->_total_vat > 0){
            //Default Supplier
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_vat_account),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,$request->_total_vat,$_cr_amount=0,$_branch_id,$_cost_center,$_name,7);
        //Default Vat Account
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_vat_account,$_dr_amount=0,$request->_total_vat,$_branch_id,$_cost_center,$_name,8);
        
        }

        // ############################
        //  Purchase Account         Dr 
        //      Account Payable     Cr
        //
        //  Inventory Account       Dr
        //     Purchase Account     Cr
        //
        //  Account Payable         Dr
        //    Purchase Discount   Cr
        //
        //  Vat Account          Dr
        //     Account Payable   Cr
        //##################################

        $_ledger_id = (array) $request->_ledger_id;
        $_short_narr = (array) $request->_short_narr;
        $_dr_amount = (array) $request->_dr_amount;
         $_cr_amount = (array) $request->_cr_amount;
        $_branch_id_detail = (array) $request->_branch_id_detail;
        $_cost_center = (array) $request->_cost_center;
        $purchase_account_ids = (array) $request->purchase_account_id;
       
        if(sizeof($_ledger_id) > 0){
                foreach($_ledger_id as $i=>$ledger) {
                    if($ledger !=""){
                       
                     // echo  $_cr_amount[$i];
                        $_account_type_id =  ledger_to_group_type($ledger)->_account_head_id;
                        $_account_group_id =  ledger_to_group_type($ledger)->_account_group_id;

                        $_total_dr_amount += $_dr_amount[$i] ?? 0;
                        $_total_cr_amount += $_cr_amount[$i] ?? 0;
                         $PurchaseReturnAccount = PurchaseReturnAccount::where('id',$purchase_account_ids[$i] ?? 0)
                                                                        ->where('_ledger_id',$ledger)
                                                            ->first();
                        if(empty($PurchaseReturnAccount)){
                            $PurchaseReturnAccount = new PurchaseReturnAccount();
                        }
                        
                        $PurchaseReturnAccount->_no = $purchase_id;
                        $PurchaseReturnAccount->_account_type_id = $_account_type_id;
                        $PurchaseReturnAccount->_account_group_id = $_account_group_id;
                        $PurchaseReturnAccount->_ledger_id = $ledger;
                        $PurchaseReturnAccount->_cost_center = $_cost_center[$i] ?? 0;
                        $PurchaseReturnAccount->_branch_id = $_branch_id_detail[$i] ?? 0;
                        $PurchaseReturnAccount->_short_narr = $_short_narr[$i] ?? 'N/A';
                        $PurchaseReturnAccount->_dr_amount = $_dr_amount[$i];
                        $PurchaseReturnAccount->_cr_amount = $_cr_amount[$i];
                        $PurchaseReturnAccount->_status = 1;
                        $PurchaseReturnAccount->_updated_by = $users->id."-".$users->name;
                        $PurchaseReturnAccount->save();

                        $purchase_detail_id = $PurchaseReturnAccount->id;

                        //Reporting Account Table Data Insert
                        $_ref_master_id=$purchase_id;
                        $_ref_detail_id=$purchase_detail_id;
                        $_short_narration=$_short_narr[$i] ?? 'N/A';
                        $_narration = $request->_note;
                        $_reference= $request->_referance;
                        $_transaction= 'Purchase Return';
                        $_date = change_date_format($request->_date);
                        $_table_name ='purchase_return_accounts';
                        $_account_ledger = $_ledger_id[$i];
                        $_dr_amount_a = $_dr_amount[$i] ?? 0;
                        $_cr_amount_a = $_cr_amount[$i] ?? 0;
                        $_branch_id_a = $_branch_id_detail[$i] ?? 0;
                        $_cost_center_a = $_cost_center[$i] ?? 0;
                        $_name =$users->name;
                        account_data_save($_ref_master_id,$_ref_detail_id,$_short_narration,$_narration,$_reference,$_transaction,$_date,$_table_name,$_account_ledger,$_dr_amount_a,$_cr_amount_a,$_branch_id_a,$_cost_center_a,$_name,(9+$i));
                          
                    }
                }
            }

       return redirect()->back()->with('success','Information save successfully')->with('_master_id',$purchase_id)->with('_print_value',$_print_value);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Purchase  $purchase
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return redirect()->back()->with('danger','You Can not delete this Information');

    }
}
