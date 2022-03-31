<?php

namespace App\Http\Controllers;

use App\Models\Inventory;
use App\Models\ItemCategory;
use App\Models\ItemInventory;
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
        $datas = Inventory::with(['_category']);
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
        $datas = $datas->orderBy($asc_cloumn,$_asc_desc)->paginate($limit);
        $page_name = $this->page_name;

        $categories = ItemCategory::orderBy('_name','asc')->get();
        if($request->has('print')){
            if($request->print =="single"){
                return view('backend.item-information.master_print',compact('datas','page_name','request','limit'));
            }
         }
         
        return view('backend.item-information.index',compact('datas','request','page_name','limit','categories'));

    }

     public function reset(){
        Session::flash('_i_limit');
       return  \Redirect::to('item-information?limit='.default_pagination());
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
       return view('backend.item-information.create',compact('page_name','categories'));
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
            '_status' => 'required'
        ]);
        $data = new Inventory();
        $data->_item = $request->_item;
        $data->_code = $request->_code;
        $data->_barcode = $request->_barcode;
        $data->_category_id = $request->_category_id;
        $data->_discount = $request->_discount ?? 0;
        $data->_vat = $request->_vat ?? 0;
        $data->_pur_rate = $request->_pur_rate ?? 0;
        $data->_sale_rate = $request->_sale_rate ?? 0;
        $data->_manufacture_company = $request->_manufacture_company;
        $data->_status = $request->_status ?? 0;
        $data->_created_by = \Auth::user()->id."-".\Auth::user()->name;
        $data->save();
        return redirect()->back()->with('success','Information save successfully');
                                        
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
         $data= Inventory::with(['_category'])->find($id);
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
       return view('backend.item-information.edit',compact('page_name','categories','data'));
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
            'id' => 'required',
            '_status' => 'required'
        ]);
        $data = Inventory::find($request->id);
        $data->_item = $request->_item;
        $data->_code = $request->_code;
        $data->_barcode = $request->_barcode;
        $data->_category_id = $request->_category_id;
        $data->_discount = $request->_discount ?? 0;
        $data->_vat = $request->_vat ?? 0;
        $data->_pur_rate = $request->_pur_rate ?? 0;
        $data->_sale_rate = $request->_sale_rate ?? 0;
        $data->_manufacture_company = $request->_manufacture_company;
        $data->_status = $request->_status ?? 0;
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
