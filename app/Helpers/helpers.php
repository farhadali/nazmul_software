<?php
use Carbon\Carbon;
use App\Models\Branch;
use App\Models\CostCenter;
use App\Models\AccountGroup;
use App\Models\AccountHead;
use App\Models\AccountLedger;
use App\Models\Accounts;
use App\Models\VoucherType;

if (! function_exists('convertLocalToUTC')) {
    function convertLocalToUTC($time)
    {
        return Carbon::createFromFormat('Y-m-d H:i:s', $time, 'Europe/Paris')->setTimezone('UTC');
    }
}

if (! function_exists('convertUTCToLocal')) {
    function convertUTCToLocal($time)
    {
        return Carbon::createFromFormat('Y-m-d H:i:s', $time, 'UTC')->setTimezone('Europe/Paris');
    }
}

if (! function_exists('default_pagination')) {
    function default_pagination()
    {
        return 10;
    }
}




if (! function_exists('permited_branch')) {
    function permited_branch($branch_ids)
    {
        return Branch::whereIn('id',$branch_ids)->select('id','_name')->get();
    }
}


if (! function_exists('permited_costcenters')) {
    function permited_costcenters($ids)
    {
        return CostCenter::whereIn('id',$ids)->select('id','_name')->get();
    }
}


if (! function_exists('filter_page_numbers')) {
    function filter_page_numbers()
    {
        return  [10,20,30,40,50,100,200,300,400,500,600,1000,2000,100000,200000,500000];
    }
}

if (! function_exists('db_name')) {
    function db_name()
    {
        return  "branch_wise_account_soft";
    }
}

if (! function_exists('common_status')) {
    function common_status()
    {
        return  ['1'=>'Active','0'=>'In Active'];
    }
}

if (! function_exists('yes_nos')) {
    function yes_nos()
    {
        return  [1=>'YES',0=>'NO'];
    }
}

if (! function_exists('asc_desc')) {
    function asc_desc()
    {
        return  ['DESC','ASC'];
    }
}

if (! function_exists('selected_status')) {
    function selected_status($value)
    {
        foreach(common_status() as $key=>$val){
        	if($key == $value){
        		return $val;
        	}
        }
    }
}

if (! function_exists('selected_status')) {
    function selected_status($value)
    {
        foreach(common_status() as $key=>$val){
        	if($key == $value){
        		return $val;
        	}
        }
    }
}


if (! function_exists('selected_yes_no')) {
    function selected_yes_no($value)
    {
        foreach(yes_nos() as $key=>$val){
        	if($key == $value){
        		return $val;
        	}
        }
    }
}


if (! function_exists('default_date_formate')) {
    function default_date_formate($value='DD-MM-YYYY')
    {
        return $value;
    }
}

if (! function_exists('voucher_prefix')) {
    function voucher_prefix()
    {
        return "AC-";
    }
}

if (! function_exists('report_date_formate')) {
    function report_date_formate()
    {
        return 'd-m-Y';
    }
}

if (! function_exists('_view_date_formate')) {
    function _view_date_formate($_date)
    {
        date('d-m-Y', strtotime($_date));
    }
}



if (! function_exists('voucher_code_to_name')) {
    function voucher_code_to_name($value)
    {
        $types = VoucherType::where('_code',$value)->select('_name')->first();
        return $types->_name ?? '';
    }
}


if (! function_exists('prefix_taka')) {
    function prefix_taka($value="Tk")
    {
        
        return $value;
    }
}



//Database insert formate Date

if (! function_exists('change_date_format')) {
    function change_date_format($_date)
    {
      return   date('Y-m-d', strtotime($_date));
    }
}



if (! function_exists('_report_amount')) {
    function _report_amount($_amount)
    {
      return   number_format((float) $_amount ?? 0, default_des(), '.', ',');
    }
}





if (! function_exists('default_des')) {
    function default_des()
    {
      return   2;
    }
}


if (! function_exists('ledger_to_group_type')) {
    function ledger_to_group_type($ledger)
    {
      return AccountLedger::where('id',$ledger)->select('_account_group_id','_account_head_id')->first();
    }
}


if (! function_exists('_last_balance')) {
    function _last_balance($ledger)
    {
      return \DB::select(' select SUM(_dr_amount-_cr_amount) as _balance from accounts where _account_ledger="'.$ledger.'" ');
    }
}







