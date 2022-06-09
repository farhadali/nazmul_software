<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\GeneralSettings;

class GeneralSettingsController extends Controller
{
    /*
    * General Settings Update
    *
    *
    */
    function __construct()
    {
         $this->middleware('permission:admin-settings|admin-settings-store', ['only' => ['settings','settingsSave']]);
         $this->middleware('permission:lock-permission', ['only' => ['lockAction']]);
         
    }

    public function UserImageUpload($query) // Taking input image as parameter
    {
        $image_name = date('mdYHis') . uniqid();
        $ext = strtolower($query->getClientOriginalExtension()); // You can use also getClientOriginalName()
        
        $image_full_name = $image_name.'.'.$ext;
        $upload_path = 'images/';    //Creating Sub directory in Public folder to put image
        $image_url = $upload_path.$image_full_name;
        $success = $query->move($upload_path,$image_full_name);
 
        return $image_url; // Just return image
    }

    public function settings(Request $request){
    	$settings = GeneralSettings::first();
    	return view('backend.settings.index',compact('settings'));
    }


    public function lockAction(Request $request){
        $_action = $request->_action;
        $_id = $request->_id;
        $_table_name = $request->_table_name;
        \DB::table($_table_name)->where('id',$_id)->update(['_lock'=>$_action]);
        return "ok";

    }

    public function settingsSave(Request $request){
       
    	if($request->id ==''){
    		$settings = new GeneralSettings();
    	}else{
    		$settings = GeneralSettings::find($request->id);
    	}
    	$settings->title = $request->title ?? '';
    	$settings->name = $request->name ?? '';
    	$settings->keywords = $request->keywords ?? '';
    	$settings->author = $request->author ?? '';
    	$settings->url = $request->url ?? '';
        $settings->_email = $request->_email ?? '';
        $settings->_phone = $request->_phone ?? '';
        $settings->_address = $request->_address ?? '';
        $settings->_sales_note = $request->_sales_note ?? '';
        $settings->_sales_return__note = $request->_sales_return__note ?? '';
        $settings->_purchse_note = $request->_purchse_note ?? '';
        $settings->_purchase_return_note = $request->_purchase_return_note ?? '';
        $settings->_top_title = $request->_top_title ?? '';
        $settings->_ac_type = $request->_ac_type ?? 0;

    	if($request->hasFile('logo')){ 
                $logo = $this->UserImageUpload($request->logo); 
                $settings->logo = $logo;
            }
        $settings->save();
        return redirect()->back()
                        ->with('success','Information Save successfully');
    }
}
