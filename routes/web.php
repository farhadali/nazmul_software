<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Models\AccountGroup;
use App\Models\AccountLedger;

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
use App\Http\Controllers\AccountReportController;





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

   $_last_balance =  _last_balance(2);
  
    dd($_last_balance[0]->_balance);
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
    Route::get('account-type-reset', 'App\Http\Controllers\AccountHeadController@reset');

    Route::resource('account-group', AccountGroupController::class);
    Route::post('account-group/update', 'App\Http\Controllers\AccountGroupController@update');
    Route::get('account-group-reset', 'App\Http\Controllers\AccountGroupController@reset');

    Route::resource('cost-center', CostCenterController::class);
    Route::post('cost-center/update', 'App\Http\Controllers\CostCenterController@update');
    
    Route::resource('store-house', StoreHouseController::class);
    Route::post('store-house/update', 'App\Http\Controllers\StoreHouseController@update');

    Route::resource('account-ledger', AccountLedgerController::class);
    Route::post('account-ledger/update', 'App\Http\Controllers\AccountLedgerController@update');
    Route::get('account-ledger-reset', 'App\Http\Controllers\AccountLedgerController@reset');

    Route::resource('voucher', VoucherMasterController::class);
    Route::post('voucher/update', 'App\Http\Controllers\VoucherMasterController@update');
    Route::get('voucher/print/{id}', 'App\Http\Controllers\VoucherMasterController@voucherPrint');
    Route::get('voucher-main-print', 'App\Http\Controllers\VoucherMasterController@voucherMainPrint');
    Route::get('voucher-detail-print', 'App\Http\Controllers\VoucherMasterController@voucherDetailPrint');
    Route::get('voucher-reset', 'App\Http\Controllers\VoucherMasterController@reset');


    //Account Report Section 
    Route::get('ledger-report','App\Http\Controllers\AccountReportController@ledgerReprt');
    Route::get('ledger-report-show','App\Http\Controllers\AccountReportController@ledgerReprtShow');
    Route::get('group-ledger','App\Http\Controllers\AccountReportController@groupLedger');

    Route::post('group-base-ledger-report','App\Http\Controllers\AccountReportController@groupBaseLedgerReport');
    Route::get('group-base-ledger-filter-reset','App\Http\Controllers\AccountReportController@groupBaseLedgerFilterReset');
    Route::get('LedgerReportFilterReset','App\Http\Controllers\AccountReportController@LedgerReportFilterReset');

    Route::any('trail-balance','App\Http\Controllers\AccountReportController@trailBalance');
    Route::any('trail-balance-report','App\Http\Controllers\AccountReportController@trailBalanceReport');
    Route::get('trail-balance-filter-reset','App\Http\Controllers\AccountReportController@trailBalanceReportFilterReset');

    Route::get('income-statement','App\Http\Controllers\AccountReportController@incomeStatement');
    Route::get('income-statement-filter-reset','App\Http\Controllers\AccountReportController@incomeStatementFilterReset');
    Route::post('income-statement-report','App\Http\Controllers\AccountReportController@incomeStatementReport');
    Route::post('income-statement-settings','App\Http\Controllers\AccountReportController@incomeStatementSettings');

    Route::get('balance-sheet','App\Http\Controllers\AccountReportController@balanceSheet');
    Route::get('balance-sheet-filter-reset','App\Http\Controllers\AccountReportController@balanceSheetFilterReset');
    Route::get('balance-sheet-report','App\Http\Controllers\AccountReportController@balanceSheetReport');

    Route::get('work-sheet','App\Http\Controllers\AccountReportController@workSheet');
    Route::get('work-sheet-filter-reset','App\Http\Controllers\AccountReportController@workSheetFilterReset');
    Route::get('work-sheet-report','App\Http\Controllers\AccountReportController@workSheetReport');
    
    //Searching section 
    Route::any('ledger-search','App\Http\Controllers\AccountLedgerController@ledger_search');
    Route::any('type_base_group','App\Http\Controllers\AccountLedgerController@type_base_group');
    Route::any('group-base-ledger','App\Http\Controllers\AccountLedgerController@groupBaseLedger');
    
    
    

    

    //Admin section end

    //Admin section Route Controller
    Route::get('admin-settings','App\Http\Controllers\GeneralSettingsController@settings')->name('admin-settings');
    Route::post('admin-settings-store','App\Http\Controllers\GeneralSettingsController@settingsSave')->name('admin-settings-store');
});

