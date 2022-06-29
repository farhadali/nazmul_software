<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AccountGroup;
use App\Models\Accounts;
use App\Models\AccountLedger;
use App\Models\MainAccountHead;
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

  //###################################
  //
  //
  //####################################

    public function chartOfAccount(Request $request){
       
        $page_name = "Chart of Accounts";
         $data = MainAccountHead::with(['_account_type'])->get();
        
      return view('backend.account-report.chart-of-account',compact('request','page_name','data'));

    }


    public function ledgerReprtShow(Request $request){
        //return $request->all();
    	 $this->validate($request, [
            '_datex' => 'required',
            '_datey' => 'required',
            '_ledger_id' => 'required'
        ]);
         $_datex =  change_date_format($request->_datex);
         $_datey=  change_date_format($request->_datey);
     //    $users = Auth::user();
     //    $permited_branch = permited_branch(explode(',',$users->branch_ids));
     //    $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));

       
     //      $request_branchs = $request->_branch_id ?? [];
     //      $request_cost_centers = $request->_cost_center ?? [];

     //      $_branch_ids = filterableBranch($request_branchs,$permited_branch);
     //      $_cost_center_ids = filterableCostCenter($request_cost_centers,$permited_costcenters);

     //      $_branch_ids_rows = implode(',', $_branch_ids);
     //      $_cost_center_id_rows = implode(',', $_cost_center_ids);
                


       session()->put('ledgerReprtFilter', $request->all());
       $previous_filter= Session::get('ledgerReprtFilter');

     
                  
       $ledger_info = AccountLedger::with(['account_type','account_group','_entry_branch'])->find($request->_ledger_id);
    	
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        $datas=[];
         $_datex =  change_date_format($request->_datex);
        $_datey=  change_date_format($request->_datey);

       

        
$page_name = "Ledger Report";
       

      $request_branchs = $request->_branch_id ?? [];
      $request_cost_centers = $request->_cost_center ?? [];

      $_branch_ids = filterableBranch($request_branchs,$permited_branch);
      $_cost_center_ids = filterableCostCenter($request_cost_centers,$permited_costcenters);

      $ledger_id_rows = (int) $request->_ledger_id;
      $_branch_ids_rows = implode(',', $_branch_ids);
      $_cost_center_id_rows = implode(',', $_cost_center_ids);
      
     if($ledger_id_rows){
     $string_query = " 
     SELECT s1._account_group,s1._group_name, s1._account_ledger,s1._l_name,s1._branch_id,s1._cost_center, s1._branch_name, s1._id,s1._table_name, s1._date, s1._short_narration, s1._narration, s1._dr_amount, s1._cr_amount, s1._balance,s1._serial FROM(

     SELECT t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name, null as _id,null as _table_name, null as _date, null as _short_narration, 'Opening Balance' as _narration, 0 AS _dr_amount, 0  AS _cr_amount, SUM(t1._dr_amount-t1._cr_amount) AS _balance ,0 as _serial 
            FROM accounts as t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
               WHERE t1._status=1 AND t1._date < '".$_datex."' AND t1._account_ledger IN(".$ledger_id_rows.")
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger
      UNION ALL
            SELECT t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name, t1._ref_master_id as _id, t1._table_name AS _table_name, t1._date as _date, t1._short_narration as _short_narration, t1._narration as _narration, t1._dr_amount AS _dr_amount, t1._cr_amount  AS _cr_amount, 0 AS _balance ,t1._serial as _serial
            FROM accounts AS t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
              WHERE  t1._status=1 AND t1._date  >= '".$_datex."'  AND t1._date <= '".$_datey."' 
              AND t1._account_ledger IN(".$ledger_id_rows.") AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.") ) as s1 order by s1._date,s1._id,s1._serial ASC  ";

       $datas = DB::select($string_query);
       $group_array_values = array();
       foreach ($datas as $value) {
           $group_array_values[$value->_group_name][$value->_l_name][]=$value;
       }

}else{
   $group_array_values = array();
}
$ledger_details =[];

      //return $group_array_values;
    	return view('backend.account-report.ledger_show',compact('request','page_name','previous_filter','permited_branch','permited_costcenters','group_array_values','_datex','_datey','ledger_id_rows','ledger_info'));

    }

//Cash book filter
    public function cashBook(Request $request){
        $previous_filter= Session::get('filter_cash_book');
        $page_name = "Cash Book";
        $account_ledgers = \DB::select( " SELECT t1.id,t1._account_head_id,t1._account_group_id,t1._name FROM account_ledgers AS t1 WHERE t1._account_group_id=(SELECT _cash_group FROM general_settings ) " );
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        return view('backend.account-report.filter_cash_book',compact('request','page_name','account_ledgers','previous_filter','permited_branch','permited_costcenters'));
    }

    public function cashBookReport(Request $request){
      $this->validate($request, [
            '_datex' => 'required',
            '_datey' => 'required',
            '_account_ledger_id' => 'required',
        ]);

        session()->put('filter_cash_book', $request->all());
        $previous_filter= Session::get('filter_cash_book');
        $page_name = "Cash Book";
         $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        $datas=[];
        $_datex =  change_date_format($request->_datex);
        $_datey=  change_date_format($request->_datey);
        $request_branchs = $request->_branch_id ?? [];
        $request_cost_centers = $request->_cost_center ?? [];

        $_branch_ids = filterableBranch($request_branchs,$permited_branch);
        $_cost_center_ids = filterableCostCenter($request_cost_centers,$permited_costcenters);
        $ledger_ids = $request->_account_ledger_id ?? [];

        $ledger_id_rows = implode(',', $ledger_ids);
        $_branch_ids_rows = implode(',', $_branch_ids);
        $_cost_center_id_rows = implode(',', $_cost_center_ids);
        $opening_query_sting = " SELECT 'A. Opening Cash' as _type,null as _date,  t1._account_ledger AS _account_ledger,t3._name as _l_name,null as _short_narration,null as _reference,null as _table_name, null as _id,SUM(t1._dr_amount-t1._cr_amount) as _dr_amount,0 as _cr_amount,0 as _serial
            FROM accounts as t1
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
               WHERE t1._status=1 AND t1._date < '".$_datex."' AND t1._account_ledger IN(".$ledger_id_rows.")
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger 
UNION ALL
SELECT 'B. Receipt & Payment' as _type,t1._date, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._short_narration as _short_narration,t1._reference as _reference,t1._table_name, t1._ref_master_id as _id,t1._dr_amount as _dr_amount,t1._cr_amount as _cr_amount,t1._serial
            FROM accounts as t1
             INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
              WHERE  t1._status=1 AND t1._date  >= '".$_datex."'  AND t1._date <= '".$_datey."' 
               AND t1._account_ledger IN(".$ledger_id_rows.")
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")

    UNION ALL
    SELECT 'C. Closing Cash' as _type,null as _date,  t1._account_ledger AS _account_ledger,t3._name as _l_name,null as _short_narration,null as _reference,null as _table_name, null as _id,SUM(t1._dr_amount-t1._cr_amount) as _dr_amount,0 as _cr_amount,0 as _serial
            FROM accounts as t1
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
               WHERE t1._status=1 AND t1._date <= '".$_datey."'  AND t1._account_ledger IN(".$ledger_id_rows.")
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger ";

         $_opening_balance =  DB::select($opening_query_sting);
         $_result_group =array();
         foreach ($_opening_balance as $value) {
           $_result_group[$value->_type][]=$value;
         }
        return view('backend.account-report.report_cash_book',compact('request','page_name','previous_filter','permited_branch','permited_costcenters','_result_group'));

    }

public function cashBookFilterReset(){
  Session::flash('filter_cash_book');
  return redirect()->back();
}


//Bank book filter
    public function bankBook(Request $request){
        $previous_filter= Session::get('filter_bank_book');
        $page_name = "Bank Book";
        $account_ledgers = \DB::select( " SELECT t1.id,t1._account_head_id,t1._account_group_id,t1._name FROM account_ledgers AS t1 WHERE t1._account_group_id=(SELECT _bank_group FROM general_settings ) " );
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        return view('backend.account-report.filter_bank_book',compact('request','page_name','account_ledgers','previous_filter','permited_branch','permited_costcenters'));
    }

    public function bankBookReport(Request $request){
      $this->validate($request, [
            '_datex' => 'required',
            '_datey' => 'required',
            '_account_ledger_id' => 'required',
        ]);

        session()->put('filter_bank_book', $request->all());
        $previous_filter= Session::get('filter_bank_book');
        $page_name = "Bank Book";
         $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        $datas=[];
        $_datex =  change_date_format($request->_datex);
        $_datey=  change_date_format($request->_datey);
        $request_branchs = $request->_branch_id ?? [];
        $request_cost_centers = $request->_cost_center ?? [];

        $_branch_ids = filterableBranch($request_branchs,$permited_branch);
        $_cost_center_ids = filterableCostCenter($request_cost_centers,$permited_costcenters);
        $ledger_ids = $request->_account_ledger_id ?? [];

        $ledger_id_rows = implode(',', $ledger_ids);
        $_branch_ids_rows = implode(',', $_branch_ids);
        $_cost_center_id_rows = implode(',', $_cost_center_ids);
        $opening_query_sting = " SELECT 'A. Opening Bank' as _type,null as _date,  t1._account_ledger AS _account_ledger,t3._name as _l_name,null as _short_narration,null as _reference,null as _table_name, null as _id,SUM(t1._dr_amount-t1._cr_amount) as _dr_amount,0 as _cr_amount,0 as _serial
            FROM accounts as t1
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
               WHERE t1._status=1 AND t1._date < '".$_datex."' AND t1._account_ledger IN(".$ledger_id_rows.")
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger 
UNION ALL
SELECT 'B. Receipt & Payment' as _type,t1._date, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._short_narration as _short_narration,t1._reference as _reference,t1._table_name, t1._ref_master_id as _id,t1._dr_amount as _dr_amount,t1._cr_amount as _cr_amount,t1._serial
            FROM accounts as t1
             INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
              WHERE  t1._status=1 AND t1._date  >= '".$_datex."'  AND t1._date <= '".$_datey."' 
               AND t1._account_ledger IN(".$ledger_id_rows.")
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")

    UNION ALL
    SELECT 'C. Closing Bank' as _type,null as _date,  t1._account_ledger AS _account_ledger,t3._name as _l_name,null as _short_narration,null as _reference,null as _table_name, null as _id,SUM(t1._dr_amount-t1._cr_amount) as _dr_amount,0 as _cr_amount,0 as _serial
            FROM accounts as t1
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
               WHERE t1._status=1 AND t1._date <= '".$_datey."'  AND t1._account_ledger IN(".$ledger_id_rows.")
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger ";

         $_opening_balance =  DB::select($opening_query_sting);
         $_result_group =array();
         foreach ($_opening_balance as $value) {
           $_result_group[$value->_type][]=$value;
         }
        return view('backend.account-report.report_bank_book',compact('request','page_name','previous_filter','permited_branch','permited_costcenters','_result_group'));

    }

public function bankBookFilterReset(){
  Session::flash('filter_bank_book');
  return redirect()->back();
}

//Bank book filter
    public function receiptPayment(Request $request){
        $previous_filter= Session::get('filter_receipt_payment');
        $page_name = "Receipt Payment";
        $_defalut_groups = \DB::select("SELECT _bank_group,_cash_group FROM general_settings");
        $_defalut_groups_array = array();
        foreach ($_defalut_groups as $value) {
          array_push($_defalut_groups_array ,intval($value->_bank_group));
          array_push($_defalut_groups_array ,intval($value->_cash_group));
        }
        $_defalut_groups_ids=implode(',', $_defalut_groups_array);

        $account_ledgers = \DB::select( " SELECT t1.id,t1._account_head_id,t1._account_group_id,t1._name FROM account_ledgers AS t1 WHERE t1._account_group_id IN(".$_defalut_groups_ids." ) " );
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        return view('backend.account-report.filter_receipt_payment',compact('request','page_name','account_ledgers','previous_filter','permited_branch','permited_costcenters'));
    }

    public function receiptPaymentReport(Request $request){
      $this->validate($request, [
            '_datex' => 'required',
            '_datey' => 'required',
            '_account_ledger_id' => 'required',
        ]);

        session()->put('filter_receipt_payment', $request->all());
        $previous_filter= Session::get('filter_receipt_payment');
        $page_name = "Receipt Payment";
         $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        $datas=[];
        $_datex =  change_date_format($request->_datex);
        $_datey=  change_date_format($request->_datey);
        $request_branchs = $request->_branch_id ?? [];
        $request_cost_centers = $request->_cost_center ?? [];

        $_branch_ids = filterableBranch($request_branchs,$permited_branch);
        $_cost_center_ids = filterableCostCenter($request_cost_centers,$permited_costcenters);
        $ledger_ids = $request->_account_ledger_id ?? [];

        $ledger_id_rows = implode(',', $ledger_ids);
        $_branch_ids_rows = implode(',', $_branch_ids);
        $_cost_center_id_rows = implode(',', $_cost_center_ids);
        $opening_query_sting = " SELECT 'A. Opening' as _type,null as _date,  t1._account_ledger AS _account_ledger,t3._name as _l_name,null as _short_narration,null as _reference,null as _table_name, null as _id,SUM(t1._dr_amount-t1._cr_amount) as _dr_amount,0 as _cr_amount,0 as _serial
            FROM accounts as t1
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
               WHERE t1._status=1 AND t1._date < '".$_datex."' AND t1._account_ledger IN(".$ledger_id_rows.")
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger 
UNION ALL
SELECT 'B. Receipt & Payment' as _type,t1._date, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._short_narration as _short_narration,t1._reference as _reference,t1._table_name, t1._ref_master_id as _id,t1._dr_amount as _dr_amount,t1._cr_amount as _cr_amount,t1._serial
            FROM accounts as t1
             INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
              WHERE  t1._status=1 AND t1._date  >= '".$_datex."'  AND t1._date <= '".$_datey."' 
               AND t1._account_ledger IN(".$ledger_id_rows.")
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")

    UNION ALL
    SELECT 'C. Closing' as _type,null as _date,  t1._account_ledger AS _account_ledger,t3._name as _l_name,null as _short_narration,null as _reference,null as _table_name, null as _id,SUM(t1._dr_amount-t1._cr_amount) as _dr_amount,0 as _cr_amount,0 as _serial
            FROM accounts as t1
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
               WHERE t1._status=1 AND t1._date <= '".$_datey."'  AND t1._account_ledger IN(".$ledger_id_rows.")
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger ";

         $_opening_balance =  DB::select($opening_query_sting);
         $_result_group =array();
         foreach ($_opening_balance as $value) {
           $_result_group[$value->_type][]=$value;
         }
        return view('backend.account-report.report_receipt_payment',compact('request','page_name','previous_filter','permited_branch','permited_costcenters','_result_group'));

    }

public function receiptPaymentFilterReset(){
  Session::flash('filter_receipt_payment');
  return redirect()->back();
}

    public function groupLedger(Request $request){

        $previous_filter= Session::get('groupBaseLedgerReportFilter');
        $page_name = "Group Ledger Statement";
        $account_groups = \DB::select(" SELECT DISTINCT t2.id as id,t2._name as _name FROM accounts AS t1
                                        INNER JOIN account_groups AS t2 ON t1._account_group=t2.id WHERE t2._show_filter=1 ORDER BY t2._name ASC ");
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));


         
        return view('backend.account-report.group_ledger',compact('request','page_name','account_groups','previous_filter','permited_branch','permited_costcenters'));
    }


    public function groupBaseLedgerReport(Request $request){
     // return $request->all();
      $this->validate($request, [
            '_datex' => 'required',
            '_datey' => 'required'
        ]);

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

       

      $request_branchs = $request->_branch_id ?? [];
      $request_cost_centers = $request->_cost_center ?? [];

      $_branch_ids = filterableBranch($request_branchs,$permited_branch);
      $_cost_center_ids = filterableCostCenter($request_cost_centers,$permited_costcenters);

      $ledger_id_rows = implode(',', $ledger_ids);
      $_branch_ids_rows = implode(',', $_branch_ids);
      $_cost_center_id_rows = implode(',', $_cost_center_ids);
      
     if($ledger_id_rows){
     $string_query = " 
      SELECT s1._account_group,s1._group_name, s1._account_ledger,s1._l_name,s1._branch_id,s1._cost_center, s1._branch_name, s1._id,s1._table_name, s1._date, s1._short_narration, s1._narration, s1._dr_amount, s1._cr_amount, s1._balance,s1._serial FROM(

     SELECT t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name, null as _id,null as _table_name, null as _date, null as _short_narration, 'Opening Balance' as _narration, 0 AS _dr_amount, 0  AS _cr_amount, SUM(t1._dr_amount-t1._cr_amount) AS _balance,0 as _serial  
            FROM accounts as t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
               WHERE t1._status=1 AND t1._date < '".$_datex."' AND t1._account_ledger IN(".$ledger_id_rows.")
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger
      UNION ALL
            SELECT t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name, t1._ref_master_id as _id, t1._table_name AS _table_name, t1._date as _date, t1._short_narration as _short_narration, t1._narration as _narration, t1._dr_amount AS _dr_amount, t1._cr_amount  AS _cr_amount, 0 AS _balance ,t1._serial as _serial
            FROM accounts AS t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
              WHERE  t1._status=1 AND t1._date  >= '".$_datex."'  AND t1._date <= '".$_datey."' 
              AND t1._account_ledger IN(".$ledger_id_rows.") AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.") ) as s1 order by s1._date,s1._id,s1._serial ASC ";

       $datas = DB::select($string_query);
       $group_array_values = array();
       foreach ($datas as $value) {
           $group_array_values[$value->_group_name][$value->_l_name][]=$value;
       }

}else{
   $group_array_values = array();
}
        //return $group_array_values;
        return view('backend.account-report.group_ledger_report',compact('request','page_name','group_array_values','basic_information','_datex','_datey','previous_filter','permited_branch','permited_costcenters'));
    }


    

    public function groupBaseLedgerFilterReset(){
        Session::flash('groupBaseLedgerReportFilter');

        return redirect()->back();
    }
 public function filterLedgerSummarray(Request $request){

        $previous_filter= Session::get('ledgerSummaryFilter');
        $page_name = "Ledger Summary Report";
        $account_groups = \DB::select(" SELECT DISTINCT t2.id as id,t2._name as _name FROM accounts AS t1
                                        INNER JOIN account_groups AS t2 ON t1._account_group=t2.id WHERE t2._show_filter=1 ORDER BY t2._name ASC ");
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));


         
        return view('backend.account-report.filter_ledger_summary',compact('request','page_name','account_groups','previous_filter','permited_branch','permited_costcenters'));
    }


    public function ledgerSummaryReport(Request $request){
   //  return $request->all();
      $this->validate($request, [
            '_branch_id' => 'required',
            '_account_group_id' => 'required'
        ]);

        session()->put('ledgerSummaryFilter', $request->all());
        $previous_filter= Session::get('ledgerSummaryFilter');
        $page_name = "Ledger Summary Report";
        $_order_by= $request->_order_by ?? 'DESC';
        $_with_zero= $request->_with_zero ?? 1;
        
       $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        $datas=[];

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

       

      $request_branchs = $request->_branch_id ?? [];
      $request_cost_centers = $request->_cost_center ?? [];

      $_branch_ids = filterableBranch($request_branchs,$permited_branch);
      $_cost_center_ids = filterableCostCenter($request_cost_centers,$permited_costcenters);

      $ledger_id_rows = implode(',', $ledger_ids);
      $_branch_ids_rows = implode(',', $_branch_ids);
      $_cost_center_id_rows = implode(',', $_cost_center_ids);
      
     if($ledger_id_rows){
     $string_query = "  
            SELECT t1._account_group AS _account_group,t2._name as _group_name,t3._address,t3._phone, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name, SUM(t1._dr_amount-t1._cr_amount) AS _balance
            FROM accounts AS t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
              WHERE  t1._status=1 
              AND t1._account_ledger IN(".$ledger_id_rows.") AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")    GROUP BY t1._account_ledger ";
              if($_with_zero ==1){
                $string_query .= " HAVING (abs(SUM(t1._dr_amount-t1._cr_amount)) > 0 )  ";
              }

              $string_query .= "   ORDER BY  abs(SUM(t1._dr_amount-t1._cr_amount))  $_order_by ";
           

        $datas = DB::select($string_query);
       $group_array_values = array();
       foreach ($datas as $value) {
           $group_array_values[$value->_group_name][]=$value;
       }

}else{
   $group_array_values = array();
}
        //return $group_array_values;
        return view('backend.account-report.report_ledger_summary',compact('request','page_name','group_array_values','basic_information','previous_filter','permited_branch','permited_costcenters'));
    }


    public function ledgerSummaryFilterReset(){
        Session::flash('ledgerSummaryFilter');

        return redirect()->back();
    }

    public function LedgerReportFilterReset(){
        Session::flash('ledgerReprtFilter');

        return redirect()->back();
    }



    public function trailBalance(Request $request){
        $previous_filter= Session::get('trailBalanceReportFilter');
        $page_name = "Trail Balance";
       $account_groups = \DB::select(" SELECT DISTINCT t2.id as id,t2._name as _name FROM accounts AS t1
                                        INNER JOIN account_groups AS t2 ON t1._account_group=t2.id WHERE t2._show_filter=1 ORDER BY t2._name ASC ");
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));


         
        return view('backend.account-report.trail-balance',compact('request','page_name','account_groups','previous_filter','permited_branch','permited_costcenters'));
    }




    public function trailBalanceReport(Request $request){
      $this->validate($request, [
            '_datex' => 'required',
            '_datey' => 'required'
        ]);

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

      $request_branchs = $request->_branch_id ?? [];
      $request_cost_centers = $request->_cost_center ?? [];

      $_branch_ids = filterableBranch($request_branchs,$permited_branch);
      $_cost_center_ids = filterableCostCenter($request_cost_centers,$permited_costcenters);

      $ledger_id_rows = implode(',', $ledger_ids);
      $_branch_ids_rows = implode(',', $_branch_ids);
      $_cost_center_id_rows = implode(',', $_cost_center_ids);
      
      if($ledger_id_rows){
     $string_query = " 
 SELECT t5._account_group,t5._group_name, t5._account_ledger,t5._l_name,t5._branch_id,t5._cost_center, t5._branch_name,  SUM(t5._o_dr_amount)  AS _o_dr_amount, SUM(t5._o_cr_amount)  AS _o_cr_amount ,SUM(t5._c_dr_amount) as _c_dr_amount,SUM(t5._c_cr_amount) as _c_cr_amount FROM (
     SELECT t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name,  SUM(t1._dr_amount)  AS _o_dr_amount, SUM(t1._cr_amount)  AS _o_cr_amount ,0 as _c_dr_amount,0 as _c_cr_amount 
            FROM accounts as t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
               WHERE  t1._status=1 AND t1._date < '".$_datex."' AND t1._account_ledger IN(".$ledger_id_rows.")
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger
      UNION ALL
            SELECT t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name,0 as _cr_amount, 0 as _o_cr_amount, SUM(t1._dr_amount) AS _c_dr_amount, SUM(t1._cr_amount)  AS _c_cr_amount
            FROM accounts AS t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
              WHERE  t1._status=1 AND t1._date  >= '".$_datex."'  AND t1._date <= '".$_datey."' 
              AND t1._account_ledger IN(".$ledger_id_rows.") AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
              GROUP BY t1._account_ledger
              ) as t5 GROUP BY t5._account_ledger  ";

       $datas = DB::select($string_query);
       $group_array_values = array();
       foreach ($datas as $value) {
           $group_array_values[$value->_group_name][$value->_l_name][]=$value;
       }
}else{
   $group_array_values = array();
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
        $incomeStatementLedgers = DB::table('account_ledgers')
                                    ->select('account_ledgers.id','account_ledgers._name','account_ledgers._show','account_heads._name as _head_name')
                                    ->join('account_heads','account_heads.id','account_ledgers._account_head_id')
                                    ->whereIn('account_heads._account_id',[3,4])
                                    ->orderBy('account_heads.id','ASC')
                                    ->orderBy('account_ledgers.id','ASC')
                                    ->get();
        $_filter_ledgers = array();
        foreach ($incomeStatementLedgers as $value) {
          $_filter_ledgers[$value->_head_name][] = $value;
        }
       

         
        return view('backend.account-report.income-statement',compact('request','page_name','previous_filter','permited_branch','permited_costcenters','_filter_ledgers'));
    }


    public function incomeStatementReport(Request $request){
        $this->validate($request, [
            '_datex' => 'required',
            '_datey' => 'required'
        ]);
         session()->put('incomeStatementFillter', $request->all());
        $previous_filter= Session::get('incomeStatementFillter');
        $page_name = "Income Statement";
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));

      $_datex =  change_date_format($request->_datex);
      $_datey=  change_date_format($request->_datey);
      $request_branchs = $request->_branch_id ?? [];
      $request_cost_centers = $request->_cost_center ?? [];

      $_branch_ids = filterableBranch($request_branchs,$permited_branch);
      $_cost_center_ids = filterableCostCenter($request_cost_centers,$permited_costcenters);

       $_branch_ids_rows = implode(',', $_branch_ids);
       $_cost_center_id_rows = implode(',', $_cost_center_ids);


      $income_query = " SELECT t5._account_group,t5._group_name, t5._account_ledger,t5._l_name,t5._branch_id,t5._cost_center, t5._branch_name,  SUM(t5._previous_balance)  AS _previous_balance, SUM(t5._current_balance)  AS _current_balance, SUM(t5._previous_balance+t5._current_balance) as _last_amount FROM (

      SELECT t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name,  SUM(t1._cr_amount-t1._dr_amount)  AS _previous_balance, 0  AS _current_balance
            FROM accounts as t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
               WHERE  t1._status=1 AND t1._date < '".$_datex."' AND t3._show=1 AND t1._account_head IN (8,9)
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger
            UNION ALL
            SELECT t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name,  0 AS _previous_balance, SUM(t1._cr_amount-t1._dr_amount)   AS _current_balance
            FROM accounts as t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
               WHERE  t1._status=1 AND t1._date  >= '".$_datex."'  AND t1._date <= '".$_datey."'  AND t3._show=1 AND t1._account_head IN (8,9)
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger
                 ) as t5 GROUP BY t5._account_ledger ";
      $income_8_result = DB::select($income_query);
      $income_8 = array();
      foreach ($income_8_result as $value) {
        $income_8[$value->_group_name][]=$value;
      }



      $other_income_expense_query = " SELECT t5._account_group,t5._group_name, t5._account_ledger,t5._l_name,t5._branch_id,t5._cost_center, t5._branch_name,  SUM(t5._previous_balance)  AS _previous_balance, SUM(t5._current_balance)  AS _current_balance, SUM(t5._previous_balance+t5._current_balance) as _last_amount FROM (

      SELECT t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name,  SUM(t1._cr_amount-t1._dr_amount)  AS _previous_balance, 0  AS _current_balance
            FROM accounts as t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
               WHERE  t1._status=1 AND t1._date < '".$_datex."' AND t3._show=1 AND t1._account_head IN (10,11,15)
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger
            UNION ALL
            SELECT t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name,  0 AS _previous_balance, SUM(t1._cr_amount-t1._dr_amount)   AS _current_balance
            FROM accounts as t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
               WHERE  t1._status=1 AND t1._date  >= '".$_datex."'  AND t1._date <= '".$_datey."'  AND t3._show=1 AND t1._account_head IN (10,11,15)
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger
                 ) as t5 GROUP BY t5._account_ledger ";
      $other_income_expense_result = DB::select($other_income_expense_query);
      $other_income_expenses = array();
      foreach ($other_income_expense_result as $value) {
        $other_income_expenses[$value->_group_name][]=$value;
      }

        // return $income_8;
        return view('backend.account-report.income-statement-report',compact('request','page_name','previous_filter','permited_branch','permited_costcenters','income_8','other_income_expenses'));
    }



    public function balanceSheet(Request $request){
        $previous_filter= Session::get('balanceSheetFilter');
        $page_name = "Balance Sheet";
        
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        
       

         
        return view('backend.account-report.balance-sheet',compact('request','page_name','previous_filter','permited_branch','permited_costcenters'));
    }


    public function balanceSheetReport(Request $request){
        $this->validate($request, [
            '_datex' => 'required'
        ]);
         session()->put('balanceSheetFilter', $request->all());
        $previous_filter= Session::get('balanceSheetFilter');
        $page_name = "Balance Sheet";
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));

      $_datex =  change_date_format($request->_datex);
      $_datey=  change_date_format($request->_datey);
      $request_branchs = $request->_branch_id ?? [];
      $request_cost_centers = $request->_cost_center ?? [];

      $_branch_ids = filterableBranch($request_branchs,$permited_branch);
      $_cost_center_ids = filterableCostCenter($request_cost_centers,$permited_costcenters);

      $_branch_ids_rows = implode(',', $_branch_ids);
      $_cost_center_id_rows = implode(',', $_cost_center_ids);
      $_with_zero_qty = $request->_with_zero ?? 0;


      $balance_sheet = "   SELECT t5._name as _main_head,t6._name as _head_name, t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name,  SUM(t1._dr_amount-t1._cr_amount)  AS _amount
            FROM accounts as t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN account_heads as t6 ON t6.id=t1._account_head
            INNER JOIN main_account_head as t5 ON t5.id=t6._account_id
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
               WHERE  t1._status=1 AND t1._date <= '".$_datex."' AND t3._show=1 AND t5.id IN (1,2,5)
               AND  t1._branch_id IN (".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger

          UNION ALL
          SELECT 'Capital' as _main_head, 'Owner\'s equity' as _head_name, 'Owner\'s Equity' AS _account_group,'Owner\'s Equity' as _group_name, null  AS _account_ledger,'Income Statement Account' as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name,  SUM(t1._dr_amount-t1._cr_amount)  AS _amount
            FROM accounts as t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN account_heads as t6 ON t6.id=t1._account_head
            INNER JOIN main_account_head as t5 ON t5.id=t6._account_id
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
               WHERE  t1._status=1 AND t1._date <= '".$_datex."' AND t3._show=1 AND t5.id IN (3,4)
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.") ";

      $balance_sheet_result = DB::select($balance_sheet);
      $balance_sheet_filter = array();
      foreach ($balance_sheet_result as $value) {
        $balance_sheet_filter[$value->_main_head][$value->_head_name][$value->_group_name][]=$value;
      }

     if($request->_level =='Level 1'){
      
       return view('backend.account-report.balance_sheet_level_1',compact('request','page_name','previous_filter','permited_branch','permited_costcenters','balance_sheet_filter','_with_zero_qty'));

     }else{
       return view('backend.account-report.balance-sheet-report',compact('request','page_name','previous_filter','permited_branch','permited_costcenters','balance_sheet_filter','_with_zero_qty'));
     }

       
    }



    public function workSheet(Request $request){
        $previous_filter= Session::get('workSheetFilter');
        $page_name = "Work Sheet";
        
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        
       

         
        return view('backend.account-report.work-sheet',compact('request','page_name','previous_filter','permited_branch','permited_costcenters'));

    }

    public function workSheetReport(Request $request){

      $this->validate($request, [
            '_datex' => 'required'
        ]);
         session()->put('balanceSheetFilter', $request->all());
        $previous_filter= Session::get('balanceSheetFilter');
        $page_name = "Work Sheet";
        $users = Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));

      $_datex =  change_date_format($request->_datex);
      $_datey=  change_date_format($request->_datey);
      $request_branchs = $request->_branch_id ?? [];
      $request_cost_centers = $request->_cost_center ?? [];

      $_branch_ids = filterableBranch($request_branchs,$permited_branch);
      $_cost_center_ids = filterableCostCenter($request_cost_centers,$permited_costcenters);

      $_branch_ids_rows = implode(',', $_branch_ids);
      $_cost_center_id_rows = implode(',', $_cost_center_ids);


      $balance_sheet = "   SELECT t5.id as _main_head,t6._name as _head_name, t1._account_group AS _account_group,t2._name as _group_name, t1._account_ledger AS _account_ledger,t3._name as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name,  SUM(t1._dr_amount-t1._cr_amount)  AS _amount
            FROM accounts as t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN account_heads as t6 ON t6.id=t1._account_head
            INNER JOIN main_account_head as t5 ON t5.id=t6._account_id
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
               WHERE  t1._status=1 AND t1._date < '".$_datex."' 
               AND  t1._branch_id IN (".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.")
                 GROUP BY t1._account_ledger

          UNION ALL
          SELECT 6 as _main_head, 4 as _head_name, 'Owner\'s Equity' AS _account_group,'Owner\'s Equity' as _group_name, null  AS _account_ledger,'Income Statement Account' as _l_name,t1._branch_id AS _branch_id,t1._cost_center as _cost_center, t4._name as _branch_name,  SUM(t1._dr_amount-t1._cr_amount)  AS _amount
            FROM accounts as t1
            INNER JOIN account_groups as t2 ON t2.id=t1._account_group
            INNER JOIN account_ledgers as t3 ON t3.id=t1._account_ledger
            INNER JOIN account_heads as t6 ON t6.id=t1._account_head
            INNER JOIN main_account_head as t5 ON t5.id=t6._account_id
            INNER JOIN branches as t4 ON t4.id = t1._branch_id
               WHERE  t1._status=1 AND t1._date <= '".$_datex."'  AND t3._show=1 AND t5.id IN (3,4)
               AND  t1._branch_id IN(".$_branch_ids_rows.") AND  t1._cost_center IN(".$_cost_center_id_rows.") 


                   ";
       $work_sheet_result = DB::select($balance_sheet);
      

      

        return view('backend.account-report.work-sheet-report',compact('request','page_name','previous_filter','permited_branch','permited_costcenters','work_sheet_result'));
      
    }

    public function workSheetFilterReset(Request $request){
      Session::flash('workSheetFilter');

        return redirect()->back();
    }






    public function incomeStatementFilterReset(){
        Session::flash('incomeStatementFillter');

        return redirect()->back();
    }

    public function balanceSheetFilterReset(){
        Session::flash('balanceSheetFilter');

        return redirect()->back();
    }




    public function incomeStatementSettings(Request $request){

      $_ledger_ids = $request->_l_id ?? [];
      $_shows = $request->_show ?? [];
        foreach ($_ledger_ids as  $key=>$value) {
          $AccountLedger = AccountLedger::find($value);
          $AccountLedger->_show = $_shows[$key];
          $AccountLedger->save();

          
        }

        return redirect()->back();

    }














}