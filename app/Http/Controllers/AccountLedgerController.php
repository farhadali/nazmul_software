<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AccountLedger;
use App\Models\AccountGroup;
use App\Models\AccountHead;
use App\Models\Accounts;
use App\Models\Branch;
use Auth;
use Session;

class AccountLedgerController extends Controller
{


    function __construct()
    {
         $this->middleware('permission:account-ledger-list|account-ledger-create|account-ledger-edit|account-ledger-delete', ['only' => ['index','store']]);
         $this->middleware('permission:account-ledger-create', ['only' => ['create','store']]);
         $this->middleware('permission:account-ledger-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:account-ledger-delete', ['only' => ['destroy']]);
         $this->page_name = "Account Ledger";
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
            session()->put('_al_limit', $request->limit);
        }else{
             $limit= \Session::get('_al_limit') ??  default_pagination();
            
        }
        
        $_asc_desc = $request->_asc_desc ?? 'DESC';
        $asc_cloumn =  $request->asc_cloumn ?? 'id';

        $datas = AccountLedger::with(['account_type','account_group']);
        if($request->has('id') && $request->id !=""){
            $ids =  array_map('intval', explode(',', $request->id ));
            $datas = $datas->whereIn('id', $ids); 
        }
        if($request->has('_name') && $request->_name !=''){
            $datas = $datas->where('_name','like',"%$request->_name%");
        }
        if($request->has('_address') && $request->_address !=''){
            $datas = $datas->where('_address','like',"%$request->_address%");
        }
        if($request->has('_code') && $request->_code !=''){
            $datas = $datas->where('_code','like',"%$request->_code%");
        }
        if($request->has('_nid') && $request->_nid !=''){
            $datas = $datas->where('_nid','like',"%$request->_nid%");
        }
        if($request->has('_email') && $request->_email !=''){
            $datas = $datas->where('_email','like',"%$request->_email%");
        }
        if($request->has('_phone') && $request->_phone !=''){
            $datas = $datas->where('_phone','like',"%$request->_phone%");
        }
        if ($request->has('_account_group_id') && $request->_account_group_id !="") {
            $datas = $datas->where('_account_group_id','=',$request->_account_group_id);
        }
        if ($request->has('_account_head_id') && $request->_account_head_id !="") {
            $datas = $datas->where('_account_head_id','=',$request->_account_head_id);
        }
        $datas = $datas->orderBy($asc_cloumn,$_asc_desc)->paginate($limit);

         $page_name = $this->page_name;
         if($request->has('print')){
            if($request->print =="single"){
                return view('backend.account-ledger.master_print',compact('datas','page_name','request','limit'));
            }
         }
         $account_types = AccountHead::select('id','_name')->orderBy('_name','asc')->get();
         $account_groups = [];
         //$account_groups = AccountGroup::select('id','_name')->orderBy('_name','asc')->get();

