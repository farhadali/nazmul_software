<?php

namespace App\Http\Controllers;

use App\Models\CostCenter;
use App\Models\Branch;
use Illuminate\Http\Request;
use Auth;

class CostCenterController extends Controller
{


      function __construct()
    {
         $this->middleware('permission:cost-center-list|cost-center-create|cost-center-edit|cost-center-delete', ['only' => ['index','store']]);
         $this->middleware('permission:cost-center-create', ['only' => ['create','store']]);
         $this->middleware('permission:cost-center-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:cost-center-delete', ['only' => ['destroy']]);
         $this->page_name = "Cost Center";
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
   public function index(Request $request)
    {
        $limit = $request->limit ?? 10;
        $datas = CostCenter::with(['_branch']);
        if($request->has('_name') && $request->_name !=''){
            $datas = $datas->where('_name','like',"%$request->_name%");
        }
        if($request->has('_code') && $request->_code !=''){
            $datas = $datas->where('_code','like',"%$request->_code%");
        }
        if($request->has('_branch_id') && $request->_branch_id !=''){
            $datas = $datas->where('_branch_id','like',"%$request->_branch_id%");
        }

         $datas = $datas->orderBy('id','desc')->paginate($limit);
         $page_name = $this->page_name;
         $branchs = Branch::orderBy('_name','asc')->get();
        return view('backend.cost-center.index',compact('datas','request','page_name','branchs'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       $page_name = $this->page_name;
       $branchs = Branch::orderBy('_name','asc')->get();
        return view('backend.cost-center.create',compact('page_name','branchs'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
                '_name' => 'required|max:255',
                '_branch_id' => 'required',
        ]);

         $data = new CostCenter();
        $data->_name       = $request->_name ?? '';
        $data->_branch_id = $request->_branch_id ?? '';
        $data->_code       = $request->_code ?? '';
        //$data->_created_by     = Auth::user()->id."-".Auth::user()->name;
        $data->save();

        return redirect()->back()->with('success','Information Save successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CostCenter  $costCenter
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $page_name = $this->page_name;
        $data = CostCenter::with(['_branch'])->find($id);
        return view('backend.cost-center.show',compact('data','page_name'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\CostCenter  $costCenter
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $page_name = $this->page_name;
        $data = CostCenter::find($id);
         $branchs = Branch::orderBy('_name','asc')->get();
        return view('backend.cost-center.edit',compact('data','page_name','branchs'));    
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CostCenter  $costCenter
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $request->validate([
                '_name' => 'required|max:255',
                '_branch_id' => 'required',
            ]);
        $data = CostCenter::find($request->id);
        $data->_name       = $request->_name ?? '';
        $data->_branch_id = $request->_branch_id ?? '';
        $data->_code       = $request->_code ?? '';
        $data->save();

        return redirect('cost-center')->with('success','Information Save successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CostCenter  $costCenter
     * @return \Illuminate\Http\Response
     */
    public function destroy(CostCenter $costCenter)
    {
        return "You Can not delete this Information";
    }
}
