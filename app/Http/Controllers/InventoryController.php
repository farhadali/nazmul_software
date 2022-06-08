<?php

namespace App\Http\Controllers;

use App\Models\Inventory;
use App\Models\ItemCategory;
use App\Models\ItemInventory;
use App\Models\ProductPriceList;
use App\Models\Units;
use Illuminate\Http\Request;
use Session;

class InventoryController extends Controller
{


    function __construct()
    {
         $this->middleware('permission:item-information-list|item-information-create|item-information-edit|item-information-delete', ['only' => ['index','store']]);
         $this->middleware('permission:item-information-create', ['only' => ['create','store']]);
         $this->middleware('permission:item-information-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:item-information-delete', ['only' => ['destroy']]);
         $this->middleware('permission:item-sales-price-update', ['only' => ['salesPriceUpdate']]);
         $this->page_name = "Item Information";
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
         if($request->has('limit')){
            $limit = $request->limit ??  default_pagination();
            session()->put('_i_limit', $request->limit);
        }else{
             $limit= \Session::get('_i_limit') ??  default_pagination();
            
        }
        
        $_asc_desc = $request->_asc_desc ?? 'DESC';
        $asc_cloumn =  $request->asc_cloumn ?? 'id';
        $datas = Inventory::with(['_category','_units']);
        if($request->has('_item') && $request->_item !=''){
            $datas = $datas->where('_item','like',"%$request->_item%");
        }
        if($request->has('_code') && $request->_code !=''){
            $datas = $datas->where('_code','like',"%$request->_code%");
        }
        if($request->has('_barcode') && $request->_barcode !=''){
            $datas = $datas->where('_barcode','like',"%$request->_barcode%");
        }
        if($request->has('_discount') && $request->_discount !=''){
            $datas = $datas->where('_discount','like',"%$request->_discount%");
        }
        if($request->has('_vat') && $request->_vat !=''){
            $datas = $datas->where('_vat','like',"%$request->_vat%");
        }
        if($request->has('_pur_rate') && $request->_pur_rate !=''){
            $datas = $datas->where('_pur_rate','like',"%$request->_pur_rate%");
        }
        if($request->has('_sale_rate') && $request->_sale_rate !=''){
            $datas = $datas->where('_sale_rate','like',"%$request->_sale_rate%");
        }
        if($request->has('_manufacture_company') && $request->_manufacture_company !=''){
            $datas = $datas->where('_manufacture_company','like',"%$request->_manufacture_company%");
        }
        if($request->has('_status') && $request->_status !=''){
            $datas = $datas->where('_status','=',$request->_status);
        }
        if($request->has('_category_id') && $request->_category_id !=''){
            $datas = $datas->where('_category_id','=',$request->_category_id);
        }
        if($request->has('_reorder') && $request->_reorder !=''){
            $datas = $datas->where('_reorder','=',$request->_reorder);
        }
        if($request->has('_order_qty') && $request->_order_qty !=''){
            $datas = $datas->where('_order_qty','=',$request->_order_qty);
        }


        $datas = $datas->orderBy($asc_cloumn,$_asc_desc)->paginate($limit);
        $page_name = $this->page_name;

        $categories = ItemCategory::orderBy('_name','asc')->get();
        if($request->has('print')){
            if($request->print =="single"){
                return view('backend.item-information.master_print',compact('datas','page_name','request','limit'));
            }
         }
          $units = Units::orderBy('_name','asc')->get();
        return view('backend.item-information.index',compact('datas','request','page_name','limit','categories','units'));

    }

     public function reset(){
        Session::flash('_i_limit');
       return  \Redirect::to('item-information?limit='.default_pagination());
    }

     public function lotReset(){
        Session::flash('_i_limit');
       return  \Redirect::to('lot-item-information?limit='.default_pagination());
    }


