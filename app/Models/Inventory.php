<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Inventory extends Model
{
    use HasFactory;


    public function _category(){
    	return $this->hasOne(ItemCategory::class,'id','_category_id')->select('id','_name');
    }

    public function _units(){
    	return $this->hasOne(Units::class,'id','_unit_id')->select('id','_name','_code');
    }
}
