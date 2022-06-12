<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PurchaseOrderDetail extends Model
{
    use HasFactory;

     public function _items(){
    	return $this->hasOne(Inventory::class,'id','_item_id')->select('id','_item as _name','_unit_id')->with(['_units']);
    }


     public function _detail_branch(){
    	return $this->hasOne(Branch::class,'id','_branch_id')->select('id','_name');
    }

    public function _detail_cost_center(){
    	return $this->hasOne(CostCenter::class,'id','_cost_center_id')->select('id','_name');
    }

    public function _store(){
    	return $this->hasOne(StoreHouse::class,'id','_store_id')->select('id','_name');
    }
}
