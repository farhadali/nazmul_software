<?php

namespace App\Http\Controllers;


use App\Models\Sales;
use App\Models\SalesAccount;
use App\Models\SalesDetail;
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
use App\Models\SalesFormSetting;
use App\Models\SalesReturn;
use App\Models\SalesReturnDetail;
use App\Models\SalesReturnAccount;
use App\Models\SalesReturnFormSetting;
use Auth;
use DB;
use Illuminate\Http\Request;
use Session;

class SalesReturnController extends Controller
{

         function __construct()
    {
         $this->middleware('permission:sales-return-list|sales-return-create|sales-return-edit|sales-return-delete|sales-return-print', ['only' => ['index','store']]);
         $this->middleware('permission:sales-return-print', ['only' => ['sales-returnPrint']]);
         $this->middleware('permission:sales-return-create', ['only' => ['create','store']]);
         $this->middleware('permission:sales-return-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:sales-return-delete', ['only' => ['destroy']]);
         $this->middleware('permission:sales-return-print', ['only' => ['Print']]);
         $this->middleware('permission:sales-return-settings', ['only' => ['Settings']]);
         $this->page_name = "Sales Return";
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

        $datas = SalesReturn::with(['_master_branch','_master_details','s_account','_ledger']);
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
        if($request->has('_cost_center_id') && $request->_cost_center_id !=''){
            $datas = $datas->where('_cost_center_id','=',$request->_cost_center_id);
        }
        if($request->has('_store_salves_id') && $request->_store_salves_id !=''){
            $datas = $datas->where('_store_salves_id','=',$request->_store_salves_id);
        }
        if($request->has('_delivery_man_id') && $request->_delivery_man_id !=''){
            $datas = $datas->where('_delivery_man_id','=',$request->_delivery_man_id);
        }

        if($request->has('_sales_man_id') && $request->_sales_man_id !=''){
            $datas = $datas->where('_sales_man_id','=',$request->_sales_man_id);
        }

        if($request->has('_sales_type') && $request->_sales_type !=''){
            $datas = $datas->where('_sales_type','=',$request->_sales_type);
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
        
        $datas = $datas->orderBy($asc_cloumn,$_asc_desc)
                        ->paginate($limit);

         $page_name = $this->page_name;
         $account_types = AccountHead::select('id','_name')->orderBy('_name','asc')->get();
         $account_groups = [];
          $current_date = date('Y-m-d');
          $current_time = date('H:i:s');
          $users = Auth::user();
           $form_settings = SalesFormSetting::first();
           $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
         $store_houses = StoreHouse::whereIn('_branch_id',explode(',',$users->cost_center_ids))->get();
        //return $datas;
         if($request->has('print')){
            if($request->print =="single"){
                return view('backend.sales-return.master_print',compact('datas','page_name','account_types','request','account_groups','current_date','current_time','limit','form_settings','permited_branch','permited_costcenters','store_houses'));
            }

            if($request->print =="detail"){
                return view('backend.sales-return.details_print',compact('datas','page_name','account_types','request','account_groups','current_date','current_time','limit','form_settings','permited_branch','permited_costcenters','store_houses'));
            }
         }

        return view('backend.sales-return.index',compact('datas','page_name','account_types','request','account_groups','current_date','limit','form_settings','permited_branch','permited_costcenters','store_houses'));
    }

     public function reset(){
        Session::flash('_pur_limit');
       return  \Redirect::to('sales?limit='.default_pagination());
    }

     public function checkAvailableQty(Request $request){
        $unique_p_q = [];
        foreach($request->_p_p_l_ids_qtys as $index=> $val){
         $unique_p_q[$val["_p_id"]][]=$val;
        }
        $_id_qty=array();
        foreach ($unique_p_q as $key=>$value) {
            $qty_sum =0;
            foreach ($value as $row) {
                 $qty_sum +=floatval($row["_p_qty"]);
             }
            array_push($_id_qty, ['_id'=>$key,'_qty'=>$qty_sum]);  
        }

        $_over_qty = array();
        if(sizeof($_id_qty) > 0){
            foreach ($_id_qty as $value) {
                $check_qty = ProductPriceList::where('id',$value["_id"])->where('_qty','<',floatval($value["_qty"]))->first();
                if($check_qty){
                    array_push($_over_qty, $value["_id"]);
                }
            }
        }
       

        return json_encode($_over_qty); 
    }
    public function checkAvailableQtyUpdate(Request $request){

        $previous_sales_details = \DB::select(" SELECT s1._p_p_l_id,s1._item_id,SUM(s1._qty+s2._qty) as _total_qty FROM sales_details as s1
INNER JOIN product_price_lists AS s2 ON s1._p_p_l_id=s2.id
WHERE s1._no=".$request->_sales_id." GROUP BY s1._p_p_l_id ");
        $unique_p_q = [];
        foreach($request->_p_p_l_ids_qtys as $index=> $val){
         $unique_p_q[$val["_p_id"]][]=$val;
        }
        $_id_qty=array();
        foreach ($unique_p_q as $key=>$value) {
            $qty_sum =0;
            foreach ($value as $row) {
                 $qty_sum +=floatval($row["_p_qty"]);
             }
            array_push($_id_qty, ['_id'=>$key,'_qty'=>$qty_sum]);  
        }

        $_over_qty = array();
       foreach ($previous_sales_details as $value) {
           foreach ($_id_qty as $c_val) {
            
               if($value->_p_p_l_id ==$c_val["_id"]   ){
                if(floatval($value->_total_qty) < floatval($c_val["_qty"])){
                    array_push($_over_qty, $c_val["_id"]);
                }
               }
           }
       }
       
        
        return json_encode($_over_qty); 
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
        $form_settings = SalesReturnFormSetting::first();
        $inv_accounts = [];
        $p_accounts = [];
        $dis_accounts = [];
        $vat_accounts =[];

        // $inv_accounts = AccountLedger::where('_account_head_id',2)->get();
        // $p_accounts = AccountLedger::where('_account_head_id',10)->get();
        // $dis_accounts = AccountLedger::where('_account_head_id',11)->get();
        // $vat_accounts = AccountLedger::where('_account_group_id',47)->get();
        $categories = ItemCategory::orderBy('_name','asc')->get();
        $units = Units::orderBy('_name','asc')->get();

       return view('backend.sales-return.create',compact('account_types','page_name','account_groups','branchs','permited_branch','permited_costcenters','voucher_types','store_houses','form_settings','inv_accounts','p_accounts','dis_accounts','vat_accounts','categories','units'));
    }

     public function formSettingAjax(){
        $form_settings = SalesReturnFormSetting::first();
        $inv_accounts = AccountLedger::where('_account_head_id',2)->get();
        $p_accounts = AccountLedger::where('_account_head_id',8)->get();
        $dis_accounts = AccountLedger::where('_account_head_id',10)->get();
        $cost_of_solds = AccountLedger::where('_account_head_id',9)->get();
        return view('backend.sales-return.form_setting_modal',compact('form_settings','inv_accounts','p_accounts','dis_accounts','cost_of_solds'));
    }


    public function itemSalesSearch(Request $request){
        $users = Auth::user();
        $limit = $request->limit ?? default_pagination();
        $_asc_desc = $request->_asc_desc ?? 'ASC';
        $asc_cloumn =  $request->asc_cloumn ?? '_qty';
        $text_val = $request->_text_val;
        $datas = ProductPriceList::select('id','_item as _name','_item_id','_unit_id','_barcode','_manufacture_date','_expire_date','_qty','_sales_rate','_pur_rate','_sales_discount','_sales_vat','_purchase_detail_id','_master_id','_branch_id','_cost_center_id','_store_id','_store_salves_id')
            ->where('_qty','>',0)
            ->where('_status',1);
         if($request->has('_text_val') && $request->_text_val !=''){
            $datas = $datas->where('_item','like',"%$request->_text_val%")
            ->orWhere('id','like',"%$request->_text_val%");
        }
        $datas = $datas->whereIn('_branch_id',explode(',',$users->branch_ids));
        $datas = $datas->whereIn('_cost_center_id',explode(',',$users->cost_center_ids));
        
        
        $datas = $datas->orderBy($asc_cloumn,$_asc_desc)->paginate($limit);
        return json_encode( $datas);
    }


    public function Settings (Request $request){
        $data = SalesReturnFormSetting::first();
        if(empty($data)){
            $data = new SalesReturnFormSetting();
        }
        $data->_default_inventory = $request->_default_inventory;
        $data->_default_sales = $request->_default_sales;
        $data->_default_discount = $request->_default_discount;
        $data->_default_cost_of_solds = $request->_default_cost_of_solds;
        $data->_show_barcode = $request->_show_barcode;
        $data->_show_vat = $request->_show_vat;
        $data->_show_store = $request->_show_store;
        $data->_show_self = $request->_show_self;
        $data->_default_vat_account = $request->_default_vat_account;
        $data->_inline_discount = $request->_inline_discount ?? 1;
        $data->_show_delivery_man = $request->_show_delivery_man ?? 1;
        $data->_show_sales_man = $request->_show_sales_man ?? 1;
        $data->_show_cost_rate = $request->_show_cost_rate ?? 1;
        $data->_show_manufacture_date = $request->_show_manufacture_date ?? 1;
        $data->_show_expire_date = $request->_show_expire_date ?? 1;
        $data->_show_p_balance = $request->_show_p_balance ?? 1;
        $data->_invoice_template = $request->_invoice_template ?? 1;
        $data->save();


        return redirect()->back();
                       

    }

      public function orderSearch(Request $request){
        $limit = $request->limit ?? default_pagination();
        $_asc_desc = $request->_asc_desc ?? 'ASC';
        $asc_cloumn =  $request->asc_cloumn ?? '_date';
        $text_val = $request->_text_val;
        $_branch_id = $request->_branch_id;
        $datas = Sales::with(['_ledger','_delivery_man','_sales_man'])->where('_status',1)->where('_branch_id',$_branch_id);
         if($request->has('_text_val') && $request->_text_val !=''){
            $datas = $datas->where('_date','like',"%$request->_text_val%")
            ->orWhere('id','like',"%$request->_text_val%");
        }
        $datas = $datas->orderBy($asc_cloumn,$_asc_desc)->paginate($limit);
        return json_encode( $datas);
    }

     public function print($id){
        $users = Auth::user();
        $page_name = $this->page_name;
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
       
         $data =  SalesReturn::with(['_master_branch','_master_details','s_account','_ledger'])->find($id);
        $form_settings = SalesReturnFormSetting::first();
           $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
         $store_houses = StoreHouse::whereIn('_branch_id',explode(',',$users->cost_center_ids))->get();
       

         if($form_settings->_invoice_template==1){
            return view('backend.sales-return.print',compact('page_name','permited_branch','permited_costcenters','data','form_settings','permited_branch','permited_costcenters','store_houses'));
         }elseif($form_settings->_invoice_template==2){
            return view('backend.sales-return.print_1',compact('page_name','permited_branch','permited_costcenters','data','form_settings','permited_branch','permited_costcenters','store_houses'));
         }elseif($form_settings->_invoice_template==3){
           return view('backend.sales-return.print_2',compact('page_name','permited_branch','permited_costcenters','data','form_settings','permited_branch','permited_costcenters','store_houses'));
         }elseif($form_settings->_invoice_template==4){
            return view('backend.sales-return.print_3',compact('page_name','permited_branch','permited_costcenters','data','form_settings','permited_branch','permited_costcenters','store_houses'));
         }else{
           return view('backend.sales-return.print',compact('page_name','permited_branch','permited_costcenters','data','form_settings','permited_branch','permited_costcenters','store_houses'));
         }
    }



      public function salesOrderDetails(Request $request){
        $this->validate($request, [
            '_purchase_main_id' => 'required',
        ]);
        $_purchase_main_id = $request->_purchase_main_id;

       $datas = SalesDetail::with(['_detail_branch','_detail_cost_center','_store','_items'])
                                ->where('_no',$_purchase_main_id)
                                ->get();
        $previous_retuns = \DB::select(" SELECT t1._sales_detail_ref_id,SUM(t1._qty) as _qty 
                                        FROM  sales_return_details AS t1 
                                            WHERE t1._sales_ref_id=".$_purchase_main_id."
                                        GROUP BY t1._sales_detail_ref_id ");
        if(sizeof($previous_retuns) > 0){
            foreach ($previous_retuns as $value) {
                foreach ($datas as $key=> $_data_val) {
                    if($_data_val->id ==$value->_sales_detail_ref_id){
                        $datas[$key]->_qty = ($datas[$key]->_qty -$value->_qty);
                    }
                }
            }
        }

        
        return json_encode( $datas);
    }

        public function checkAvailableSalesQty(Request $request){
        $_sales_id = $request->_sales_return_id ?? 0;

        $_sales_detils_unique_ids = array();
        $_sales_detail_ref_ids =  $request->_sales_detail_ref_ids;
        foreach ($_sales_detail_ref_ids as $value) {
            array_push($_sales_detils_unique_ids, intval($value["_s_d_id"]));
        }

         $_sales_detils_unique_ids_str = implode(',', $_sales_detils_unique_ids);

        $_previous_sales = \DB::select(" SELECT s1._id as _s_d_id, SUM(s1._qty) AS _qty FROM (
                SELECT t1.id as _id,t1._qty as _qty FROM sales_details AS t1
                WHERE   t1.id IN( ".$_sales_detils_unique_ids_str.")
                UNION ALL
                SELECT t2._sales_detail_ref_id as _id, -SUM(t2._qty) as _qty FROM sales_return_details AS t2
                WHERE  t2._sales_detail_ref_id IN( ".$_sales_detils_unique_ids_str.")
                GROUP BY t2._sales_detail_ref_id
                UNION ALL
                SELECT t2._sales_detail_ref_id as _id, SUM(t2._qty) as _qty FROM sales_return_details AS t2
                WHERE  t2._sales_detail_ref_id IN( ".$_sales_detils_unique_ids_str.") AND t2._no= ".$_sales_id."
                GROUP BY t2._sales_detail_ref_id
    ) AS s1 GROUP BY s1._id ");

        $_over_qty = array();
        foreach ($_previous_sales as $p_key=>$value) {
            foreach ($_sales_detail_ref_ids as $_detail_val) {
                if($value->_s_d_id == $_detail_val["_s_d_id"]){
                    if(floatval($value->_qty) < floatval($_detail_val["_p_qty"])){
                     array_push($_over_qty, $value->_s_d_id);
                    }
                    
                }
            }
            
        }

       
       
       

        return json_encode($_over_qty); 
    }

    public function checkAvailableSalesQtyUpdate(Request $request){
return $request->all();
        $previous_sales_details = \DB::select(" SELECT s1._p_p_l_id,s1._item_id,SUM(s1._qty+s2._qty) as _total_qty FROM sales_details as s1
INNER JOIN product_price_lists AS s2 ON s1._p_p_l_id=s2.id
WHERE s1._no=".$request->_sales_id." GROUP BY s1._p_p_l_id ");
        $unique_p_q = [];
        foreach($request->_p_p_l_ids_qtys as $index=> $val){
         $unique_p_q[$val["_p_id"]][]=$val;
        }
        $_id_qty=array();
        foreach ($unique_p_q as $key=>$value) {
            $qty_sum =0;
            foreach ($value as $row) {
                 $qty_sum +=floatval($row["_p_qty"]);
             }
            array_push($_id_qty, ['_id'=>$key,'_qty'=>$qty_sum]);  
        }

        $_over_qty = array();
       foreach ($previous_sales_details as $value) {
           foreach ($_id_qty as $c_val) {
            
               if($value->_p_p_l_id ==$c_val["_id"]   ){
                if(floatval($value->_total_qty) < floatval($c_val["_qty"])){
                    array_push($_over_qty, $c_val["_id"]);
                }
               }
           }
       }
       
        
        return json_encode($_over_qty); 
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
        $_sales_detils_unique_ids = array();
        $_sales_detail_ref_ids =  $request->_sales_detail_ref_id;
        $_p_s__qtys =  $request->_qty;
        foreach ($_sales_detail_ref_ids as $value) {
            array_push($_sales_detils_unique_ids, intval($value));
        }

         $_sales_detils_unique_ids_str = implode(',', $_sales_detils_unique_ids);

        $_previous_sales = \DB::select(" SELECT s1._id as _s_d_id, SUM(s1._qty) AS _qty FROM (
                SELECT t1.id as _id,t1._qty as _qty FROM sales_details AS t1
                WHERE   t1.id IN( ".$_sales_detils_unique_ids_str.")
                UNION ALL
                SELECT t2._sales_detail_ref_id as _id, -SUM(t2._qty) as _qty FROM sales_return_details AS t2
                WHERE  t2._sales_detail_ref_id IN( ".$_sales_detils_unique_ids_str.")
                GROUP BY t2._sales_detail_ref_id
    ) AS s1 GROUP BY s1._id ");
  
        $_over_qty = array();
        foreach ($_previous_sales as $p_key=>$value) {
            foreach ($_sales_detail_ref_ids as $key=> $_detail_val) {
                if($value->_s_d_id == $_detail_val ){
                    if(floatval($value->_qty) < floatval($_p_s__qtys[$key])){
                     array_push($_over_qty, $value->_s_d_id);
                    }
                    
                }
            }
            
        }
        if(sizeof($_over_qty) > 0){
            return redirect()->back()
                ->with('danger','You Can not return more then Sales Qty !');
        }
 

         $_sales_man_id = $request->_sales_man_main_id;
         $sales_man_name_leder = $request->_sales_man_main_name;
         $_delivery_man_id = $request->_delivery_man_main_id;
         $delivery_man_name_leder = $request->_delivery_man_main_name;
         $_address_main_ledger = $request->_address_main_ledger;
         $_phone_main_ledger = $request->_phone_main_ledger;
        
         $__sub_total = (float) $request->_sub_total;
         $__total = (float) $request->_total;
         $__discount_input = (float) $request->_discount_input;
         $__total_discount = (float) $request->_total_discount;

       $_print_value = $request->_print ?? 0;
         $users = Auth::user();
        $SalesReturn = new SalesReturn();
        $SalesReturn->_date = change_date_format($request->_date);
        $SalesReturn->_time = date('H:i:s');
        $SalesReturn->_order_ref_id = $request->_order_ref_id;
        $SalesReturn->_order_number = $request->_order_number ?? '';
        $SalesReturn->_referance = $request->_referance;
        $SalesReturn->_ledger_id = $request->_main_ledger_id;
      
        $SalesReturn->_created_by = $users->id."-".$users->name;
        $SalesReturn->_user_id = $users->id;
        $SalesReturn->_user_name = $users->name;
        $SalesReturn->_note = $request->_note;
        $SalesReturn->_sub_total = $__sub_total;
        $SalesReturn->_discount_input = $__discount_input;
        $SalesReturn->_total_discount = $__total_discount;
        $SalesReturn->_total_vat = $request->_total_vat;
        $SalesReturn->_total =  $__total;
        $SalesReturn->_branch_id = $request->_branch_id;
        $SalesReturn->_address = $_address_main_ledger;
        $SalesReturn->_phone = $_phone_main_ledger;
        $SalesReturn->_delivery_man_id = $_delivery_man_id ?? 0;
        $SalesReturn->_sales_man_id =  $_sales_man_id ?? 0;
        $SalesReturn->_sales_type = $request->_sales_type ?? 'sales_return';
        $SalesReturn->_status = 1;
        $SalesReturn->save();
        $_master_id = $SalesReturn->id;

                                           

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
        $_p_p_l_ids = $request->_p_p_l_id;
        $_sales_ref_ids = $request->_sales_ref_id;
        $_sales_detail_ref_ids = $request->_sales_detail_ref_id;
        $_discounts = $request->_discount;
        $_discount_amounts = $request->_discount_amount;
          $_manufacture_dates = $request->_manufacture_date;
        $_expire_dates = $request->_expire_date;

       
        $_total_cost_value=0;

        if(sizeof($_sales_detail_ref_ids) > 0){
            for ($i = 0; $i <sizeof($_sales_detail_ref_ids) ; $i++) {
                $_total_cost_value += ($_rates[$i]*$_qtys[$i]);

                $SalesReturnDetail = new SalesReturnDetail();
                $SalesReturnDetail->_item_id = $_item_ids[$i];
                $SalesReturnDetail->_p_p_l_id = $_p_p_l_ids[$i];
                $SalesReturnDetail->_sales_ref_id = $_sales_ref_ids[$i];
                $SalesReturnDetail->_sales_detail_ref_id = $_sales_detail_ref_ids[$i];
                $SalesReturnDetail->_qty = $_qtys[$i];
                $SalesReturnDetail->_barcode = $_barcodes[$i];
                $SalesReturnDetail->_rate = $_rates[$i];
                $SalesReturnDetail->_sales_rate = $_sales_rates[$i];
                $SalesReturnDetail->_discount = $_discounts[$i] ?? 0;
                $SalesReturnDetail->_discount_amount = $_discount_amounts[$i] ?? 0;
                $SalesReturnDetail->_vat = $_vats[$i] ?? 0;
                $SalesReturnDetail->_vat_amount = $_vat_amounts[$i] ?? 0;
                $SalesReturnDetail->_value = $_values[$i] ?? 0;
                $SalesReturnDetail->_manufacture_date = $_manufacture_dates[$i];

                $SalesReturnDetail->_expire_date = $_expire_dates[$i];
                $SalesReturnDetail->_store_id = $_store_ids[$i] ?? 1;
                $SalesReturnDetail->_cost_center_id = $_main_cost_center[$i] ?? 1;
                $SalesReturnDetail->_store_salves_id = $_store_salves_ids[$i] ?? '';
                $SalesReturnDetail->_branch_id = $_main_branch_id_detail[$i] ?? 1;
                $SalesReturnDetail->_no = $_master_id;
                $SalesReturnDetail->_status = 1;
                $SalesReturnDetail->_created_by = $users->id."-".$users->name;
                $SalesReturnDetail->save();
                $_sales_details_id = $SalesReturnDetail->id;

                $item_info = Inventory::where('id',$_item_ids[$i])->first();

                $ProductPriceList = ProductPriceList::find($_p_p_l_ids[$i]);
                $_p_qty = $ProductPriceList->_qty;
                $_status = (($_p_qty + $_qtys[$i]) > 0) ? 1 : 0;
                $ProductPriceList->_qty = ($_p_qty + $_qtys[$i]);
                $ProductPriceList->_status = $_status;
                $ProductPriceList->save();

                $ItemInventory = new ItemInventory();
                $ItemInventory->_item_id =  $_item_ids[$i];
                $ItemInventory->_item_name =  $item_info->_item ?? '';
                 $ItemInventory->_unit_id =  $item_info->_unit_id ?? '';
                $ItemInventory->_category_id = _item_category($_item_ids[$i]);
                $ItemInventory->_date = change_date_format($request->_date);
                $ItemInventory->_time = date('H:i:s');
                $ItemInventory->_transection = "Sales Return";
                $ItemInventory->_transection_ref = $_master_id;
                $ItemInventory->_transection_detail_ref_id = $_sales_details_id;
                $ItemInventory->_qty = ($_qtys[$i]);
                $ItemInventory->_rate = $_sales_rates[$i];
                $ItemInventory->_cost_rate = $_rates[$i];
                $ItemInventory->_cost_value = ($_qtys[$i]*$_rates[$i]);
                $ItemInventory->_value = $_values[$i] ?? 0;

                $ItemInventory->_manufacture_date = $_manufacture_dates[$i];
                $ItemInventory->_expire_date = $_expire_dates[$i];
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

        $SalesReturnFormSetting = SalesReturnFormSetting::first();
        $_default_inventory = $SalesReturnFormSetting->_default_inventory;
        $_default_sales = $SalesReturnFormSetting->_default_sales;
        $_default_discount = $SalesReturnFormSetting->_default_discount;
        $_default_vat_account = $SalesReturnFormSetting->_default_vat_account;
        $_default_cost_of_solds = $SalesReturnFormSetting->_default_cost_of_solds;

        $_ref_master_id=$_master_id;
        $_ref_detail_id=$_master_id;
        $_short_narration='N/A';
        $_narration = $request->_note;
        $_reference= $request->_referance;
        $_transaction= 'Sales Return';
        $_date = change_date_format($request->_date);
        $_table_name = $request->_form_name;
        $_branch_id = $request->_branch_id;
        $_cost_center =  1;
        $_name =$users->name;
        
        if($__sub_total > 0){

            //#################
            // Sales Return  Dr.
            //     Account Receiveable  Cr
            //#################

            //Account Receiveable  Cr
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_sales),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,0,$__sub_total,$_branch_id,$_cost_center,$_name,1);
           //Sales Return  Dr.
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_sales,$__sub_total,0,$_branch_id,$_cost_center,$_name,2);

            //#################
            // Cost of Goods Sold Dr.
            //      Inventory  Cr
            //#################

            //Inventory  Cr
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_inventory),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_cost_of_solds,0,$_total_cost_value,$_branch_id,$_cost_center,$_name,3);
            
            //Cost of Goods Sold Dr.
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_cost_of_solds),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_inventory,$_total_cost_value,0,$_branch_id,$_cost_center,$_name,4);
        }

