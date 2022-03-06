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

class VoucherMasterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {
         $this->middleware('permission:voucher-list|voucher-create|voucher-edit|voucher-delete', ['only' => ['index','store']]);
         $this->middleware('permission:voucher-create', ['only' => ['create','store']]);
         $this->middleware('permission:voucher-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:voucher-delete', ['only' => ['destroy']]);
         $this->page_name = "Voucher";
    }
     public function index(Request $request)
    {
        $limit = $request->limit ?? 10;
        $_asc_desc = $request->_asc_desc ?? 'ASC';
        $asc_cloumn =  $request->asc_cloumn ?? '_date';
        $datas = VoucherMaster::orderBy($asc_cloumn,$_asc_desc)->paginate($limit);

         $page_name = $this->page_name;
         $account_types = AccountHead::select('id','_name')->orderBy('_name','asc')->get();
         $account_groups = AccountGroup::select('id','_name')->orderBy('_name','asc')->get();
        return view('backend.voucher.index',compact('datas','page_name','account_types','request','account_groups'));
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
            return redirect()->back()->with('success','Information save successfully');
       } catch (\Exception $e) {
           DB::rollback();
           
        }


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\VoucherMaster  $voucherMaster
     * @return \Illuminate\Http\Response
     */
    public function show(VoucherMaster $voucherMaster)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\VoucherMaster  $voucherMaster
     * @return \Illuminate\Http\Response
     */
    public function edit(VoucherMaster $voucherMaster)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\VoucherMaster  $voucherMaster
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, VoucherMaster $voucherMaster)
    {
        //
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
