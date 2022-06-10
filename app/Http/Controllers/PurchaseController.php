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

class PurchaseController extends Controller
{

    function __construct()
    {
         $this->middleware('permission:purchase-list|purchase-create|purchase-edit|purchase-delete|purchase-print', ['only' => ['index','store']]);
         $this->middleware('permission:purchase-print', ['only' => ['purchasePrint']]);
         $this->middleware('permission:purchase-create', ['only' => ['create','store']]);
         $this->middleware('permission:purchase-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:purchase-delete', ['only' => ['destroy']]);
         $this->page_name = "Purchase Invoice";
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

        $datas = Purchase::with(['_master_branch','_master_details','purchase_account','_ledger']);
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
            $datas = $datas->where('_order_ref_id','like',"%trim($request->_order_ref_id)%");
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
         if($request->has('_lock') && $request->_lock !=''){
            $datas = $datas->where('_lock','=',$request->_lock);
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
        
        $datas = $datas->orderBy($asc_cloumn,$_asc_desc)
                        ->paginate($limit);

         $page_name = $this->page_name;
         $account_types = AccountHead::select('id','_name')->orderBy('_name','asc')->get();
         $account_groups = AccountGroup::select('id','_name')->orderBy('_name','asc')->get();
          $current_date = date('Y-m-d');
          $current_time = date('H:i:s');
          $users = Auth::user();
           $form_settings = PurchaseFormSettings::first();
           $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
         $store_houses = StoreHouse::whereIn('_branch_id',explode(',',$users->cost_center_ids))->get();
        //return $datas;
         if($request->has('print')){
            if($request->print =="single"){
                return view('backend.purchase.master_print',compact('datas','page_name','account_types','request','account_groups','current_date','current_time','limit','form_settings','permited_branch','permited_costcenters','store_houses'));
            }

            if($request->print =="detail"){
                return view('backend.purchase.details_print',compact('datas','page_name','account_types','request','account_groups','current_date','current_time','limit','form_settings','permited_branch','permited_costcenters','store_houses'));
            }
         }

        return view('backend.purchase.index',compact('datas','page_name','account_types','request','account_groups','current_date','limit','form_settings','permited_branch','permited_costcenters','store_houses'));
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
        $account_groups = [];
        $branchs = Branch::orderBy('_name','asc')->get();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        
        $store_houses = StoreHouse::whereIn('_branch_id',explode(',',$users->cost_center_ids))->get();
        $form_settings = PurchaseFormSettings::first();
        $inv_accounts = AccountLedger::where('_account_head_id',2)->get();
        $p_accounts = AccountLedger::where('_account_head_id',10)->get();
        $dis_accounts = AccountLedger::where('_account_head_id',11)->get();
       
        $categories = ItemCategory::orderBy('_name','asc')->get();
        $units = Units::orderBy('_name','asc')->get();

       return view('backend.purchase.create',compact('account_types','page_name','account_groups','branchs','permited_branch','permited_costcenters','store_houses','form_settings','inv_accounts','p_accounts','dis_accounts','categories','units'));
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
        $data->_show_manufacture_date = $request->_show_manufacture_date;
        $data->_show_expire_date = $request->_show_expire_date;
        $data->_show_p_balance = $request->_show_p_balance;
         $data->_invoice_template = $request->_invoice_template ?? 1;
        $data->save();

        return redirect()->back()->with('success','Information Save successfully');
                       

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
            '_main_ledger_id' => 'required',
            '_form_name' => 'required'
        ]);
    //###########################
    // Purchase Master information Save Start
    //###########################
      DB::beginTransaction();
       try {
        $_p_balance = _l_balance_update($request->_main_ledger_id);
         $__sub_total = (float) $request->_sub_total;
         $__total = (float) $request->_total;
         $__discount_input = (float) $request->_discount_input;
         $__total_discount = (float) $request->_total_discount;

       $_print_value = $request->_print ?? 0;
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
        $Purchase->_sub_total = $__sub_total;
        $Purchase->_discount_input = $__discount_input;
        $Purchase->_total_discount = $__total_discount;
        $Purchase->_total_vat = $request->_total_vat;
        $Purchase->_total =  $__total;
        $Purchase->_branch_id = $request->_branch_id;
        $Purchase->_address = $request->_address;
        $Purchase->_phone = $request->_phone;
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
        $_manufacture_dates = $request->_manufacture_date;
        $_expire_dates = $request->_expire_date;


       


        if(sizeof($_item_ids) > 0){
            for ($i = 0; $i <sizeof($_item_ids) ; $i++) {
                $PurchaseDetail = new PurchaseDetail();
                $PurchaseDetail->_item_id = $_item_ids[$i];
                $PurchaseDetail->_qty = $_qtys[$i];
                $PurchaseDetail->_barcode = $_barcodes[$i];
                $PurchaseDetail->_manufacture_date =$_manufacture_dates[$i] ?? null;
                $PurchaseDetail->_expire_date = $_expire_dates[$i] ?? null;
                $PurchaseDetail->_rate = $_rates[$i];
                $PurchaseDetail->_sales_rate = $_sales_rates[$i];
                $PurchaseDetail->_discount = $_discounts[$i] ?? 0;
                $PurchaseDetail->_discount_amount = $_discount_amounts[$i] ?? 0;
                $PurchaseDetail->_vat = $_vats[$i] ?? 0;
                $PurchaseDetail->_vat_amount = $_vat_amounts[$i] ?? 0;
                $PurchaseDetail->_value = $_values[$i] ?? 0;
                $PurchaseDetail->_store_id = $_store_ids[$i] ?? 1;
                $PurchaseDetail->_cost_center_id = $_main_cost_center[$i] ?? 1;
                $PurchaseDetail->_store_salves_id = $_store_salves_ids[$i] ?? '';
                $PurchaseDetail->_branch_id = $_main_branch_id_detail[$i] ?? 1;
                $PurchaseDetail->_no = $purchase_id;
                $PurchaseDetail->_status = 1;
                $PurchaseDetail->_created_by = $users->id."-".$users->name;
                $PurchaseDetail->save();
                $_purchase_detail_id = $PurchaseDetail->id;

                $item_info = Inventory::where('id',$_item_ids[$i])->first();

                $ProductPriceList = new ProductPriceList();
                $ProductPriceList->_item_id = $_item_ids[$i];

                $ProductPriceList->_item = $item_info->_item ?? '';
                $ProductPriceList->_barcode =$_barcodes[$i] ?? '';
                $ProductPriceList->_manufacture_date =$_manufacture_dates[$i] ?? null;

                $ProductPriceList->_expire_date = $_expire_dates[$i] ?? null;
                $ProductPriceList->_qty = $_qtys[$i];
                $ProductPriceList->_sales_rate = $_sales_rates[$i];
                $ProductPriceList->_pur_rate = $_rates[$i];
                $ProductPriceList->_unit_id = $item_info->_unit_id ?? 1;
                
                $ProductPriceList->_sales_discount = $item_info->_discount ?? 0;
                $ProductPriceList->_p_discount_input = $_discounts[$i] ?? 0;
                $ProductPriceList->_p_discount_amount = $_discount_amounts[$i] ?? 0;
                $ProductPriceList->_p_vat = $_vats[$i] ?? 0;
                $ProductPriceList->_p_vat_amount = $_vat_amounts[$i] ?? 0;
                $ProductPriceList->_sales_vat = $item_info->_vat ?? 0;;
                $ProductPriceList->_value =$_values[$i] ?? 0;
                $ProductPriceList->_purchase_detail_id =$_purchase_detail_id;
                $ProductPriceList->_master_id = $purchase_id;
                $ProductPriceList->_branch_id = $_main_branch_id_detail[$i] ?? 1;
                $ProductPriceList->_cost_center_id = $_main_cost_center[$i] ?? 1;
                $ProductPriceList->_store_salves_id = $_store_salves_ids[$i] ?? '';
                $ProductPriceList->_status =1;
                $ProductPriceList->_created_by = $users->id."-".$users->name;
                $ProductPriceList->save();


                $ItemInventory = new ItemInventory();
                $ItemInventory->_item_id =  $_item_ids[$i];
                $ItemInventory->_item_name =  $item_info->_item ?? '';
                $ItemInventory->_unit_id =  $item_info->_unit_id ?? '';
                $ItemInventory->_category_id = _item_category($_item_ids[$i]);
                $ItemInventory->_date = change_date_format($request->_date);
                $ItemInventory->_time = date('H:i:s');
                $ItemInventory->_transection = "Purchase";
                $ItemInventory->_transection_ref = $purchase_id;
                $ItemInventory->_transection_detail_ref_id = $_purchase_detail_id;
                $ItemInventory->_qty = $_qtys[$i];
                $ItemInventory->_rate = $_sales_rates[$i];
                $ItemInventory->_unit_id = $item_info->_unit_id ?? '';
                $ItemInventory->_cost_rate = $_rates[$i];
                $ItemInventory->_cost_value = ($_qtys[$i]*$_rates[$i]);
                $ItemInventory->_value = $_values[$i] ?? 0;
                $ItemInventory->_branch_id = $_main_branch_id_detail[$i] ?? 1;
                $ItemInventory->_store_id = $_store_ids[$i] ?? 1;
                $ItemInventory->_cost_center_id = $_main_cost_center[$i] ?? 1;
                $ItemInventory->_store_salves_id = $_store_salves_ids[$i] ?? '';
                $ItemInventory->_status = 1;
                $ItemInventory->_created_by = $users->id."-".$users->name;
                $ItemInventory->save(); 
                _inventory_last_price($_item_ids[$i],$_rates[$i],$_sales_rates[$i]);

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
        
        if($__sub_total > 0){

            //Default Purchase
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_purchase,$__sub_total,0,$_branch_id,$_cost_center,$_name,1);
            //Default Supplier
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_purchase),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,0,$__sub_total,$_branch_id,$_cost_center,$_name,2);

            //Default Inventory
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_purchase),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_inventory,$__sub_total,0,$_branch_id,$_cost_center,$_name,3);
        //Default Purchase 
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_inventory),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_purchase,0,$__sub_total,$_branch_id,$_cost_center,$_name,4);
        }

        if($__total_discount > 0){
            //Default Supplier
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_discount),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,$__total_discount,0,$_branch_id,$_cost_center,$_name,5);
             //Default Discount
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_discount,0,$__total_discount,$_branch_id,$_cost_center,$_name,6);
        
        }
         $__total_vat = (float) $request->_total_vat ?? 0;
        if($__total_vat > 0){
            //Default Vat Account
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_vat_account,$request->_total_vat,0,$_branch_id,$_cost_center,$_name,7);
        //Default Supplier
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_vat_account),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,0,$request->_total_vat,$_branch_id,$_cost_center,$_name,8);
        
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

        $_ledger_id =  $request->_ledger_id ?? [];
        $_short_narr =  $request->_short_narr ?? [];
        $_dr_amount =  $request->_dr_amount ?? [];
         $_cr_amount =  $request->_cr_amount ?? [];
        $_branch_id_detail =  $request->_branch_id_detail ?? [];
        $_cost_center =  $request->_cost_center ?? [];
       
        if(sizeof($_ledger_id) > 0){
                foreach($_ledger_id as $i=>$ledger) {
                    if($ledger !=""){
                       
                     // echo  $_cr_amount[$i];
                        $_account_type_id =  ledger_to_group_type($ledger)->_account_head_id;
                        $_account_group_id =  ledger_to_group_type($ledger)->_account_group_id;

                        $_total_dr_amount += $_dr_amount[$i] ?? 0;
                        $_total_cr_amount += $_cr_amount[$i] ?? 0;

                        $PurchaseAccount = new PurchaseAccount();
                        $PurchaseAccount->_no = $purchase_id;
                        $PurchaseAccount->_account_type_id = $_account_type_id;
                        $PurchaseAccount->_account_group_id = $_account_group_id;
                        $PurchaseAccount->_ledger_id = $ledger;
                        $PurchaseAccount->_cost_center = $_cost_center[$i] ?? 0;
                        $PurchaseAccount->_branch_id = $_branch_id_detail[$i] ?? 0;
                        $PurchaseAccount->_short_narr = $_short_narr[$i] ?? 'N/A';
                        $PurchaseAccount->_dr_amount = $_dr_amount[$i];
                        $PurchaseAccount->_cr_amount = $_cr_amount[$i];
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
                        $_dr_amount_a = $_dr_amount[$i] ?? 0;
                        $_cr_amount_a = $_cr_amount[$i] ?? 0;
                        $_branch_id_a = $_branch_id_detail[$i] ?? 0;
                        $_cost_center_a = $_cost_center[$i] ?? 0;
                        $_name =$users->name;
                        account_data_save($_ref_master_id,$_ref_detail_id,$_short_narration,$_narration,$_reference,$_transaction,$_date,$_table_name,$_account_ledger,$_dr_amount_a,$_cr_amount_a,$_branch_id_a,$_cost_center_a,$_name,(9+$i));
                          
                    }
                }

                 //Only Cash and Bank receive in account detail. This entry set automatically by program.
                if($_total_cr_amount > 0 && $users->_ac_type==1){
                         $_account_type_id =  ledger_to_group_type($request->_main_ledger_id)->_account_head_id;
                        $_account_group_id =  ledger_to_group_type($request->_main_ledger_id)->_account_group_id;
                        $PurchaseAccount = new PurchaseAccount();
                        $PurchaseAccount->_no = $purchase_id;
                        $PurchaseAccount->_account_type_id = $_account_type_id;
                        $PurchaseAccount->_account_group_id = $_account_group_id;
                        $PurchaseAccount->_ledger_id = $request->_main_ledger_id;
                        $PurchaseAccount->_cost_center = $users->cost_center_ids;
                        $PurchaseAccount->_branch_id = $users->branch_ids;
                        $PurchaseAccount->_short_narr = 'N/A';
                        $PurchaseAccount->_dr_amount = $_total_cr_amount;
                        $PurchaseAccount->_cr_amount = 0;
                        $PurchaseAccount->_status = 1;
                        $PurchaseAccount->_created_by = $users->id."-".$users->name;
                        $PurchaseAccount->save();

 
                        $_sales_account_id = $PurchaseAccount->id;

                        //Reporting Account Table Data Insert
                        $_ref_master_id=$purchase_id;
                        $_ref_detail_id=$_sales_account_id;
                        $_short_narration='N/A';
                        $_narration = $request->_note;
                        $_reference= $request->_referance;
                        $_transaction= 'Purchase';
                        $_date = change_date_format($request->_date);
                        $_table_name ='purchase_accounts';
                        $_account_ledger = $request->_main_ledger_id;
                        $_dr_amount_a = $_total_cr_amount;
                        $_cr_amount_a =  0;
                        $_branch_id_a = $users->branch_ids;
                        $_cost_center_a = $users->cost_center_ids;
                        $_name =$users->name;
                        account_data_save($_ref_master_id,$_ref_detail_id,$_short_narration,$_narration,$_reference,$_transaction,$_date,$_table_name,$_account_ledger,$_dr_amount_a,$_cr_amount_a,$_branch_id_a,$_cost_center_a,$_name,(20));
                }
            }

             
