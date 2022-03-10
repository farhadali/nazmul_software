<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AccountGroup;
use App\Models\Accounts;
use App\Models\AccountLedger;
use DB;

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
                    ->where('accounts._date','<' ,$_datex)
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
}