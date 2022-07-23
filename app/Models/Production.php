<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Production extends Model
{
    use HasFactory;


    public function _stock_in(){
    	return $this->hasMany(StockIn::class,'_no','id')->where('_status',1);
    }


    public function _stock_out(){
    	return $this->hasMany(StockOut::class,'_no','id')->where('_status',1);
    }
}