$_l_balance = _l_balance_update($request->_main_ledger_id);
             \DB::table('purchases')
             ->where('id',$purchase_id)
             ->update(['_p_balance'=>$_p_balance,'_l_balance'=>$_l_balance]);

            DB::commit();
            return redirect()->back()->with('success','Information save successfully')->with('_master_id',$purchase_id)->with('_print_value',$_print_value);
       } catch (\Exception $e) {
           DB::rollback();
           return redirect()->back()->with('danger','There is Something Wrong !');
        }

       
    }


  


    public function purchasePrint($id){
        $users = Auth::user();
        $page_name = $this->page_name;
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        $voucher_types = VoucherType::select('id','_name','_code')->orderBy('_code','asc')->get();
         $data =  Purchase::with(['_master_branch','_master_details','purchase_account','_ledger'])->find($id);
        $form_settings = PurchaseFormSettings::first();
           $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
         $store_houses = StoreHouse::whereIn('_branch_id',explode(',',$users->cost_center_ids))->get();


         if($form_settings->_invoice_template==1){
            return view('backend.purchase.print',compact('page_name','permited_branch','permited_costcenters','data','form_settings','permited_branch','permited_costcenters','store_houses'));
         }elseif($form_settings->_invoice_template==2){
            return view('backend.purchase.print_1',compact('page_name','permited_branch','permited_costcenters','data','form_settings','permited_branch','permited_costcenters','store_houses'));
         }elseif($form_settings->_invoice_template==3){
            return view('backend.purchase.print_2',compact('page_name','permited_branch','permited_costcenters','data','form_settings','permited_branch','permited_costcenters','store_houses'));
         }elseif($form_settings->_invoice_template==4){
           return view('backend.purchase.print_3',compact('page_name','permited_branch','permited_costcenters','data','form_settings','permited_branch','permited_costcenters','store_houses'));
         }else{
            return view('backend.purchase.print',compact('page_name','permited_branch','permited_costcenters','data','form_settings','permited_branch','permited_costcenters','store_houses'));
         }

       
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
        
        $store_houses = StoreHouse::whereIn('_branch_id',explode(',',$users->cost_center_ids))->get();
        $form_settings = PurchaseFormSettings::first();
        $inv_accounts = AccountLedger::where('_account_head_id',2)->get();
        $p_accounts = AccountLedger::where('_account_head_id',10)->get();
        $dis_accounts = AccountLedger::where('_account_head_id',11)->get();
        
        $categories = ItemCategory::orderBy('_name','asc')->get();
        $units = Units::orderBy('_name','asc')->get();
         $data =  Purchase::with(['_master_branch','_master_details','purchase_account','_ledger'])->where('_lock',0)->find($id);
         
         if(!$data){
            return redirect()->back()->with('danger','You have no permission to edit or update !');
         }
          $sales_number = SalesDetail::where('_purchase_invoice_no',$id)->count();
       return view('backend.purchase.edit',compact('account_types','page_name','account_groups','branchs','permited_branch','permited_costcenters','store_houses','form_settings','inv_accounts','p_accounts','dis_accounts','categories','units','data','sales_number'));
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
            '_purchase_id' => 'required',
            '_form_name' => 'required',
            '_date' => 'required',
            '_main_ledger_id' => 'required',
        ]);



       //######################
       // Previous information need to make zero for every thing.
       //#####################
     $purchase_id = $request->_purchase_id;
     $data =  Purchase::where('_lock',0)->find($purchase_id); 
     if(!$data){ return redirect()->back()->with('danger','You have no permission to edit or update !'); }


     $sales_number = SalesDetail::where('_purchase_invoice_no',$purchase_id)->count();
     if($sales_number > 0 ){
         return redirect()->back()->with('danger','You Can not update This invoice Item.Please Use Purchase Return !');
     }

    //###########################
    // Purchase Master information Save Start
    //###########################
     DB::beginTransaction();
       try {

    
    PurchaseDetail::where('_no', $purchase_id)
            ->update(['_status'=>0]);
    ProductPriceList::where('_master_id',$purchase_id)
                    ->update(['_status'=>0]);
    ItemInventory::where('_transection',"Purchase")
        ->where('_transection_ref',$purchase_id)
        ->update(['_status'=>0]);
    PurchaseAccount::where('_no',$purchase_id)                               
            ->update(['_status'=>0]);
    Accounts::where('_ref_master_id',$purchase_id)
                    ->where('_table_name',$request->_form_name)
                     ->update(['_status'=>0]); 
    Accounts::where('_ref_master_id',$purchase_id)
                    ->where('_table_name','purchase_accounts')
                     ->update(['_status'=>0]); 
    $_p_balance = _l_balance_update($request->_main_ledger_id);             

    //###########################
    // Purchase Master information Save Start
    //###########################
       $_print_value = $request->_print ?? 0;
       $users = Auth::user();
        $Purchase = Purchase::where('id',$purchase_id)->first();
        if(empty($Purchase)){
            return redirect()->back()->with('danger','Something Went Wrong !');
        }
        $Purchase->_date = change_date_format($request->_date);
        $Purchase->_time = date('H:i:s');
        $Purchase->_order_ref_id = $request->_order_ref_id;
        $Purchase->_referance = $request->_referance;
        $Purchase->_ledger_id = $request->_main_ledger_id;
        $Purchase->_user_id = $users->id;
        $Purchase->_created_by = $users->id."-".$users->name;
        $Purchase->_updated_by = $users->id."-".$users->name;
        $Purchase->_user_id = $users->id;
        $Purchase->_user_name = $users->name;
        $Purchase->_note = $request->_note;
        $Purchase->_sub_total = $request->_sub_total;
        $Purchase->_discount_input = $request->_discount_input;
        $Purchase->_total_discount = $request->_total_discount;
        $Purchase->_total_vat = $request->_total_vat;
        $Purchase->_total = $request->_total;
        $Purchase->_branch_id = $request->_branch_id;
        $Purchase->_address = $request->_address;
        $Purchase->_phone = $request->_phone;
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
        $purchase_detail_ids = $request->purchase_detail_id;
        $_manufacture_dates = $request->_manufacture_date;
        $_expire_dates = $request->_expire_date;

        if(sizeof($_item_ids) > 0){
            for ($i = 0; $i <sizeof($_item_ids) ; $i++) {
                if($purchase_detail_ids[$i] ==0){
                    $PurchaseDetail = new PurchaseDetail();
                    $PurchaseDetail->_created_by = $users->id."-".$users->name;
                }else{
                    $PurchaseDetail = PurchaseDetail::where('id',$purchase_detail_ids[$i])->first();
                }
                $PurchaseDetail->_manufacture_date =$_manufacture_dates[$i] ?? null;
                $PurchaseDetail->_expire_date = $_expire_dates[$i] ?? null;

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
                $PurchaseDetail->_store_id = $_store_ids[$i] ?? 1;
                $PurchaseDetail->_cost_center_id = $_main_cost_center[$i] ?? 1;
                $PurchaseDetail->_store_salves_id = $_store_salves_ids[$i] ?? 1;
                $PurchaseDetail->_branch_id = $_main_branch_id_detail[$i] ?? 1;
                $PurchaseDetail->_no = $purchase_id;
                $PurchaseDetail->_status = 1;
                $PurchaseDetail->_updated_by = $users->id."-".$users->name;
                $PurchaseDetail->save();
                $_purchase_detail_id = $PurchaseDetail->id;

                $item_info = Inventory::where('id',$_item_ids[$i])->first();

                $ProductPriceList = ProductPriceList::where('_master_id',$purchase_id)
                                    ->where('_purchase_detail_id',$_purchase_detail_id)
                                    ->first();
                if(empty($ProductPriceList)){
                    $ProductPriceList = new ProductPriceList();
                    $ProductPriceList->_created_by = $users->id."-".$users->name;
                }
                
                $ProductPriceList->_item_id = $_item_ids[$i];
                $ProductPriceList->_item = $item_info->_item ?? '';
                $ProductPriceList->_unit_id =  $item_info->_unit_id ?? 1;
                $ProductPriceList->_barcode =$_barcodes[$i] ?? '';
                $ProductPriceList->_manufacture_date =$_manufacture_dates[$i] ?? null;
                $ProductPriceList->_expire_date = $_expire_dates[$i] ?? null;
                $ProductPriceList->_qty = $_qtys[$i];
                $ProductPriceList->_sales_rate = $_sales_rates[$i];
                $ProductPriceList->_pur_rate = $_rates[$i];
                $ProductPriceList->_sales_discount = $item_info->_discount ?? 0;
                $ProductPriceList->_sales_vat = $item_info->_vat ?? 0;;
                $ProductPriceList->_value =$_values[$i] ?? 0;
                $ProductPriceList->_purchase_detail_id =$_purchase_detail_id;
                $ProductPriceList->_master_id = $purchase_id;
                $ProductPriceList->_branch_id = $_main_branch_id_detail[$i] ?? 1;
                $ProductPriceList->_p_discount_input = $_discounts[$i] ?? 0;
                $ProductPriceList->_p_discount_amount = $_discount_amounts[$i] ?? 0;
                $ProductPriceList->_p_vat = $_vats[$i] ?? 0;
                $ProductPriceList->_p_vat_amount = $_vat_amounts[$i] ?? 0;
                $ProductPriceList->_store_id = $_store_ids[$i] ?? 1;
                $ProductPriceList->_cost_center_id = $_main_cost_center[$i] ?? 1;
                $ProductPriceList->_store_salves_id = $_store_salves_ids[$i] ?? '';
                $ProductPriceList->_status =1;
                $ProductPriceList->_updated_by = $users->id."-".$users->name;
                $ProductPriceList->save();


                $ItemInventory = ItemInventory::where('_transection',"Purchase")
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
                $ItemInventory->_transection = "Purchase";
                $ItemInventory->_transection_ref = $purchase_id;
                $ItemInventory->_transection_detail_ref_id = $_purchase_detail_id;
                $ItemInventory->_qty = $_qtys[$i];
                $ItemInventory->_rate = $_sales_rates[$i];
                $ItemInventory->_cost_rate = $_rates[$i];
                $ItemInventory->_cost_value = ($_qtys[$i]*$_rates[$i]);
                $ItemInventory->_value = $_values[$i] ?? 0;
                $ItemInventory->_branch_id = $_main_branch_id_detail[$i] ?? 1;
                $ItemInventory->_store_id = $_store_ids[$i] ?? 1;
                $ItemInventory->_cost_center_id = $_main_cost_center[$i] ?? 1;
                $ItemInventory->_store_salves_id = $_store_salves_ids[$i] ?? '';
                $ItemInventory->_status = 1;
                $ItemInventory->_updated_by = $users->id."-".$users->name;
                $ItemInventory->save(); 

                _inventory_last_price($_item_ids[$i],$_rates[$i],$_sales_rates[$i]);
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

        $__sub_total = (float) $request->_sub_total;
         $__total = (float) $request->_total;
         $__discount_input = (float) $request->_discount_input;
         $__total_discount = (float) $request->_total_discount;
         $__total_vat = (float) $request->_total_vat ?? 0;
if($__sub_total > 0){

            //Default Purchase
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_purchase,$__sub_total,0,$_branch_id,$_cost_center,$_name,1);
        //Default Supplier
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_purchase),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,0,$__sub_total,$_branch_id,$_cost_center,$_name,2);

            //Default Inventory
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_purchase),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_inventory,$__sub_total,0,$_branch_id,$_cost_center,$_name,3);
        //Default Purchase 
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_inventory),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_purchase,0,$__sub_total,$_branch_id,$_cost_center,$_name,4);
        }

        if($__total_discount > 0){
            //Default Supplier
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_discount),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,$__total_discount,0,$_branch_id,$_cost_center,$_name,5);
             //Default Discount
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_discount,0,$__total_discount,$_branch_id,$_cost_center,$_name,6);
        
        }
         $__total_vat = (float) $request->_total_vat ?? 0;
        if($__total_vat > 0){
            //Default Vat Account
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_vat_account,$request->_total_vat,0,$_branch_id,$_cost_center,$_name,7);
        //Default Supplier
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_vat_account),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,0,$request->_total_vat,$_branch_id,$_cost_center,$_name,8);
        
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

        $_ledger_id =  $request->_ledger_id ?? [];
        $_short_narr =  $request->_short_narr ?? [];
        $_dr_amount =  $request->_dr_amount ?? [];
         $_cr_amount =  $request->_cr_amount ?? [];
        $_branch_id_detail =  $request->_branch_id_detail ?? [];
        $_cost_center =  $request->_cost_center ?? [];
        $purchase_account_ids =  $request->purchase_account_id ?? [];
    
        if(sizeof($_ledger_id) > 0){
                foreach($_ledger_id as $i=>$ledger) {

                    if($ledger !=""){
                       
                     // echo  $_cr_amount[$i];
                        $_account_type_id =  ledger_to_group_type($ledger)->_account_head_id;
                        $_account_group_id =  ledger_to_group_type($ledger)->_account_group_id;

                        $_total_dr_amount += $_dr_amount[$i] ?? 0;
                        $_total_cr_amount += $_cr_amount[$i] ?? 0;
                         $PurchaseAccount = PurchaseAccount::where('id',$purchase_account_ids[$i] ?? 0)
                                                            ->where('_ledger_id',$ledger)
                                                            ->first();
                        if(empty($PurchaseAccount)){
                            $PurchaseAccount = new PurchaseAccount();
                        }
                        
                        $PurchaseAccount->_no = $purchase_id;
                        $PurchaseAccount->_account_type_id = $_account_type_id;
                        $PurchaseAccount->_account_group_id = $_account_group_id;
                        $PurchaseAccount->_ledger_id = $ledger;
                        $PurchaseAccount->_cost_center = $_cost_center[$i] ?? 0;
                        $PurchaseAccount->_branch_id = $_branch_id_detail[$i] ?? 0;
                        $PurchaseAccount->_short_narr = $_short_narr[$i] ?? 'N/A';
                        $PurchaseAccount->_dr_amount = $_dr_amount[$i];
                        $PurchaseAccount->_cr_amount = $_cr_amount[$i];
                        $PurchaseAccount->_status = 1;
                        $PurchaseAccount->_updated_by = $users->id."-".$users->name;
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
                        $_dr_amount_a = $_dr_amount[$i] ?? 0;
                        $_cr_amount_a = $_cr_amount[$i] ?? 0;
                        $_branch_id_a = $_branch_id_detail[$i] ?? 0;
                        $_cost_center_a = $_cost_center[$i] ?? 0;
                        $_name =$users->name;
                        account_data_save($_ref_master_id,$_ref_detail_id,$_short_narration,$_narration,$_reference,$_transaction,$_date,$_table_name,$_account_ledger,$_dr_amount_a,$_cr_amount_a,$_branch_id_a,$_cost_center_a,$_name,(9+$i));
                          
                    }
                }

                   //Only Cash and Bank receive in account detail. This entry set automatically by program.
                if($_total_cr_amount > 0 && $users->_ac_type==1){
                         $_account_type_id =  ledger_to_group_type($request->_main_ledger_id)->_account_head_id;
                        $_account_group_id =  ledger_to_group_type($request->_main_ledger_id)->_account_group_id;
                        $PurchaseAccount = new PurchaseAccount();
                        $PurchaseAccount->_no = $purchase_id;
                        $PurchaseAccount->_account_type_id = $_account_type_id;
                        $PurchaseAccount->_account_group_id = $_account_group_id;
                        $PurchaseAccount->_ledger_id = $request->_main_ledger_id;
                        $PurchaseAccount->_cost_center = $users->cost_center_ids;
                        $PurchaseAccount->_branch_id = $users->branch_ids;
                        $PurchaseAccount->_short_narr = 'N/A';
                        $PurchaseAccount->_dr_amount = $_total_cr_amount;
                        $PurchaseAccount->_cr_amount = 0;
                        $PurchaseAccount->_status = 1;
                        $PurchaseAccount->_created_by = $users->id."-".$users->name;
                        $PurchaseAccount->save();

 
                        $_sales_account_id = $PurchaseAccount->id;

                        //Reporting Account Table Data Insert
                        $_ref_master_id=$purchase_id;
                        $_ref_detail_id=$_sales_account_id;
                        $_short_narration='N/A';
                        $_narration = $request->_note;
                        $_reference= $request->_referance;
                        $_transaction= 'Purchase';
                        $_date = change_date_format($request->_date);
                        $_table_name ='purchase_accounts';
                        $_account_ledger = $request->_main_ledger_id;
                        $_dr_amount_a = $_total_cr_amount;
                        $_cr_amount_a = 0;
                        $_branch_id_a = $users->branch_ids;
                        $_cost_center_a = $users->cost_center_ids;
                        $_name =$users->name;
                        account_data_save($_ref_master_id,$_ref_detail_id,$_short_narration,$_narration,$_reference,$_transaction,$_date,$_table_name,$_account_ledger,$_dr_amount_a,$_cr_amount_a,$_branch_id_a,$_cost_center_a,$_name,(20));
                }
            }

             
$_l_balance = _l_balance_update($request->_main_ledger_id);
             \DB::table('purchases')
             ->where('id',$purchase_id)
             ->update(['_p_balance'=>$_p_balance,'_l_balance'=>$_l_balance]);

                DB::commit();
        return redirect()->back()->with('success','Information save successfully')->with('_master_id',$purchase_id)->with('_print_value',$_print_value);
       } catch (\Exception $e) {
           DB::rollback();
           return redirect()->back()->with('danger','There is Something Wrong !');
        }

       
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