    public function lotItemInformation(Request $request){
        if($request->has('limit')){
            $limit = $request->limit ??  default_pagination();
            session()->put('_i_limit', $request->limit);
        }else{
             $limit= \Session::get('_i_limit') ??  default_pagination();
            
        }
        
        $_asc_desc = $request->_asc_desc ?? 'DESC';
        $asc_cloumn =  $request->asc_cloumn ?? 'id';
        $datas = ProductPriceList::with(['_units'])->where('_qty','!=',0);
        if($request->has('_item') && $request->_item !=''){
            $datas = $datas->where('_item','like',"%$request->_item%");
        }
        if($request->has('_code') && $request->_code !=''){
            $datas = $datas->where('_code','like',"%$request->_code%");
        }
        if($request->has('_barcode') && $request->_barcode !=''){
            $datas = $datas->where('_barcode','like',"%$request->_barcode%");
        }
        if($request->has('_discount') && $request->_discount !=''){
            $datas = $datas->where('_discount','like',"%$request->_discount%");
        }
        if($request->has('_vat') && $request->_vat !=''){
            $datas = $datas->where('_vat','like',"%$request->_vat%");
        }
        if($request->has('_pur_rate') && $request->_pur_rate !=''){
            $datas = $datas->where('_pur_rate','like',"%$request->_pur_rate%");
        }
        if($request->has('_sale_rate') && $request->_sale_rate !=''){
            $datas = $datas->where('_sale_rate','like',"%$request->_sale_rate%");
        }
        if($request->has('_manufacture_company') && $request->_manufacture_company !=''){
            $datas = $datas->where('_manufacture_company','like',"%$request->_manufacture_company%");
        }
        if($request->has('_status') && $request->_status !=''){
            $datas = $datas->where('_status','=',$request->_status);
        }
        if($request->has('_category_id') && $request->_category_id !=''){
            $datas = $datas->where('_category_id','=',$request->_category_id);
        }
        if($request->has('_unit_id') && $request->_unit_id !=''){
            $datas = $datas->where('_unit_id','=',$request->_unit_id);
        }
        if($request->has('_branch_id') && $request->_branch_id !=''){
            $datas = $datas->where('_branch_id','=',$request->_branch_id);
        }
        if($request->has('_cost_center_id') && $request->_cost_center_id !=''){
            $datas = $datas->where('_cost_center_id','=',$request->_cost_center_id);
        }
        if($request->has('_store_id') && $request->_store_id !=''){
            $datas = $datas->where('_store_id','=',$request->_store_id);
        }
        $datas = $datas->orderBy($asc_cloumn,$_asc_desc)->paginate($limit);
        $page_name = $this->page_name;

        $categories = ItemCategory::orderBy('_name','asc')->get();
        if($request->has('print')){
            if($request->print =="single"){
                return view('backend.item-information.lot_print',compact('datas','page_name','request','limit'));
            }
         }
          $units = Units::orderBy('_name','asc')->get();
         return view('backend.item-information.lot_item',compact('datas','request','page_name','limit','categories','units'));
    }


    public function itemPurchaseSearch(Request $request){
        $limit = $request->limit ?? default_pagination();
        $_asc_desc = $request->_asc_desc ?? 'ASC';
        $asc_cloumn =  $request->asc_cloumn ?? '_item';
        $text_val = $request->_text_val;
        $datas = Inventory::select('id','_item as _name','_code','_unit_id','_barcode','_discount','_vat','_pur_rate','_sale_rate','_manufacture_company')
            ->where('_status',1);
         if($request->has('_text_val') && $request->_text_val !=''){
            $datas = $datas->where('_item','like',"%$request->_text_val%")
            ->orWhere('id','like',"%$request->_text_val%");
        }
        
        
        
        $datas = $datas->orderBy($asc_cloumn,$_asc_desc)->paginate($limit);
        return json_encode( $datas);
    }


    public function salesPriceEdit($id){
        $data = ProductPriceList::find($id);

         $page_name = " Lot Wise Price Update -".$data->_item ?? '';
         
        $categories = ItemCategory::orderBy('_name','asc')->get();
         $units = Units::orderBy('_name','asc')->get();
       return view('backend.item-information.lot_edit',compact('page_name','categories','data','units'));
    }

