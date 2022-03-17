<?php

namespace App\Http\Controllers;

use App\Models\AccountHead;
use Illuminate\Http\Request;

class AccountHeadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

     function __construct()
    {
         $this->middleware('permission:account-type-list|account-type-create|account-type-edit|account-type-delete', ['only' => ['index','store']]);
         $this->middleware('permission:account-type-create', ['only' => ['create','store']]);
         $this->middleware('permission:account-type-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:account-type-delete', ['only' => ['destroy']]);
         $this->page_name = "Account Type";
    }
    

    public function index(Request $request)
    {
        $limit = $request->limit ?? 10;
        $datas = AccountHead::with(['_main_account_head']);
        if($request->has('_name') && $request->_name !=''){
            $datas = $datas->where('_name','like',"%$request->_name%");
        }

         $datas = $datas->orderBy('id','desc')->paginate($limit);
         $page_name = $this->page_name;
        return view('backend.account-type.index',compact('datas','request','page_name'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_name = $this->page_name;
        return view('backend.account-type.create',compact('page_name'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = new AccountHead();
        $data->_name       = $request->_name ?? '';
        $data->_account_id = $request->_account_id ?? '';
        $data->_code       = $request->_code ?? '';
        $data->_status     = $request->_status ?? '';
        $data->save();

        return redirect()->back()->with('success','Information Save successfully');



    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\AccountHead  $accountHead
     * @return \Illuminate\Http\Response
     */
    public function show(AccountHead $accountHead)
    {
        $page_name = $this->page_name;
        $data = $accountHead;
        return view('backend.account-type.show',compact('data','page_name'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\AccountHead  $accountHead
     * @return \Illuminate\Http\Response
     */
    public function edit(AccountHead $accountHead,$id)
    {
        $page_name = $this->page_name;
        $data = AccountHead::find($id);
        return view('backend.account-type.edit',compact('data','page_name'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\AccountHead  $accountHead
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $data = AccountHead::find($request->id);
        $data->_name       = $request->_name ?? '';
        $data->_account_id = $request->_account_id ?? '';
        $data->_code       = $request->_code ?? '';
        $data->_status     = $request->_status ?? '';
        $data->save();

        return redirect('account-type')->with('success','Information Save successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\AccountHead  $accountHead
     * @return \Illuminate\Http\Response
     */
    public function destroy(AccountHead $accountHead)
    {
        return "You Can not delete this Information";
    }
}
