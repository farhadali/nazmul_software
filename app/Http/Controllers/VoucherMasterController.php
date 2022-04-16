<?php

namespace App\Http\Controllers;

use App\Models\VoucherMaster;
use App\Models\AccountLedger;
use App\Models\AccountGroup;
use App\Models\AccountHead;
use App\Models\Accounts;
use App\Models\Branch;
use App\Models\VoucherType;
use App\Models\VoucherMasterDetail;
use Auth;
use DB;
use Illuminate\Http\Request;
use Session;

class VoucherMasterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {
         $this->middleware('permission:voucher-list|voucher-create|voucher-edit|voucher-delete|voucher-print', ['only' => ['index','store']]);
         $this->middleware('permission:voucher-print', ['only' => ['voucherPrint']]);
         $this->middleware('permission:voucher-create', ['only' => ['create','store']]);
         $this->middleware('permission:voucher-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:voucher-delete', ['only' => ['destroy']]);
         $this->page_name = "Voucher";
    }
     public function index(Request $request)
    {

        $auth_user = Auth::user();
       if($request->has('limit')){
            $limit = $request->limit ??  default_pagination();
            session()->put('_vm_limit', $request->limit);
        }else{
             $limit= \Session::get('_vm_limit') ??  default_pagination();
            
        }
        
        $_asc_desc = $request->_asc_desc ?? 'DESC';
        $asc_cloumn =  $request->asc_cloumn ?? 'id';

        $datas = VoucherMaster::with(['_master_branch','_master_details']);
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
                return view('backend.voucher.master_print',compact('datas','page_name','account_types','request','account_groups','current_date','current_time'));
            }

            if($request->print =="detail"){
                return view('backend.voucher.details_print',compact('datas','page_name','account_types','request','account_groups','current_date','current_time','limit'));
            }
         }

        return view('backend.voucher.index',compact('datas','page_name','account_types','request','account_groups','current_date','limit'));
    }

     public function reset(){
        Session::flash('_vm_limit');
       return  \Redirect::to('voucher?limit='.default_pagination());
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

       return view('backend.voucher.create',compact('account_types','page_name','account_groups','branchs','permited_branch','permited_costcenters','voucher_types'));
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
             '_ledger_id' => 'required|array',
            '_branch_id_detail' => 'required|array',
             '_dr_amount' => 'required|array',
             '_cr_amount' => 'required|array',
            '_voucher_type' => 'required',
            '_branch_id' => 'required',
           
            '_date' => 'required'
        ]);

