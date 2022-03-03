<?php

namespace App\Http\Controllers;

use App\Models\AccountGroup;
use App\Models\AccountHead;
use Illuminate\Http\Request;

class AccountGroupController extends Controller
{

    function __construct()
    {
      $this->page_name = "Account Group";
    }
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
   public function index(Request $request)
    {
        $limit = $request->limit ?? 10;
        $datas = AccountGroup::with(['account_type']);
        if($request->has('_name') && $request->_name !=''){
            $datas = $datas->where('_name','like',"%$request->_name%");
        }
        if ($request->has('_account_head_id') && $request->_account_head_id !="") {
            $datas = $datas->where('_account_head_id','=',$request->_account_head_id);
        }

         $datas = $datas->orderBy('id','desc')->paginate($limit);
         $page_name = $this->page_name;
         $account_types = AccountHead::select('id','_name')->orderBy('_name','asc')->get();
        return view('backend.account-group.index',compact('datas','page_name','account_types','request'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
         $page_name = $this->page_name;
         $account_types = AccountHead::select('id','_name')->orderBy('_name','asc')->get();
       return view('backend.account-group.create',compact('account_types','page_name'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = new AccountGroup();
        $data->_name       = $request->_name ?? '';
        $data->_code = $request->_code ?? '';
        $data->_details = $request->_details ?? '';
        $data->_account_head_id  = $request->_account_head_id ?? '';
        $data->_parent_id  = $request->_parent_id ?? 0;
        $data->_status     = $request->_status ?? '';
        $data->save();
        return redirect()->back()->with('success','Information Save successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\AccountGroup  $accountGroup
     * @return \Illuminate\Http\Response
     */
    public function show(AccountGroup $accountGroup)
    {
        $page_name = $this->page_name;
        $data = $accountGroup;
        return view('backend.account-group.show',compact('data','page_name'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\AccountGroup  $accountGroup
     * @return \Illuminate\Http\Response
     */
     public function edit(AccountHead $accountHead,$id)
    {
        $page_name = $this->page_name;
        $data = AccountGroup::with('account_type')->find($id);
         $account_types = AccountHead::select('id','_name')->orderBy('_name','asc')->get();
        return view('backend.account-group.edit',compact('data','page_name','account_types'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\AccountGroup  $accountGroup
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {

        $data = AccountGroup::find($request->id);
        $data->_name       = $request->_name ?? '';
        $data->_code = $request->_code ?? '';
        $data->_details = $request->_details ?? '';
        $data->_account_head_id  = $request->_account_head_id ?? '';
        $data->_parent_id  = $request->_parent_id ?? 0;
        $data->_status     = $request->_status ?? '';
        $data->save();

        return redirect('account-group')->with('success','Information Save successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\AccountGroup  $accountGroup
     * @return \Illuminate\Http\Response
     */
    public function destroy(AccountGroup $accountGroup)
    {
         return "You Can not delete this Information";
    }
}
