<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Models\AccountGroup;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SocialMediaController;
use App\Http\Controllers\AccountGroupController;
use App\Http\Controllers\AccountHeadController;
use App\Http\Controllers\BranchController;
use App\Http\Controllers\CostCenterController;
use App\Http\Controllers\StoreHouseController;
use App\Http\Controllers\AccountLedgerController;
use App\Http\Controllers\VoucherMasterController;





/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'App\Http\Controllers\FrontendController@index');

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');

Route::get('permited_branch', function(){
    $timeInEuropeParisTimezone = '2021-03-25 11:00:00';
    $permited_branch = permited_branch(explode(',',\Auth::user()->branch_ids));
    $permited_costcenters = permited_costcenters(explode(',',\Auth::user()->cost_center_ids));
  
    dd($permited_costcenters);
});




Route::group(['middleware' => ['auth']], function() {

    //Admin Section start
    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);
    Route::resource('social_media', SocialMediaController::class);
    Route::resource('branch', BranchController::class);
    Route::post('branch/update', 'App\Http\Controllers\BranchController@update');

    Route::resource('account-type', AccountHeadController::class);
    Route::post('account-type/update', 'App\Http\Controllers\AccountHeadController@update');

    Route::resource('account-group', AccountGroupController::class);
    Route::post('account-group/update', 'App\Http\Controllers\AccountGroupController@update');

    Route::resource('cost-center', CostCenterController::class);
    Route::post('cost-center/update', 'App\Http\Controllers\CostCenterController@update');
    
    Route::resource('store-house', StoreHouseController::class);
    Route::post('store-house/update', 'App\Http\Controllers\StoreHouseController@update');

    Route::resource('account-ledger', AccountLedgerController::class);
    Route::post('account-ledger/update', 'App\Http\Controllers\AccountLedgerController@update');

    Route::resource('voucher', VoucherMasterController::class);
    Route::post('voucher/update', 'App\Http\Controllers\VoucherMasterController@update');


    Route::get('type_base_group',function(Request $request){
        $account_groups = AccountGroup::where('_account_head_id',$request->id)->orderBy('_name','asc')->get();
        return view('backend.account-ledger.type_base_group',compact('account_groups'));
    });

    Route::any('ledger-search','App\Http\Controllers\AccountLedgerController@ledger_search');

    

    //Admin section end

    //Admin section Route Controller
    Route::get('admin-settings','App\Http\Controllers\GeneralSettingsController@settings')->name('admin-settings');
    Route::post('admin-settings-store','App\Http\Controllers\GeneralSettingsController@settingsSave')->name('admin-settings-store');
});