        return view('backend.account-ledger.index',compact('datas','page_name','account_types','request','account_groups','limit'));
    }


     public function reset(){
        Session::flash('_al_limit');
       return  \Redirect::to('account-ledger?limit='.default_pagination());
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
        $account_groups = AccountGroup::select('id','_name')->orderBy('_name','asc')->get();
        $branchs = Branch::orderBy('_name','asc')->get();
       return view('backend.account-ledger.create',compact('account_types','page_name','account_groups','branchs'));
    }

    public function ledger_search(Request $request){
        //return $request->_text_val;
        $limit = $request->limit ?? 10;
        $_asc_desc = $request->_asc_desc ?? 'ASC';
        $asc_cloumn =  $request->asc_cloumn ?? '_name';
        $text_val = $request->_text_val;
        $datas = AccountLedger::select('id','_name','_code')->where('_status',1);
         if($request->has('_text_val') && $request->_text_val !=''){
            $datas = $datas->where('_name','like',"%$request->_text_val%")
            ->orWhere('id','like',"%$request->_text_val%");
        }
        
        
        
        $datas = $datas->orderBy($asc_cloumn,$_asc_desc)->paginate($limit);
        return json_encode( $datas);
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
            '_account_head_id' => 'required',
            '_account_group_id' => 'required',
            '_branch_id' => 'required',
            '_name' => 'required',
            '_status' => 'required'
        ]);
        $data = new AccountLedger();
        $data->_account_head_id = $request->_account_head_id;
        $data->_account_group_id = $request->_account_group_id;
        $data->_branch_id = $request->_branch_id;
        $data->_name = $request->_name;
        $data->_address = $request->_address;
        $data->_code = $request->_code;
        $data->_nid = $request->_nid;
        $data->_email = $request->_email;
        $data->_phone = $request->_phone;
        $data->_credit_limit = $request->_credit_limit ?? 0;
        $data->_short = $request->_short ?? 5;
        $data->_is_user = $request->_is_user;
        $data->_is_sales_form = $request->_is_sales_form;
        $data->_is_purchase_form = $request->_is_purchase_form;
        $data->_is_all_branch = $request->_is_all_branch;
        $data->_status = $request->_status;
        $data->_created_by = Auth::user()->id."-".Auth::user()->name;
        $data->save();
        return redirect()->back()->with('success','Information save successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\AccountLedger  $accountLedger
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = AccountLedger::with(['account_type','account_group','last_balance'])->find($id);
        $page_name = $this->page_name;
        return view('backend.account-ledger.show',compact('data','page_name'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\AccountLedger  $accountLedger
     * @return \Illuminate\Http\Response
     */
    public function edit(AccountLedger $accountLedger)
    {
        //return $accountLedger;
        $data = $accountLedger;
        $page_name = $this->page_name;
        $account_types = AccountHead::select('id','_name')
                            ->orderBy('_name','asc')
                            ->get();
        $account_groups = AccountGroup::select('id','_name')
                        ->where('_account_head_id',$data->_account_head_id)
                        ->orderBy('_name','asc')
                        ->get();
        $branchs = Branch::orderBy('_name','asc')->get();
        
       return view('backend.account-ledger.edit',compact('account_types','page_name','account_groups','branchs','data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\AccountLedger  $accountLedger
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $this->validate($request, [
            'id' => 'required',
            '_account_head_id' => 'required',
            '_account_group_id' => 'required',
            '_branch_id' => 'required',
            '_name' => 'required',
            '_status' => 'required'
        ]);
        $data = AccountLedger::find($request->id);
        $data->_account_head_id = $request->_account_head_id;
        $data->_account_group_id = $request->_account_group_id;
        $data->_branch_id = $request->_branch_id;
        $data->_name = $request->_name;
        $data->_address = $request->_address;
        $data->_code = $request->_code;
        $data->_nid = $request->_nid;
        $data->_email = $request->_email;
        $data->_phone = $request->_phone;
        $data->_credit_limit = $request->_credit_limit ?? 0;
        $data->_short = $request->_short ?? 5;
        $data->_is_user = $request->_is_user;
        $data->_is_sales_form = $request->_is_sales_form;
        $data->_is_purchase_form = $request->_is_purchase_form;
        $data->_is_all_branch = $request->_is_all_branch;
        $data->_status = $request->_status;
        $data->_updated_by = Auth::user()->id."-".Auth::user()->name;
        $data->save();
        return redirect('account-ledger')->with('success','Information save successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\AccountLedger  $accountLedger
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        
      
          $numOfAccount = Accounts::where('_account_ledger',$id)->count();
        if($numOfAccount ==0){
            AccountLedger::find($id)->delete();
            return redirect('account-ledger')->with('success','Information deleted successfully');
        }else{
             return "You Can not delete this Information";
        }
        
    }



public function type_base_group(Request $request){
        $account_groups = AccountGroup::where('_account_head_id',$request->id)->orderBy('_name','asc')->get();
        return view('backend.account-ledger.type_base_group',compact('account_groups'));
}

public function groupBaseLedger(Request $request){
        
         $data = AccountLedger::whereIn('_account_group_id',$request->_account_group_id)->select('id','_name')->get();
        

       
        return view('backend.account-ledger.group_base_ledger',compact('data'));
}



}