//return $request->all();
        

       DB::beginTransaction();
       try {

            $_print_value = $request->_print ?? 0;
            $users = Auth::user();
            // Voucher Master Data Insert
            $VoucherMaster = new VoucherMaster();
            $VoucherMaster->_date = change_date_format($request->_date);
            $VoucherMaster->_voucher_type = $request->_voucher_type;
            $VoucherMaster->_branch_id = $request->_branch_id;
            $VoucherMaster->_transection_ref = $request->_transection_ref;
            $VoucherMaster->_amount = $request->_total_dr_amount;
            $VoucherMaster->_note = $request->_note;
            $VoucherMaster->_form_name = $request->_form_name;
            $VoucherMaster->_status =1;
            $VoucherMaster->_created_by = $users->id."-".$users->name;
            $VoucherMaster->_user_id = $users->id;
            $VoucherMaster->_user_name = $users->name;
            $VoucherMaster->_time = date('H:i:s');
            $VoucherMaster->save();
            $master_id = $VoucherMaster->id;
            VoucherMaster::where('id',$master_id )->update(['_code'=>voucher_prefix().$master_id]);

            //Inser Voucher Details Table
            $_ledger_id = $request->_ledger_id;
            $_branch_id_detail = $request->_branch_id_detail;
            $_cost_center = $request->_cost_center;
            $_short_narr = $request->_short_narr;
            $_dr_amount = $request->_dr_amount;
            $_cr_amount = $request->_cr_amount;
            if(sizeof($_ledger_id) > 0){
                for ($i = 0; $i <sizeof($_ledger_id) ; $i++) {
                    $_account_type_id =  ledger_to_group_type($_ledger_id[$i])->_account_head_id;
                    $_account_group_id =  ledger_to_group_type($_ledger_id[$i])->_account_group_id;

                    $VoucherMasterDetail = new VoucherMasterDetail();
                    $VoucherMasterDetail->_no = $master_id;
                    $VoucherMasterDetail->_account_type_id = $_account_type_id;
                    $VoucherMasterDetail->_account_group_id = $_account_group_id;
                    $VoucherMasterDetail->_ledger_id = $_ledger_id[$i];
                    $VoucherMasterDetail->_cost_center = $_cost_center[$i] ?? 0;
                    $VoucherMasterDetail->_branch_id = $_branch_id_detail[$i] ?? 0;
                    $VoucherMasterDetail->_short_narr = $_short_narr[$i] ?? 'N/A';
                    $VoucherMasterDetail->_dr_amount = $_dr_amount[$i] ?? 0;
                    $VoucherMasterDetail->_cr_amount = $_cr_amount[$i] ?? 0;
                    $VoucherMasterDetail->_status = 1;
                    $VoucherMasterDetail->_created_by = $users->id."-".$users->name;
                    $VoucherMasterDetail->save();

                    $master_detail_id = $VoucherMasterDetail->id;

                    //Reporting Account Table Data Insert

                    $Accounts = new Accounts();
                    $Accounts->_ref_master_id = $master_id;
                    $Accounts->_ref_detail_id = $master_detail_id;
                    $Accounts->_short_narration = $_short_narr[$i] ?? 'N/A';
                    $Accounts->_narration = $request->_note;
                    $Accounts->_reference = $request->_transection_ref;
                    $Accounts->_transaction = 'Account';
                    $Accounts->_date = change_date_format($request->_date);
                    $Accounts->_table_name = $request->_form_name;
                    $Accounts->_account_head = $_account_type_id;
                    $Accounts->_account_group = $_account_group_id;
                    $Accounts->_account_ledger = $_ledger_id[$i];
                    $Accounts->_dr_amount = $_dr_amount[$i] ?? 0;
                    $Accounts->_cr_amount = $_cr_amount[$i] ?? 0;
                    $Accounts->_branch_id = $_branch_id_detail[$i] ?? 0;
                    $Accounts->_cost_center = $_cost_center[$i] ?? 0;
                    $Accounts->_name =$users->name;
                    $Accounts->save();

                    
                }
            }

           

           DB::commit();
            return redirect()->back()->with('success','Information save successfully')->with('_master_id',$master_id)->with('_print_value',$_print_value);
       } catch (\Exception $e) {
           DB::rollback();
           return redirect()->back();
        }


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\VoucherMaster  $voucherMaster
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $users = Auth::user();
        $page_name = $this->page_name;
        $account_types = AccountHead::select('id','_name')->orderBy('_name','asc')->get();
        $account_groups = AccountGroup::select('id','_name')->orderBy('_name','asc')->get();
        $branchs = Branch::orderBy('_name','asc')->get();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        $voucher_types = VoucherType::select('id','_name','_code')->orderBy('_code','asc')->get();
         $data = VoucherMaster::with(['_master_branch','_master_details'])->find($id);

       return view('backend.voucher.show',compact('account_types','page_name','account_groups','branchs','permited_branch','permited_costcenters','voucher_types','data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\VoucherMaster  $voucherMaster
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $users = Auth::user();
        $page_name = $this->page_name;
        $account_types = AccountHead::select('id','_name')->orderBy('_name','asc')->get();
        $account_groups = AccountGroup::select('id','_name')->orderBy('_name','asc')->get();
        $branchs = Branch::orderBy('_name','asc')->get();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        $voucher_types = VoucherType::select('id','_name','_code')->orderBy('_code','asc')->get();
        $data = VoucherMaster::with(['_master_branch','_master_details'])->find($id);

       return view('backend.voucher.edit',compact('account_types','page_name','account_groups','branchs','permited_branch','permited_costcenters','voucher_types','data'));
    }


    public function voucherPrint($id){
        $users = Auth::user();
        $page_name = $this->page_name;
        $account_types = AccountHead::select('id','_name')->orderBy('_name','asc')->get();
        $account_groups = AccountGroup::select('id','_name')->orderBy('_name','asc')->get();
        $branchs = Branch::orderBy('_name','asc')->get();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        $voucher_types = VoucherType::select('id','_name','_code')->orderBy('_code','asc')->get();
        $data = VoucherMaster::with(['_master_branch','_master_details'])->find($id);

       return view('backend.voucher.print',compact('account_types','page_name','account_groups','branchs','permited_branch','permited_costcenters','voucher_types','data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\VoucherMaster  $voucherMaster
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
      

        

        $request->validate([
            '_ledger_id' => 'required|array',
            '_branch_id_detail' => 'required|array',
             '_dr_amount' => 'required|array',
             '_cr_amount' => 'required|array',
            '_voucher_type' => 'required',
            '_branch_id' => 'required',
            '_master_id' => 'required',
            '_note' => 'required',
            '_date' => 'required'
        ]);

//return $request->all();
      //return $request->all();  

       DB::beginTransaction();
       try {
            $_master_id = $request->_master_id;
            $users = Auth::user();
            // Voucher Master Data Insert
            $VoucherMaster = VoucherMaster::find($_master_id);
            $VoucherMaster->_date = change_date_format($request->_date);
            $VoucherMaster->_voucher_type = $request->_voucher_type;
            $VoucherMaster->_branch_id = $request->_branch_id;
            $VoucherMaster->_transection_ref = $request->_transection_ref;
            $VoucherMaster->_amount = $request->_total_dr_amount;
            $VoucherMaster->_note = $request->_note;
            $VoucherMaster->_form_name = $request->_form_name;
            $VoucherMaster->_status =1;
            $VoucherMaster->_updated_by = $users->id."-".$users->name;
            $VoucherMaster->_user_id = $users->id;
            $VoucherMaster->_user_name = $users->name;
            $VoucherMaster->_time = date('H:i:s');
            $VoucherMaster->save();
            $master_id = $VoucherMaster->id;
           

            //Inser Voucher Details Table
            $_ledger_id = $request->_ledger_id;
            $_branch_id_detail = $request->_branch_id_detail;
            $_cost_center = $request->_cost_center;
            $_short_narr = $request->_short_narr;
            $_dr_amount = $request->_dr_amount;
            $_cr_amount = $request->_cr_amount;
            $_detail_ids = $request->_detail_id;

            $_detail_ids_array = [];
            foreach ($_detail_ids as $_detail_) {
                array_push($_detail_ids_array, $_detail_);
            }

            //Remove from database which ledger not available
            $previous_voucher_details_ids = [];
           
            $previous_voucher_details = VoucherMasterDetail::where('_no',$master_id)->select('id')->get();
            foreach ($previous_voucher_details as $p_value) {
                array_push($previous_voucher_details_ids, $p_value->id);
            }
           
           

            $remove_ids =  array_diff( $previous_voucher_details_ids, $_detail_ids_array);
            
            foreach ($remove_ids as $remove_ids_val) {
                 VoucherMasterDetail::where('id',$remove_ids_val)->delete();
            }
           

            $previous_accounts_table_ids = [];
            $previous_accounts_table =  Accounts::where('_ref_master_id',$master_id)
                    ->where('_table_name',$request->_form_name)
                    ->select('_ref_master_id','_ref_detail_id')
                    ->get();
            foreach ($previous_accounts_table as $p_a_value) {
                array_push($previous_accounts_table_ids, $p_a_value->_ref_detail_id);
            }
            
            $remove_account_ids = array_diff($previous_accounts_table_ids, $_detail_ids_array);
            if(sizeof($remove_account_ids)> 0 ){
                foreach ($remove_account_ids as $remove_account_ids_val) {
                    Accounts::where('_ref_master_id',$master_id)
                    ->where('_table_name',$request->_form_name)
                    ->where('_ref_detail_id',$remove_account_ids_val)
                    ->delete();
                }
            }

            //End  Remove from database which ledger not available

            if(sizeof($_ledger_id) > 0){
                for ($i = 0; $i <sizeof($_ledger_id) ; $i++) {
                    $_account_type_id =  ledger_to_group_type($_ledger_id[$i])->_account_head_id;
                    $_account_group_id =  ledger_to_group_type($_ledger_id[$i])->_account_group_id;

                    if($_detail_ids[$i] ==0){
                        $VoucherMasterDetail = new VoucherMasterDetail();
                    }else{
                       $VoucherMasterDetail = VoucherMasterDetail::find($_detail_ids[$i]); 
                    }
                    
                    $VoucherMasterDetail->_no = $master_id;
                    $VoucherMasterDetail->_account_type_id = $_account_type_id;
                    $VoucherMasterDetail->_account_group_id = $_account_group_id;
                    $VoucherMasterDetail->_ledger_id = $_ledger_id[$i];
                    $VoucherMasterDetail->_cost_center = $_cost_center[$i] ?? 0;
                    $VoucherMasterDetail->_branch_id = $_branch_id_detail[$i] ?? 0;
                    $VoucherMasterDetail->_short_narr = $_short_narr[$i] ?? 'N/A';
                    $VoucherMasterDetail->_dr_amount = $_dr_amount[$i] ?? 0;
                    $VoucherMasterDetail->_cr_amount = $_cr_amount[$i] ?? 0;
                    $VoucherMasterDetail->_status = 1;
                    $VoucherMasterDetail->_created_by = $users->id."-".$users->name;
                    $VoucherMasterDetail->save();

                    $master_detail_id = $VoucherMasterDetail->id;

                    //Reporting Account Table Data Insert
                    $Accounts = Accounts::where('_ref_master_id',$master_id)
                                        ->where('_table_name',$request->_form_name)
                                        ->where('_ref_detail_id',$master_detail_id)
                                        ->first();

                    if(empty($Accounts)){
                        $Accounts = new Accounts();
                        $Accounts->_ref_master_id = $master_id;
                        $Accounts->_ref_detail_id = $master_detail_id;
                        $Accounts->_short_narration = $_short_narr[$i] ?? 'N/A';
                        $Accounts->_narration = $request->_note;
                        $Accounts->_reference = $request->_transection_ref;
                        $Accounts->_transaction = 'Account';
                        $Accounts->_date = change_date_format($request->_date);
                        $Accounts->_table_name = $request->_form_name;
                        $Accounts->_account_head = $_account_type_id;
                        $Accounts->_account_group = $_account_group_id;
                        $Accounts->_account_ledger = $_ledger_id[$i];
                        $Accounts->_dr_amount = $_dr_amount[$i] ?? 0;
                        $Accounts->_cr_amount = $_cr_amount[$i] ?? 0;
                        $Accounts->_branch_id = $_branch_id_detail[$i] ?? 0;
                        $Accounts->_cost_center = $_cost_center[$i] ?? 0;
                        $Accounts->_name =$users->name;
                        $Accounts->save();
                        
                    }else{
                        Accounts::where('_ref_master_id',$master_id)
                                        ->where('_table_name',$request->_form_name)
                                        ->where('_ref_detail_id',$master_detail_id)
                                        ->update( [ 
                                            '_ref_master_id'=>$master_id,
                                            '_ref_detail_id'=>$master_detail_id,
                                            '_short_narration'=>$_short_narr[$i] ?? 'N/A',
                                            '_narration'=>$request->_note,
                                            '_reference'=>$request->_transection_ref,
                                            '_transaction'=>'Account',
                                            '_date'=>change_date_format($request->_date),
                                            '_table_name'=>$request->_form_name,
                                            '_account_head'=>$_account_type_id,
                                            '_account_group'=>$_account_group_id,
                                            '_account_ledger'=>$_ledger_id[$i],
                                            '_dr_amount'=>$_dr_amount[$i] ?? 0,
                                            '_cr_amount'=>$_cr_amount[$i] ?? 0,
                                            '_branch_id'=>$_branch_id_detail[$i] ?? 0,
                                            '_cost_center'=>$_cost_center[$i] ?? 0,
                                            '_name'=>$users->name ?? 0

                                              ] );
                       //return $Accounts ; 
                    }
                    
                    
                    

                    
                }
            }

           

           DB::commit();
            return redirect()->back()->with('success','Information save successfully');
       } catch (\Exception $e) {
           DB::rollback();
            return redirect()->back()->with('error','Something Went Wrong');;
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\VoucherMaster  $voucherMaster
     * @return \Illuminate\Http\Response
     */
    public function destroy(VoucherMaster $voucherMaster)
    {
        //
    }
}
