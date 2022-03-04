<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SocialMediaController;
use App\Http\Controllers\AccountGroupController;
use App\Http\Controllers\AccountHeadController;
use App\Http\Controllers\BranchController;
use App\Http\Controllers\CostCenterController;
use App\Http\Controllers\StoreHouseController;





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

Route::get('newhelper', function(){
    $timeInEuropeParisTimezone = '2021-03-25 11:00:00';
    $selected_branchs = selectedBranch(explode(',',\Auth::user()->branch_ids));
  
    dd($selected_branchs);
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

    

    //Admin section end

    //Admin section Route Controller
    Route::get('admin-settings','App\Http\Controllers\GeneralSettingsController@settings')->name('admin-settings');
    Route::post('admin-settings-store','App\Http\Controllers\GeneralSettingsController@settingsSave')->name('admin-settings-store');
});

