<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AccountGroup;
use App\Models\Accounts;
use App\Models\AccountLedger;
use Illuminate\Support\Facades\DB;
use Session;
use Auth;

class AccountReportController extends Controller
{


	//###################################
	//
	//
	//####################################

    public function ledgerReprt(Request $request){
         $previous_filter= Session::get('ledgerReprtFilter');
    	$page_name = "Ledger Report";
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
    	return view('backend.account-report.ledger',compact('request','page_name','permited_branch','permited_costcenters','previous_filter'));

    }


    public function ledgerReprtShow(Request $request){

    	 $this->validate($request, [
            '_datex' => 'required',
            '_datey' => 'required',
            '_ledger_id' => 'required'
        ]);
        $_datex =  change_date_format($request->_datex);
        $_datey=  change_date_format($request->_datey);
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));

        $_branch_ids = array();
        if($request->has('_branch_id')){
            $_branch_ids = $request->_branch_id;
        }else{
           foreach ($permited_branch as $branch) {
                    array_push($_branch_ids, $branch->id);
                } 
        }

        $_cost_center_ids=array();
        if($request->has('_cost_center')){
             $_cost_center_ids = $request->_cost_center;
        }else{
            foreach ($permited_costcenters as $cost_center) {
                    array_push($_cost_center_ids, $cost_center->id);
                }
        }
                


       session()->put('ledgerReprtFilter', $request->all());
        $previous_filter= Session::get('ledgerReprtFilter');

        $balance = DB::table('accounts')
                    ->where('accounts._account_ledger','=',$request->_ledger_id)
                    ->whereDate('accounts._date','<' ,$_datex)
                    ->whereIn('accounts._branch_id' ,$_branch_ids)
                    ->whereIn('accounts._cost_center' ,$_cost_center_ids)
                    ->select(DB::raw('sum(accounts._dr_amount) as _opening_dr_amount'), DB::raw('sum(accounts._cr_amount) as _opening_cr_amount'))
                    ->first();

         $ledger_details = DB::table('accounts')
                        ->where('accounts._account_ledger','=',$request->_ledger_id)
                       ->whereDate('accounts._date', '>=', $_datex)
                        ->whereDate('accounts._date', '<=', $_datey)
                        ->whereIn('accounts._branch_id' ,$_branch_ids)
                        ->whereIn('accounts._cost_center' ,$_cost_center_ids)
                        ->get();
                  
         $ledger_info = AccountLedger::with(['account_type','account_group','_entry_branch'])->find($request->_ledger_id);
    	$page_name = "Ledger Report";
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
    	return view('backend.account-report.ledger_show',compact('request','page_name','balance','ledger_details','ledger_info','previous_filter','permited_branch','permited_costcenters'));

    }


    public function groupLedger(Request $request){

        $previous_filter= Session::get('groupBaseLedgerReportFilter');
        $page_name = "Group Ledger Statement";
        $account_groups = AccountGroup::select('id','_name')
                                        ->where('_show_filter',1)
                                        ->orderBy('_name','ASC')
                                        ->get();
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));


         
        return view('backend.account-report.group_ledger',compact('request','page_name','account_groups','previous_filter','permited_branch','permited_costcenters'));
    }


    public function groupBaseLedgerReport(Request $request){

        session()->put('groupBaseLedgerReportFilter', $request->all());
        $previous_filter= Session::get('groupBaseLedgerReportFilter');
        $page_name = "Group Ledger Statement";
        
       $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
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

        //check branch id is available 
         $_branch_ids = array();
         $_branch_id = $request->_branch_id ?? [];
         if(sizeof($_branch_id) > 0){
            foreach ($_branch_id as $value) {
                array_push($_branch_ids, (int) $value);
            }
        }else{
            //if branch id is not selected then defalut branch id wise filter
            foreach ($permited_branch as $branch) {
                    array_push($_branch_ids, $branch->id);
                }
        }

        //check cost center id is available 
         $_cost_center_ids=array();
         $_cost_center_id = $request->_cost_center ?? [];
          if(sizeof($_cost_center_id) > 0){
            foreach ($_cost_center_id as $value) {
                array_push($_cost_center_ids, (int) $value);
            }
        }else{
             //if cost center id is not selected then defalut cost center id wise filter
           foreach ($permited_costcenters as $cost_center) {
                array_push($_cost_center_ids, $cost_center->id);
            }
        }




      $ledger_id_rows = implode(',', $ledger_ids);
      $_branch_ids_rows = implode(',', $_branch_ids);
      $_cost_center_id_rows = implode(',', $_cost_center_ids);
      
     
     $string_query = " SELECT t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name, null as _id,null as _table_name, null as _date, null as _short_narration, 'Opening Balance' as _narration, 0 AS _dr_amount, 0  AS _cr_amount, SUM(t1._dr_amount-t1._cr_amount) AS _balance  
            FROM accounts as t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
               WHERE t1._date < '".$_datex."' AND t1._account_ledger IN(".$ledger_id_rows.")
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger
      UNION ALL
            SELECT t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name, t1._ref_master_id as _id, t1._table_name AS _table_name, t1._date as _date, t1._short_narration as _short_narration, t1._narration as _narration, t1._dr_amount AS _dr_amount, t1._cr_amount  AS _cr_amount, 0 AS _balance 
            FROM accounts AS t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
              WHERE t1._date  >= '".$_datex."'  AND t1._date <= '".$_datey."' 
              AND t1._account_ledger IN(".$ledger_id_rows.") AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")  ";

       $datas = DB::select($string_query);
       $group_array_values = array();
       foreach ($datas as $value) {
           $group_array_values[$value->_group_name][$value->_l_name][]=$value;
       }


        //return $group_array_values;
        return view('backend.account-report.group_ledger_report',compact('request','page_name','group_array_values','basic_information','_datex','_datey','previous_filter','permited_branch','permited_costcenters'));
    }


    public function groupBaseLedgerFilterReset(){
        Session::flash('groupBaseLedgerReportFilter');

        return redirect()->back();
    }

    public function LedgerReportFilterReset(){
        Session::flash('ledgerReprtFilter');

        return redirect()->back();
    }



    public function trailBalance(Request $request){
        $previous_filter= Session::get('trailBalanceReportFilter');
        $page_name = "Trail Balance";
        $account_groups = AccountGroup::select('id','_name')
                                        ->where('_show_filter',1)
                                        ->orderBy('_name','ASC')
                                        ->get();
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));


         
        return view('backend.account-report.trail-balance',compact('request','page_name','account_groups','previous_filter','permited_branch','permited_costcenters'));
    }


    public function trailBalanceReport(Request $request){

        session()->put('trailBalanceReportFilter', $request->all());
        $previous_filter= Session::get('trailBalanceReportFilter');
        $page_name = "Trail Balance";
       
        $datas=[];
         $_datex =  change_date_format($request->_datex);
        $_datey=  change_date_format($request->_datey);
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));

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

         $_branch_ids = array();
         $_branch_id = $request->_branch_id ?? [];
         if(sizeof($_branch_id) > 0){
            foreach ($_branch_id as $value) {
                array_push($_branch_ids, (int) $value);
            }
        }else{
                foreach ($permited_branch as $branch) {
                    array_push($_branch_ids, $branch->id);
                }
            
        }


         $_cost_center_ids=array();
         $_cost_center_id = $request->_cost_center ?? [];
          if(sizeof($_cost_center_id) > 0){
            foreach ($_cost_center_id as $value) {
                array_push($_cost_center_ids, (int) $value);
            }
        }else{
            foreach ($permited_costcenters as $cost_center) {
                array_push($_cost_center_ids, $cost_center->id);
            }
            
        }

      $ledger_id_rows = implode(',', $ledger_ids);
      $_branch_ids_rows = implode(',', $_branch_ids);
      $_cost_center_id_rows = implode(',', $_cost_center_ids);
      
     
     $string_query = " 
 SELECT t5._account_group,t5._group_name, t5._account_ledger,t5._l_name,t5._branch_id,t5._cost_center, t5._branch_name,  SUM(t5._o_dr_amount)  AS _o_dr_amount, SUM(t5._o_cr_amount)  AS _o_cr_amount ,SUM(t5._c_dr_amount) as _c_dr_amount,SUM(t5._c_cr_amount) as _c_cr_amount FROM (
     SELECT t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name,  SUM(t1._dr_amount)  AS _o_dr_amount, SUM(t1._cr_amount)  AS _o_cr_amount ,0 as _c_dr_amount,0 as _c_cr_amount 
            FROM accounts as t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
               WHERE t1._date < '".$_datex."' AND t1._account_ledger IN(".$ledger_id_rows.")
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger
      UNION ALL
            SELECT t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name,0 as _cr_amount, 0 as _o_cr_amount, SUM(t1._dr_amount) AS _c_dr_amount, SUM(t1._cr_amount)  AS _c_cr_amount
            FROM accounts AS t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
              WHERE t1._date  >= '".$_datex."'  AND t1._date <= '".$_datey."' 
              AND t1._account_ledger IN(".$ledger_id_rows.") AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
              GROUP BY t1._account_ledger
              ) as t5 GROUP BY t5._account_ledger  ";

       $datas = DB::select($string_query);
       $group_array_values = array();
       foreach ($datas as $value) {
           $group_array_values[$value->_group_name][$value->_l_name][]=$value;
       }

     //  return $group_array_values;

       

        //return $group_array_values;
        return view('backend.account-report.trail-balance-report',compact('request','page_name','group_array_values','basic_information','_datex','_datey','previous_filter','permited_branch','permited_costcenters'));
    }

    public function trailBalanceReportFilterReset(){
        Session::flash('trailBalanceReportFilter');

        return redirect()->back();
    }


    public function incomeStatement(Request $request){
        $previous_filter= Session::get('incomeStatementFillter');
        $page_name = "Income Statement";
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
         
        return view('backend.account-report.income-statement',compact('request','page_name','previous_filter','permited_branch','permited_costcenters'));
    }


    public function incomeStatementReport(Request $request){
        $previous_filter= Session::get('incomeStatementFillter');
        $page_name = "Income Statement";
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
         
        return view('backend.account-report.income-statement-report',compact('request','page_name','previous_filter','permited_branch','permited_costcenters'));
    }














}