    public function salesPriceUpdate(Request $request){

        

        $this->validate($request, [
            'id' => 'required',
            '_item' => 'required',
            '_unit_id' => 'required',
            '_sales_rate' => 'required',
            '_status' => 'required'
        ]);
        $data = ProductPriceList::find($request->id);
        $data->_item = $request->_item;
        $data->_unit_id = $request->_unit_id;
        $data->_barcode = $request->_barcode ?? '';
        $data->_p_discount_input = $request->_p_discount_input ?? 0;
        $data->_p_vat = $request->_p_vat ?? 0;
        $data->_sales_rate = $request->_sales_rate ?? 0;
        $data->_status = $request->_status ?? 0;
        $data->save();
        return redirect()->back()->with('success','Information save successfully');
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function create()
    {
        $page_name = $this->page_name;
        $categories = ItemCategory::orderBy('_name','asc')->get();
        $units = Units::orderBy('_name','asc')->get();
       return view('backend.item-information.create',compact('page_name','categories','units'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         $this->validate($request, [
            '_category_id' => 'required',
            '_item' => 'required',
            '_unit_id' => 'required',
            '_status' => 'required'
        ]);
        $data = new Inventory();
        $data->_item = $request->_item;
        $data->_code = $request->_code;
        $data->_unit_id = $request->_unit_id;
        $data->_barcode = $request->_barcode;
        $data->_category_id = $request->_category_id;
        $data->_discount = $request->_discount ?? 0;
        $data->_vat = $request->_vat ?? 0;
        $data->_pur_rate = $request->_pur_rate ?? 0;
        $data->_sale_rate = $request->_sale_rate ?? 0;
        $data->_manufacture_company = $request->_manufacture_company;
        $data->_status = $request->_status ?? 0;
        $data->_reorder = $request->_reorder ?? 0;
        $data->_order_qty = $request->_order_qty ?? 0;
        $data->_created_by = \Auth::user()->id."-".\Auth::user()->name;
        $data->save();
        return redirect()->back()->with('success','Information save successfully');
        
                                
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function ajaxItemSave(Request $request)
    {
         
        $data = new Inventory();
        $data->_item = $request->_item_item;
        $data->_code = $request->_item_code;
        $data->_unit_id = $request->_item_unit_id;
        $data->_barcode = $request->_item_barcode;
        $data->_category_id = $request->_category_id;
        $data->_discount = $request->_item_discount ?? 0;
        $data->_vat = $request->_item_vat ?? 0;
        $data->_pur_rate = $request->_item_pur_rate ?? 0;
        $data->_sale_rate = $request->_item_sale_rate ?? 0;
        $data->_manufacture_company = $request->_item_manufacture_company;
        $data->_status = $request->_item_status ?? 0;
        $data->_created_by = \Auth::user()->id."-".\Auth::user()->name;
        $data->save();
        $id = $data->id;
        return json_encode($id);

                                        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Inventory  $inventory
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $page_name = $this->page_name;
         $data= Inventory::with(['_category','_units'])->find($id);
        $categories = ItemCategory::orderBy('_name','asc')->get();
       return view('backend.item-information.show',compact('page_name','categories','data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Inventory  $inventory
     * @return \Illuminate\Http\Response
     */
    public function edit( $id)
    {
         $page_name = $this->page_name;
         $data= Inventory::find($id);
        $categories = ItemCategory::orderBy('_name','asc')->get();
         $units = Units::orderBy('_name','asc')->get();
       return view('backend.item-information.edit',compact('page_name','categories','data','units'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Inventory  $inventory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
       $this->validate($request, [
            '_category_id' => 'required',
            '_item' => 'required',
            '_unit_id' => 'required',
            'id' => 'required',
            '_status' => 'required'
        ]);
        $data = Inventory::find($request->id);
        $data->_item = $request->_item;
        $data->_code = $request->_code;
        $data->_unit_id = $request->_unit_id;
        $data->_barcode = $request->_barcode;
        $data->_category_id = $request->_category_id;
        $data->_discount = $request->_discount ?? 0;
        $data->_vat = $request->_vat ?? 0;
        $data->_pur_rate = $request->_pur_rate ?? 0;
        $data->_sale_rate = $request->_sale_rate ?? 0;
        $data->_manufacture_company = $request->_manufacture_company;
        $data->_status = $request->_status ?? 0;
        $data->_reorder = $request->_reorder ?? 0;
        $data->_order_qty = $request->_order_qty ?? 0;
        $data->_updated_by = \Auth::user()->id."-".\Auth::user()->name;
        $data->save();
        return redirect('item-information')->with('success','Information save successfully');
       
    }


    

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Inventory  $inventory
     * @return \Illuminate\Http\Response
     */
      public function destroy($id)
    {
        
      
        $numOfAccount = ItemInventory::where('_item_id',$id)->count();
        if($numOfAccount ==0){
            Inventory::find($id)->delete();
            return redirect('item-information')->with('success','Information deleted successfully');
        }else{
             return "You Can not delete this Information";
        }
        
    }
}
