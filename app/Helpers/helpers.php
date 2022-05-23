<?php
use Carbon\Carbon;
use App\Models\Branch;
use App\Models\CostCenter;
use App\Models\AccountGroup;
use App\Models\AccountHead;
use App\Models\AccountLedger;
use App\Models\Accounts;
use App\Models\VoucherType;
use App\Models\Inventory;
use App\Models\StoreHouse;
use App\Models\ItemCategory;
use App\Models\Units;

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






if (! function_exists('inventory_stock_update')) {
    function inventory_stock_update($item_id)
    {
        $balance=\DB::select("SELECT SUM(IFNULL(_qty,0)) as _balance FROM item_inventories WHERE _item_id=$item_id ");
        \DB::table('inventories')->where('id',$item_id)->update(['_balance'=>$balance[0]->_balance]);
    }
}


if (! function_exists('ledger_balance_update')) {
    function ledger_balance_update($ledger)
    {
        $balance=\DB::select("SELECT SUM(IFNULL(_dr_amount,0)-IFNULL(_cr_amount,0)) as _balance FROM `accounts` WHERE _account_ledger=$ledger ");
        \DB::table('account_ledgers')->where('id',$ledger)->update(['_balance'=>$balance[0]->_balance]);
    }
}

if (! function_exists('account_data_save')) {
       function account_data_save($_ref_master_id,$_ref_detail_id,$_short_narration,$_narration,$_reference,$_transaction,$_date,$_table_name,$_account_ledger,$_dr_amount,$_cr_amount,$_branch_id,$_cost_center,$_name,$_serial=0){
        $_account_head =  ledger_to_group_type($_account_ledger)->_account_head_id;
        $_account_group =  ledger_to_group_type($_account_ledger)->_account_group_id;
            $Accounts =  Accounts::where('_ref_master_id',$_ref_master_id)
                                    ->where('_ref_detail_id',$_ref_detail_id)
                                    ->where('_table_name',$_table_name)
                                    ->where('_account_ledger',$_account_ledger)
                                    ->where('_serial',$_serial)
                                    ->first();
            if(empty($Accounts)){
                $Accounts = new Accounts();
            }
            
            $Accounts->_ref_master_id = $_ref_master_id;
            $Accounts->_ref_detail_id = $_ref_detail_id;
            $Accounts->_short_narration = $_short_narration;
            $Accounts->_narration = $_narration;
            $Accounts->_reference = $_reference;
            $Accounts->_transaction = $_transaction;
            $Accounts->_date = $_date;
            $Accounts->_table_name = $_table_name;
            $Accounts->_account_head = $_account_head;
            $Accounts->_account_group = $_account_group;
            $Accounts->_account_ledger = $_account_ledger;
            $Accounts->_dr_amount = $_dr_amount;
            $Accounts->_cr_amount = $_cr_amount;
            $Accounts->_branch_id = $_branch_id;
            $Accounts->_cost_center = $_cost_center;
            $Accounts->_name =$_name;
            $Accounts->_status =1;
            $Accounts->_serial =$_serial;
            $Accounts->save(); 

            $id= $Accounts->id;

            ledger_balance_update($_account_ledger);

    }
}


if (! function_exists('_item_category')) {
    function _item_category($item)
    {
        $cates = Inventory::where('id',$item)->select('_category_id')->first();
        return $cates->_category_id ?? 0;
    }
}



if (! function_exists('filterableBranch')) {
    function filterableBranch($request_branchs,$permited_branch)
    {
        $_branch_ids = array();
         
         if(sizeof($request_branchs) > 0){
            foreach ($request_branchs as $value) {
                array_push($_branch_ids, (int) $value);
            }
        }else{
                foreach ($permited_branch as $branch) {
                    array_push($_branch_ids, $branch->id);
                }
            
        }
        return $_branch_ids;
    }
}



if (! function_exists('filterableCostCenter')) {
    function filterableCostCenter($request_cost_centers,$permited_costcenters)
    {
        
         $_cost_center_ids=array();
        if(sizeof($request_cost_centers) > 0){
            foreach ($request_cost_centers as $value) {
                array_push($_cost_center_ids, (int) $value);
            }
        }else{
            foreach ($permited_costcenters as $cost_center) {
                array_push($_cost_center_ids, $cost_center->id);
            }
            
        }
        return $_cost_center_ids;
    }
}



if (! function_exists('permited_branch')) {
    function permited_branch($branch_ids)
    {
        return Branch::whereIn('id',$branch_ids)->select('id','_name')->get();
    }
}


if (! function_exists('_branch_name')) {
    function _branch_name($branch_ids)
    {
        $branch= Branch::where('id',$branch_ids)->select('_name')->first();
        return $branch->_name;
    }
}

if (! function_exists('_unit_name')) {
    function _unit_name($id)
    {
        $data= Units::where('id',$id)->select('_name')->first();
        return $data->_name;
    }
}

if (! function_exists('_store_name')) {
    function _store_name($id)
    {
        $store= StoreHouse::where('id',$id)->select('_name')->first();
        return $store->_name;
    }
}

if (! function_exists('_cost_center_name')) {
    function _cost_center_name($id)
    {
        $data= CostCenter::where('id',$id)->select('_name')->first();
        return $data->_name;
    }
}

if (! function_exists('_category_name')) {
    function _category_name($id)
    {
        $data= ItemCategory::where('id',$id)->select('_name')->first();
        return $data->_name;
    }
}

if (! function_exists('_item_name')) {
    function _item_name($id)
    {
        $data= Inventory::where('id',$id)->select('_item as _name')->first();
        return $data->_name;
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
       return date('d-m-Y', strtotime($_date));
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

if (! function_exists('_find_ledger')) {
    function _find_ledger($ledger)
    {
      $ledger_info =  AccountLedger::where('id',$ledger)->select('_name')->first();
      return $ledger_info->_name ?? '';
    }
}


if (! function_exists('_last_balance')) {
    function _last_balance($ledger)
    {
      return \DB::select(' select SUM(_dr_amount-_cr_amount) as _balance from accounts where _account_ledger="'.$ledger.'" ');
    }
}


if (! function_exists('nv_number_to_text')) {
    function  nv_number_to_text($amount)
    {

        $digit = new NumberFormatter("en", NumberFormatter::SPELLOUT);
        return prefix_taka().".  ".$digit->format($amount ?? 0)." Only."; 
        
    }
}

if (! function_exists('_default_amount_dr_cr')) {
    function  _default_amount_dr_cr()
    {

        return 1; 
        
    }
}

if (! function_exists('_show_amount_dr_cr')) {
    function  _show_amount_dr_cr($amount)
    {
        $amount = (string) $amount;
        if($amount[0]==='-'){
            if(_default_amount_dr_cr()==1){
                $amount = substr($amount, 1);
                return $amount." Cr";
            }elseif(_default_amount_dr_cr()==2){
                 $amount = substr($amount, 1);
                 return "(".$amount.")";
            }else{
                return $amount;
            }
        }else{
           if(_default_amount_dr_cr()==1){
                return $amount." Dr";
            }elseif(_default_amount_dr_cr()==2){
                 return $amount;
            }else{
                return $amount;
            } 
        }
        
        
    }
}