        if($__total_discount > 0){
             //#################
            // Sales Discount Dr.
            //      Account Receivable  Cr
            //#################
            // Account Receivable  Cr 
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_discount,0,$__total_discount,$_branch_id,$_cost_center,$_name,5);
            //  Default Discount  Dr
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_discount),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,$__total_discount,0,$_branch_id,$_cost_center,$_name,6);
             
        
        }
         $__total_vat = (float) $request->_total_vat ?? 0;
        if($__total_vat > 0){
             //#################
            // Account Receivable Dr.
            //      Vat  Cr
            //#################
            // Account Receivable
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_vat_account),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,0,$request->_total_vat,$_branch_id,$_cost_center,$_name,7);
            // Default Vat Account 
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_vat_account,$request->_total_vat,0,$_branch_id,$_cost_center,$_name,8);
        
        }

       

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

                        $SalesReturnAccount = new SalesReturnAccount();
                        $SalesReturnAccount->_no = $_master_id;
                        $SalesReturnAccount->_account_type_id = $_account_type_id;
                        $SalesReturnAccount->_account_group_id = $_account_group_id;
                        $SalesReturnAccount->_ledger_id = $ledger;
                        $SalesReturnAccount->_cost_center = $_cost_center[$i] ?? 0;
                        $SalesReturnAccount->_branch_id = $_branch_id_detail[$i] ?? 0;
                        $SalesReturnAccount->_short_narr = $_short_narr[$i] ?? 'N/A';
                        $SalesReturnAccount->_dr_amount = $_dr_amount[$i];
                        $SalesReturnAccount->_cr_amount = $_cr_amount[$i];
                        $SalesReturnAccount->_status = 1;
                        $SalesReturnAccount->_created_by = $users->id."-".$users->name;
                        $SalesReturnAccount->save();

                        $_sales_account_id = $SalesReturnAccount->id;

                        //Reporting Account Table Data Insert
                        $_ref_master_id=$_master_id;
                        $_ref_detail_id=$_sales_account_id;
                        $_short_narration=$_short_narr[$i] ?? 'N/A';
                        $_narration = $request->_note;
                        $_reference= $request->_referance;
                        $_transaction= 'Sales Return';
                        $_date = change_date_format($request->_date);
                        $_table_name ='sales_return_accounts';
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

           
$_l_balance = _l_balance_update($request->_main_ledger_id);
             \DB::table('sales_returns')
             ->where('id',$_master_id)
             ->update(['_p_balance'=>$_p_balance,'_l_balance'=>$_l_balance]);

            DB::commit();
            return redirect()->back()
                ->with('success','Information save successfully')
                ->with('_master_id',$_master_id)
                ->with('_print_value',$_print_value)
                ->with('_sales_man_id',$_sales_man_id)
                ->with('sales_man_name_leder',$sales_man_name_leder)
                ->with('_delivery_man_id',$_delivery_man_id)
                ->with('delivery_man_name_leder',$delivery_man_name_leder);
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->with('danger','There is Something Wrong !');
         }

       
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\SalesReturn  $salesReturn
     * @return \Illuminate\Http\Response
     */
    public function show(SalesReturn $salesReturn)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\SalesReturn  $salesReturn
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
        $form_settings = SalesReturnFormSetting::first();
        $inv_accounts = [];
        $p_accounts = [];
        $dis_accounts = [];
        $vat_accounts =[];
        $categories = ItemCategory::orderBy('_name','asc')->get();
        $units = Units::orderBy('_name','asc')->get();
          $data = SalesReturn::with(['_master_branch','_master_details','s_account','_ledger'])->where('_lock',0)->find($id);

         if(!$data){ return redirect()->back()->with('danger','You have no permission to edit or update !'); }
        if(  sizeof($data->_master_details)==0){
                return redirect()->back()->with('danger','No Data Found');
        }
        
       return view('backend.sales-return.edit',compact('account_types','page_name','account_groups','branchs','permited_branch','permited_costcenters','store_houses','form_settings','inv_accounts','p_accounts','dis_accounts','vat_accounts','categories','units','data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\SalesReturn  $salesReturn
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {


  $this->validate($request, [
            '_date' => 'required',
            '_branch_id' => 'required',
            '_main_ledger_id' => 'required',
            '_sales_return_id' => 'required',
            '_form_name' => 'required'
        ]);
 $_sales_id = $request->_sales_return_id;
     
  $_lock_check =  SalesReturn::where('_lock',0)->find($_sales_id);
 if(!$_lock_check){ return redirect()->back()->with('danger','You have no permission to edit or update !'); }     
       
        $_sales_detils_unique_ids = array();
        $_sales_detail_ref_ids =  $request->_sales_detail_ref_id;
        $_p_s__qtys =  $request->_qty;
        foreach ($_sales_detail_ref_ids as $value) {
            array_push($_sales_detils_unique_ids, intval($value));
        }

         $_sales_detils_unique_ids_str = implode(',', $_sales_detils_unique_ids);

        $_previous_sales = \DB::select(" SELECT s1._id as _s_d_id, SUM(s1._qty) AS _qty FROM (
                SELECT t1.id as _id,t1._qty as _qty FROM sales_details AS t1
                WHERE   t1.id IN( ".$_sales_detils_unique_ids_str.")
                UNION ALL
                SELECT t2._sales_detail_ref_id as _id, -SUM(t2._qty) as _qty FROM sales_return_details AS t2
                WHERE  t2._sales_detail_ref_id IN( ".$_sales_detils_unique_ids_str.")
                GROUP BY t2._sales_detail_ref_id
                UNION ALL
                SELECT t2._sales_detail_ref_id as _id, SUM(t2._qty) as _qty FROM sales_return_details AS t2
                WHERE  t2._sales_detail_ref_id IN( ".$_sales_detils_unique_ids_str.") AND t2._no=".$_sales_id."
                GROUP BY t2._sales_detail_ref_id
    ) AS s1 GROUP BY s1._id ");
   
        $_over_qty = array();
        foreach ($_previous_sales as $p_key=>$value) {
            foreach ($_sales_detail_ref_ids as $key=> $_detail_val) {
                if($value->_s_d_id == $_detail_val ){
                    if(floatval($value->_qty) < floatval($_p_s__qtys[$key])){
                     array_push($_over_qty, $value->_s_d_id);
                    }
                    
                }
            }
            
        }
        if(sizeof($_over_qty) > 0){
            return redirect()->back()
                ->with('danger','You Can not return more then Sales Qty !');
        }

         SalesReturnDetail::where('_no', $_sales_id)
            ->update(['_status'=>0]);
        ItemInventory::where('_transection',"Sales Return")
            ->where('_transection_ref',$_sales_id)
            ->update(['_status'=>0]);
        SalesReturnAccount::where('_no',$_sales_id)                               
                ->update(['_status'=>0]);
         Accounts::where('_ref_master_id',$_sales_id)
                        ->where('_table_name',$request->_form_name)
                         ->update(['_status'=>0]); 
         Accounts::where('_ref_master_id',$_sales_id)
                        ->where('_table_name','sales_return_accounts')
                         ->update(['_status'=>0]); 
         $_p_balance = _l_balance_update($request->_main_ledger_id);
          

        $previous_sales_details = SalesReturnDetail::where('_no',$_sales_id)->get();
        foreach ($previous_sales_details as $value) {
                $ProductPriceList = ProductPriceList::where('id',$value->_p_p_l_id)->first();
                $_p_qty = $ProductPriceList->_qty;
                $_status = (($_p_qty - $value->_qty) > 0) ? 1 : 0;
                $ProductPriceList->_qty = ($_p_qty - $value->_qty);
                $ProductPriceList->_status = $_status;
                $ProductPriceList->save();
        }


        
 

         $_sales_man_id = $request->_sales_man_main_id;
         $sales_man_name_leder = $request->_sales_man_main_name;
         $_delivery_man_id = $request->_delivery_man_main_id;
         $delivery_man_name_leder = $request->_delivery_man_main_name;
         $_address_main_ledger = $request->_address_main_ledger;
         $_phone_main_ledger = $request->_phone_main_ledger;
        
         $__sub_total = (float) $request->_sub_total;
         $__total = (float) $request->_total;
         $__discount_input = (float) $request->_discount_input;
         $__total_discount = (float) $request->_total_discount;

       $_print_value = $request->_print ?? 0;
         $users = Auth::user();
        $SalesReturn = SalesReturn::find($_sales_id);
        $SalesReturn->_date = change_date_format($request->_date);
        $SalesReturn->_time = date('H:i:s');
        $SalesReturn->_order_ref_id = $request->_order_ref_id;
        $SalesReturn->_order_number = $request->_order_number ?? '';
        $SalesReturn->_referance = $request->_referance;
        $SalesReturn->_ledger_id = $request->_main_ledger_id;
        $SalesReturn->_phone = $request->_phone;
        $SalesReturn->_address = $request->_address;
      
        $SalesReturn->_created_by = $users->id."-".$users->name;
        $SalesReturn->_user_id = $users->id;
        $SalesReturn->_user_name = $users->name;
        $SalesReturn->_note = $request->_note;
        $SalesReturn->_sub_total = $__sub_total;
        $SalesReturn->_discount_input = $__discount_input;
        $SalesReturn->_total_discount = $__total_discount;
        $SalesReturn->_total_vat = $request->_total_vat;
        $SalesReturn->_total =  $__total;
        $SalesReturn->_branch_id = $request->_branch_id;
        $SalesReturn->_delivery_man_id = $_delivery_man_id ?? 0;
        $SalesReturn->_sales_man_id =  $_sales_man_id ?? 0;
        $SalesReturn->_sales_type = $request->_sales_type ?? 'sales_return';
        $SalesReturn->_status = 1;
        $SalesReturn->save();
        $_master_id = $SalesReturn->id;

                                           

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
        $_p_p_l_ids = $request->_p_p_l_id;
        $_sales_ref_ids = $request->_sales_ref_id;
        $_sales_detail_ref_ids = $request->_sales_detail_ref_id;
        $_discounts = $request->_discount;
        $_discount_amounts = $request->_discount_amount;
        $_sales_return_detail_ids = $request->_sales_return_detail_id;
          $_manufacture_dates = $request->_manufacture_date;
        $_expire_dates = $request->_expire_date;

                

                
     
        $_total_cost_value=0;

        if(sizeof($_sales_return_detail_ids) > 0){
            for ($i = 0; $i <sizeof($_sales_return_detail_ids) ; $i++) {
                $_total_cost_value += ($_rates[$i]*$_qtys[$i]);

                if($_sales_return_detail_ids[$i] ==0){
                    $SalesReturnDetail = new SalesReturnDetail();
                }else{
                    $SalesReturnDetail = SalesReturnDetail::find($_sales_return_detail_ids[$i]);
                }
                $SalesReturnDetail->_item_id = $_item_ids[$i];
                $SalesReturnDetail->_p_p_l_id = $_p_p_l_ids[$i];
                $SalesReturnDetail->_sales_ref_id = $_sales_ref_ids[$i];
                $SalesReturnDetail->_sales_detail_ref_id = $_sales_detail_ref_ids[$i];
                $SalesReturnDetail->_qty = $_qtys[$i];
                $SalesReturnDetail->_barcode = $_barcodes[$i];
                $SalesReturnDetail->_rate = $_rates[$i];
                $SalesReturnDetail->_sales_rate = $_sales_rates[$i];
                $SalesReturnDetail->_discount = $_discounts[$i] ?? 0;
                $SalesReturnDetail->_discount_amount = $_discount_amounts[$i] ?? 0;
                $SalesReturnDetail->_vat = $_vats[$i] ?? 0;
                $SalesReturnDetail->_vat_amount = $_vat_amounts[$i] ?? 0;
                $SalesReturnDetail->_value = $_values[$i] ?? 0;
                $SalesReturnDetail->_manufacture_date = $_manufacture_dates[$i];
                $SalesReturnDetail->_expire_date = $_expire_dates[$i];
                $SalesReturnDetail->_store_id = $_store_ids[$i] ?? 1;
                $SalesReturnDetail->_cost_center_id = $_main_cost_center[$i] ?? 1;
                $SalesReturnDetail->_store_salves_id = $_store_salves_ids[$i] ?? '';
                $SalesReturnDetail->_branch_id = $_main_branch_id_detail[$i] ?? 1;
                $SalesReturnDetail->_no = $_master_id;
                $SalesReturnDetail->_status = 1;
                $SalesReturnDetail->_created_by = $users->id."-".$users->name;
                $SalesReturnDetail->save();
                $_sales_details_id = $SalesReturnDetail->id;

                $item_info = Inventory::where('id',$_item_ids[$i])->first();

                $ProductPriceList = ProductPriceList::find($_p_p_l_ids[$i]);
                $_p_qty = $ProductPriceList->_qty;
                $_status = (($_p_qty + $_qtys[$i]) > 0) ? 1 : 0;
                $ProductPriceList->_qty = ($_p_qty + $_qtys[$i]);
                $ProductPriceList->_status = $_status;
                $ProductPriceList->save();

                $ItemInventory = ItemInventory::where('_transection',"Sales Return")
                                    ->where('_transection_ref',$_sales_id)
                                    ->where('_transection_detail_ref_id',$_sales_details_id)
                                    ->first();
                if(empty($ItemInventory)){
                    $ItemInventory = new ItemInventory();
                    $ItemInventory->_created_by = $users->id."-".$users->name;
                } 
                $ItemInventory->_item_id =  $_item_ids[$i];
                $ItemInventory->_category_id = _item_category($_item_ids[$i]);
                $ItemInventory->_item_name =  $item_info->_item ?? '';
                 $ItemInventory->_unit_id =  $item_info->_unit_id ?? '';
                $ItemInventory->_date = change_date_format($request->_date);
                $ItemInventory->_time = date('H:i:s');
                $ItemInventory->_transection = "Sales Return";
                $ItemInventory->_transection_ref = $_master_id;
                $ItemInventory->_transection_detail_ref_id = $_sales_details_id;
                $ItemInventory->_qty = ($_qtys[$i]);
                $ItemInventory->_rate = $_sales_rates[$i];
                $ItemInventory->_cost_rate = $_rates[$i];
                $ItemInventory->_cost_value = ($_qtys[$i]*$_rates[$i]);
                $ItemInventory->_value = $_values[$i] ?? 0;
                $ItemInventory->_manufacture_date = $_manufacture_dates[$i];
                $ItemInventory->_expire_date = $_expire_dates[$i];
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

        $SalesReturnFormSetting = SalesReturnFormSetting::first();
        $_default_inventory = $SalesReturnFormSetting->_default_inventory;
        $_default_sales = $SalesReturnFormSetting->_default_sales;
        $_default_discount = $SalesReturnFormSetting->_default_discount;
        $_default_vat_account = $SalesReturnFormSetting->_default_vat_account;
        $_default_cost_of_solds = $SalesReturnFormSetting->_default_cost_of_solds;

        $_ref_master_id=$_master_id;
        $_ref_detail_id=$_master_id;
        $_short_narration='N/A';
        $_narration = $request->_note;
        $_reference= $request->_referance;
        $_transaction= 'Sales Return';
        $_date = change_date_format($request->_date);
        $_table_name = $request->_form_name;
        $_branch_id = $request->_branch_id;
        $_cost_center =  1;
        $_name =$users->name;
        
         if($__sub_total > 0){

            //#################
            // Sales Return  Dr.
            //     Account Receiveable  Cr
            //#################

            //Account Receiveable  Cr
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_sales),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,0,$__sub_total,$_branch_id,$_cost_center,$_name,1);
           //Sales Return  Dr.
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_sales,$__sub_total,0,$_branch_id,$_cost_center,$_name,2);

            //#################
            // Cost of Goods Sold Dr.
            //      Inventory  Cr
            //#################

            //Inventory  Cr
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_inventory),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_cost_of_solds,0,$_total_cost_value,$_branch_id,$_cost_center,$_name,3);
            
            //Cost of Goods Sold Dr.
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_cost_of_solds),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_inventory,$_total_cost_value,0,$_branch_id,$_cost_center,$_name,4);
        }

        if($__total_discount > 0){
             //#################
            // Sales Discount Dr.
            //      Account Receivable  Cr
            //#################
            // Account Receivable  Cr 
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_discount,0,$__total_discount,$_branch_id,$_cost_center,$_name,5);
            //  Default Discount  Dr
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_discount),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,$__total_discount,0,$_branch_id,$_cost_center,$_name,6);
             
        
        }
         $__total_vat = (float) $request->_total_vat ?? 0;
        if($__total_vat > 0){
             //#################
            // Account Receivable Dr.
            //      Vat  Cr
            //#################
            // Account Receivable
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($_default_vat_account),$_narration,$_reference,$_transaction,$_date,$_table_name,$request->_main_ledger_id,0,$request->_total_vat,$_branch_id,$_cost_center,$_name,7);
            // Default Vat Account 
            account_data_save($_ref_master_id,$_ref_detail_id,_find_ledger($request->_main_ledger_id),$_narration,$_reference,$_transaction,$_date,$_table_name,$_default_vat_account,$request->_total_vat,0,$_branch_id,$_cost_center,$_name,8);
        
        }

       

        $_ledger_id = (array) $request->_ledger_id;
        $_short_narr = (array) $request->_short_narr;
        $_dr_amount = (array) $request->_dr_amount;
         $_cr_amount = (array) $request->_cr_amount;
        $_branch_id_detail = (array) $request->_branch_id_detail;
        $_cost_center = (array) $request->_cost_center;
        $_sales_account_detail_ids = (array) $request->_sales_account_detail_id;
        if(sizeof($_ledger_id) > 0){
                foreach($_ledger_id as $i=>$ledger) {
                    if($ledger !=""){
                        $_account_type_id =  ledger_to_group_type($ledger)->_account_head_id;
                        $_account_group_id =  ledger_to_group_type($ledger)->_account_group_id;

                        $_total_dr_amount += $_dr_amount[$i] ?? 0;
                        $_total_cr_amount += $_cr_amount[$i] ?? 0;
                       
                         $SalesReturnAccount = SalesReturnAccount::where('id',$_sales_account_detail_ids[$i] ?? 0)
                                                            ->where('_ledger_id',$ledger)
                                                            ->first();
                        if(empty($SalesReturnAccount)){
                             $SalesReturnAccount = new SalesReturnAccount();
                        }
                        $SalesReturnAccount->_no = $_master_id;
                        $SalesReturnAccount->_account_type_id = $_account_type_id;
                        $SalesReturnAccount->_account_group_id = $_account_group_id;
                        $SalesReturnAccount->_ledger_id = $ledger;
                        $SalesReturnAccount->_cost_center = $_cost_center[$i] ?? 0;
                        $SalesReturnAccount->_branch_id = $_branch_id_detail[$i] ?? 0;
                        $SalesReturnAccount->_short_narr = $_short_narr[$i] ?? 'N/A';
                        $SalesReturnAccount->_dr_amount = $_dr_amount[$i];
                        $SalesReturnAccount->_cr_amount = $_cr_amount[$i];
                        $SalesReturnAccount->_status = 1;
                        $SalesReturnAccount->_created_by = $users->id."-".$users->name;
                        $SalesReturnAccount->save();

                        $_sales_account_id = $SalesReturnAccount->id;

                        //Reporting Account Table Data Insert
                        $_ref_master_id=$_master_id;
                        $_ref_detail_id=$_sales_account_id;
                        $_short_narration=$_short_narr[$i] ?? 'N/A';
                        $_narration = $request->_note;
                        $_reference= $request->_referance;
                        $_transaction= 'Sales Return';
                        $_date = change_date_format($request->_date);
                        $_table_name ='sales_return_accounts';
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

         
$_l_balance = _l_balance_update($request->_main_ledger_id);
             \DB::table('sales_returns')
             ->where('id',$_master_id)
             ->update(['_p_balance'=>$_p_balance,'_l_balance'=>$_l_balance]);

            return redirect()->back()
                ->with('success','Information save successfully')
                ->with('_master_id',$_master_id)
                ->with('_print_value',$_print_value)
                ->with('_sales_man_id',$_sales_man_id)
                ->with('sales_man_name_leder',$sales_man_name_leder)
                ->with('_delivery_man_id',$_delivery_man_id)
                ->with('delivery_man_name_leder',$delivery_man_name_leder);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\SalesReturn  $salesReturn
     * @return \Illuminate\Http\Response
     */
    public function destroy(SalesReturn $salesReturn)
    {
         return redirect()->back()->with('danger','You Can not delete this Information');
    }
}
