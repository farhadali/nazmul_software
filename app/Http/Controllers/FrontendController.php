<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;

class FrontendController extends Controller
{
    public function index(){
     	$boards = [];
     	$sexs = [];
    	return view('welcome',compact('boards','sexs'));
    }


    
}
