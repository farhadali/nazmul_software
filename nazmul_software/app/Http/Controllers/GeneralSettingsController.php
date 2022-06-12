<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\GeneralSettings;
use Session;
use Auth;
use DB;

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
         $this->middleware('permission:lock-permission', ['only' => ['lockAction','allLockSystem','allLock']]);
         
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

    public function allLock(){
        $users = \Auth::user();
        $permited_branch = permited_branch(explode(',',$users->branch_ids));
        $permited_costcenters = permited_costcenters(explode(',',$users->cost_center_ids));
        $page_name = "Transection Lock System";
        $previous_filter= Session::get('_filter_lock_system');

        

        $tables=['sales'=>'Sales','sales_returns'=>'Sales Return','purchases'=>'Purchase','purchase_returns'=>'Purchase Return','voucher_masters'=>'Voucher','damage_adjustments'=>'Damage'];
        return view('backend.settings.all-lock',compact('permited_branch','permited_costcenters','page_name','tables','previous_filter'));
    }


    public function allLockSystem(Request $request){

        $_action = $request->_action;
        $_table_name = $request->_table_name;
          $_datex =  change_date_format($request->_datex);
         $_datey=  change_date_format($request->_datey);
         $branches=$request->_branch_id ?? [];
        $cost_centers = $request->_cost_center ?? [];
        session()->put('_filter_lock_system', $request->all());
        $previous_filter= Session::get('_filter_lock_system');

       $lock_update=  DB::table($_table_name)
                ->whereIn('_branch_id',$branches);
                if($_table_name !='voucher_masters'){
                    $lock_update=$lock_update->whereIn('_cost_center_id',$cost_centers);
                }
                
                $lock_update=$lock_update->whereDate('_date','>=', $_datex)
                ->whereDate('_date','<=', $_datey)
                ->update(['_lock'=>$_action]);
         return redirect()->back()->with('success','Information Save successfully');

    }

    public function lockReset(){
         Session::flash('_filter_lock_system');
        return redirect()->back();
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
