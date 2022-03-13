<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AccountGroup;
use App\Models\Accounts;
use App\Models\AccountLedger;
use Illuminate\Support\Facades\DB;
use Session;

class AccountReportController extends Controller
{


	//###################################
	//
	//
	//####################################

    public function ledgerReprt(Request $request){
    	$page_name = "Ledger Report";
    	return view('backend.account-report.ledger',compact('request','page_name'));

    }


    public function ledgerReprtShow(Request $request){

    	 $this->validate($request, [
            '_datex' => 'required',
            '_datey' => 'required',
            '_ledger_id' => 'required'
        ]);
        $_datex =  change_date_format($request->_datex);
        $_datey=  change_date_format($request->_datey);

    	  // $datas = Accounts::where('_account_ledger',$request->_ledger_id);
           
       //      $datas = $datas->get();
           
    	//return $datas;
        $balance = DB::table('accounts')
                    ->where('accounts._account_ledger','=',$request->_ledger_id)
                    ->whereDate('accounts._date','<' ,$_datex)
                    ->select(DB::raw('sum(accounts._dr_amount) as _opening_dr_amount'), DB::raw('sum(accounts._cr_amount) as _opening_cr_amount'))
                    ->first();

         $ledger_details = DB::table('accounts')
        ->where('accounts._account_ledger','=',$request->_ledger_id)
       ->whereDate('accounts._date', '>=', $_datex)
        ->whereDate('accounts._date', '<=', $_datey)
        ->get();
                  
         $ledger_info = AccountLedger::with(['account_type','account_group','_entry_branch'])->find($request->_ledger_id);
    	$page_name = "Ledger Report";
    	return view('backend.account-report.ledger_show',compact('request','page_name','balance','ledger_details','ledger_info'));

    }


    public function groupLedger(Request $request){

        $previous_filter= Session::get('groupBaseLedgerReportFilter');
        $page_name = "Group Ledger Statement";
        $account_groups = AccountGroup::select('id','_name')
                                        ->where('_show_filter',1)
                                        ->orderBy('_name','ASC')
                                        ->get();
        $datas=[];


         
        return view('backend.account-report.group_ledger',compact('request','page_name','account_groups','previous_filter','datas'));
    }


    public function groupBaseLedgerReport(Request $request){

        session()->put('groupBaseLedgerReportFilter', $request->all());
        Session::get('groupBaseLedgerReportFilter');
       // $previous_filter= Session::get('groupBaseLedgerReportFilter');
        $page_name = "Group Ledger Statement";

        $datas=[];
         $_datex =  change_date_format($request->_datex);
        $_datey=  change_date_format($request->_datey);

        $group_ids = array();
        $_account_groups = $request->_account_group_id ?? [];
        if(sizeof($_account_groups) > 0){
            foreach ($_account_groups as $value) {
                array_push($group_ids, (int) $value);
            }
        }

        $ledger_ids = array();
        $_account_ledgers = (array) $request->_account_ledger_id ?? [];
        if(sizeof($_account_ledgers) > 0){
            foreach ($_account_ledgers as $value) {
                array_push($ledger_ids, (int) $value);
            }
            $basic_information = AccountLedger::with(['account_group'])
                    ->select('_account_group_id','id as _ledger_id','_name')
                         ->whereIn('id',$_account_ledgers)->get();
        }else{
            $basic_information = AccountLedger::with(['account_group'])->select('_account_group_id','id as _ledger_id','_name')
            ->whereIn('_account_group_id',$group_ids)->get();
            foreach ($basic_information as $value) {
                array_push($ledger_ids, (int) $value->_ledger_id);
            }
        }

      $ledger_id_rows = implode(',', $ledger_ids);
     
     $string_query = " SELECT t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id, t4._name as _branch_name, null as _id, null as _date, null as _short_narration, 'Opening Balance' as _narration, SUM(t1._dr_amount) AS _dr_amount, SUM(t1._cr_amount)  AS _cr_amount, SUM(t1._dr_amount-t1._cr_amount) AS _balance  
            FROM accounts as t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
               WHERE t1._date < '".$_datex."' AND t1._account_ledger IN(".$ledger_id_rows.")  GROUP BY t1._account_ledger
      UNION ALL
            SELECT t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id, t4._name as _branch_name, t1._ref_master_id as _id, t1._date as _date, t1._short_narration as _short_narration, t1._narration as _narration, t1._dr_amount AS _dr_amount, t1._cr_amount  AS _cr_amount, 0 AS _balance 
            FROM accounts AS t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
              WHERE t1._date  >= '".$_datex."'  AND t1._date <= '".$_datey."' AND t1._account_ledger IN(".$ledger_id_rows.")   ";

       $datas = DB::select($string_query);
       $group_array_values = array();
       foreach ($datas as $value) {
           $group_array_values[$value->_group_name][$value->_l_name][]=$value;
       }

        //return $group_array_values;
        return view('backend.account-report.group_ledger_report',compact('request','page_name','group_array_values','basic_information','_datex','_datey'));
    }


    public function groupBaseLedgerFilterReset(){
        Session::flash('groupBaseLedgerReportFilter');

        return redirect()->back();
    }














}