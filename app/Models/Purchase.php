<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
    use HasFactory;


     public function _master_branch(){
    	return $this->hasOne(Branch::class,'id','_branch_id')->select('id','_name');
    }

    public function _master_details(){
    	return $this->hasMany(PurchaseDetail::class,'_no','id')->with(['_detail_branch','_detail_cost_center','_store','_items']);
    }

    public function purchase_account(){
    	return $this->hasMany(PurchaseAccount::class,'_no','id')->with(['_ledger','_detail_branch','_detail_cost_center']);


    }

    public function _ledger(){
    	return $this->hasOne(AccountLedger::class,'id','_ledger_id');
    }
}
