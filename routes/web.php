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
use App\Http\Controllers\ItemCategoryController;
use App\Http\Controllers\InventoryController;
use App\Http\Controllers\PurchaseController;
use App\Http\Controllers\UnitsController;
use App\Http\Controllers\PurchaseReturnController;
use App\Http\Controllers\SalesController;
use App\Http\Controllers\SalesReturnController;
use App\Http\Controllers\InventoryReportController;
use App\Http\Controllers\PurchaseOrderController;
use App\Http\Controllers\DamageAdjustmentController;
use App\Http\Controllers\WarrantyController;
use App\Http\Controllers\ProductionController;





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

    Route::resource('item-category', ItemCategoryController::class);
    Route::post('item-category/update', 'App\Http\Controllers\ItemCategoryController@update');
    
    Route::resource('warranty', WarrantyController::class);
    Route::post('warranty/update', 'App\Http\Controllers\WarrantyController@update');

    Route::resource('item-information', InventoryController::class);
    Route::post('item-information/update', 'App\Http\Controllers\InventoryController@update');
    Route::post('ajax-item-save', 'App\Http\Controllers\InventoryController@ajaxItemSave');
    Route::get('item-information-reset', 'App\Http\Controllers\InventoryController@reset');
    Route::get('item-purchase-search', 'App\Http\Controllers\InventoryController@itemPurchaseSearch');
    Route::get('lot-item-information', 'App\Http\Controllers\InventoryController@lotItemInformation');
    Route::get('lot-item-information-reset', 'App\Http\Controllers\InventoryController@lotReset');
    Route::get('item-sales-price-edit/{id}', 'App\Http\Controllers\InventoryController@salesPriceEdit');
    Route::post('item-sales-price-update', 'App\Http\Controllers\InventoryController@salesPriceUpdate');
    Route::get('labels-print', 'App\Http\Controllers\InventoryController@labelPrint');
    Route::post('barcode-print-store', 'App\Http\Controllers\InventoryController@barcodePrintStore');

    
    Route::resource('store-house', StoreHouseController::class);
    Route::post('store-house/update', 'App\Http\Controllers\StoreHouseController@update');

    Route::resource('account-ledger', AccountLedgerController::class);
    Route::post('account-ledger/update', 'App\Http\Controllers\AccountLedgerController@update');
    Route::post('ajax-ledger-save', 'App\Http\Controllers\AccountLedgerController@ajaxLedgerSave');
    Route::get('account-ledger-reset', 'App\Http\Controllers\AccountLedgerController@reset');

    Route::resource('purchase', PurchaseController::class);
    Route::post('purchase/update', 'App\Http\Controllers\PurchaseController@update');
    Route::get('purchase-reset', 'App\Http\Controllers\PurchaseController@reset');
    Route::get('purchase/print/{id}', 'App\Http\Controllers\PurchaseController@purchasePrint');
    Route::post('purchase-settings', 'App\Http\Controllers\PurchaseController@purchaseSettings');
    Route::get('purchase-money-receipt/{id}', 'App\Http\Controllers\PurchaseController@moneyReceipt');

    Route::resource('purchase-order', PurchaseOrderController::class);
    Route::post('purchase-order/update', 'App\Http\Controllers\PurchaseOrderController@update');
    Route::get('purchase-order-reset', 'App\Http\Controllers\PurchaseOrderController@reset');
    Route::get('purchase-order/print/{id}', 'App\Http\Controllers\PurchaseOrderController@purchaseOrderPrint');
    Route::post('purchase-order-settings', 'App\Http\Controllers\PurchaseOrderController@purchaseOrderSettings');
    Route::get('purchase-pre-order-search', 'App\Http\Controllers\PurchaseOrderController@orderSearch');
    Route::post('purchase-pre-order-details', 'App\Http\Controllers\PurchaseOrderController@purchaseOrderDetails');
    

    Route::resource('sales', SalesController::class);
    Route::post('sales/update', 'App\Http\Controllers\SalesController@update');
    Route::get('sales-reset', 'App\Http\Controllers\SalesController@reset');
    Route::get('sales/print/{id}', 'App\Http\Controllers\SalesController@Print');
    Route::get('sales/challan/{id}', 'App\Http\Controllers\SalesController@challanPrint');
    Route::post('sales-settings', 'App\Http\Controllers\SalesController@Settings');
    Route::get('sales-setting-modal', 'App\Http\Controllers\SalesController@formSettingAjax');
    Route::get('item-sales-search', 'App\Http\Controllers\SalesController@itemSalesSearch');
    Route::get('item-damage-search', 'App\Http\Controllers\SalesController@itemDamageSearch');
    Route::get('item-sales-barcode-search', 'App\Http\Controllers\SalesController@itemSalesBarcodeSearch');
    Route::get('item-sales-edit-barcode-search', 'App\Http\Controllers\SalesController@itemSalesEditBarcodeSearch');
    Route::get('check-available-qty', 'App\Http\Controllers\SalesController@checkAvailableQty');
    Route::get('check-available-qty-update', 'App\Http\Controllers\SalesController@checkAvailableQtyUpdate');
    Route::get('check-available-qty-update-damage', 'App\Http\Controllers\SalesController@checkAvailableQtyUpdateDamage');
    Route::get('sales-money-receipt/{id}', 'App\Http\Controllers\SalesController@moneyReceipt');

    Route::resource('damage', DamageAdjustmentController::class);
    Route::post('damage/update', 'App\Http\Controllers\DamageAdjustmentController@update');
    Route::get('damage-reset', 'App\Http\Controllers\DamageAdjustmentController@reset');
    Route::get('damage/print/{id}', 'App\Http\Controllers\DamageAdjustmentController@Print');
    Route::post('damage-settings', 'App\Http\Controllers\DamageAdjustmentController@Settings');
    Route::get('damage-setting-modal', 'App\Http\Controllers\DamageAdjustmentController@formSettingAjax');

    Route::resource('transfer-production', ProductionController::class);
    Route::post('transfer-production/update', 'App\Http\Controllers\ProductionController@update');
    Route::get('transfer-production-reset', 'App\Http\Controllers\ProductionController@reset');
    Route::get('transfer-production/print/{id}', 'App\Http\Controllers\ProductionController@Print');
    Route::get('transfer-production/stock-in/{id}', 'App\Http\Controllers\ProductionController@PrintStockIn');
    Route::get('transfer-production/stock-out/{id}', 'App\Http\Controllers\ProductionController@PrintStockOut');
    Route::get('production-setting-modal', 'App\Http\Controllers\ProductionController@formSettingAjax');
    Route::post('production-form-settings', 'App\Http\Controllers\ProductionController@Settings');
   
    
    
    

    Route::resource('sales-return', SalesReturnController::class);
    Route::post('sales-return/update', 'App\Http\Controllers\SalesReturnController@update');
    Route::get('sales-return-reset', 'App\Http\Controllers\SalesReturnController@reset');
    Route::get('sales-return/print/{id}', 'App\Http\Controllers\SalesReturnController@Print');
    Route::post('sales-return-settings', 'App\Http\Controllers\SalesReturnController@Settings');
    Route::get('sales-return-setting-modal', 'App\Http\Controllers\SalesReturnController@formSettingAjax');
    Route::get('sales-order-search', 'App\Http\Controllers\SalesReturnController@orderSearch');
    Route::get('check-sales-return-available-qty', 'App\Http\Controllers\SalesReturnController@checkAvailableSalesQty');
    Route::post('sales-order-details', 'App\Http\Controllers\SalesReturnController@salesOrderDetails');
    Route::get('sales-return-money-receipt/{id}', 'App\Http\Controllers\SalesReturnController@moneyReceipt');
    
    

    Route::resource('purchase-return', PurchaseReturnController::class);
    Route::post('purchase-return/update', 'App\Http\Controllers\PurchaseReturnController@update');
    Route::get('purchase-return-reset', 'App\Http\Controllers\PurchaseReturnController@reset');
    Route::get('purchase-return/print/{id}', 'App\Http\Controllers\PurchaseReturnController@purchasePrint');
    Route::post('purchase-return-settings', 'App\Http\Controllers\PurchaseReturnController@purchaseSettings');
    Route::get('purchase-order-search', 'App\Http\Controllers\PurchaseReturnController@purchaseOrderSearch');
    Route::post('purchase-order-details', 'App\Http\Controllers\PurchaseReturnController@purchaseOrderDetails');
    Route::get('purchase-return-money-receipt/{id}', 'App\Http\Controllers\PurchaseReturnController@moneyReceipt');

    Route::resource('unit', UnitsController::class);
    Route::post('unit/update', 'App\Http\Controllers\UnitsController@update');
    Route::get('unit-reset', 'App\Http\Controllers\UnitsController@reset');

    Route::resource('voucher', VoucherMasterController::class);
    Route::post('voucher/update', 'App\Http\Controllers\VoucherMasterController@update');
    Route::get('voucher/print/{id}', 'App\Http\Controllers\VoucherMasterController@voucherPrint');
    Route::get('voucher-main-print', 'App\Http\Controllers\VoucherMasterController@voucherMainPrint');
    Route::get('voucher-detail-print', 'App\Http\Controllers\VoucherMasterController@voucherDetailPrint');
    Route::get('voucher-reset', 'App\Http\Controllers\VoucherMasterController@reset');
    Route::get('money-receipt-print/{id}', 'App\Http\Controllers\VoucherMasterController@moneyReceiptPrint');
    Route::get('money-payment-receipt/{id}', 'App\Http\Controllers\VoucherMasterController@moneyPaymentReceiptPrint');

    Route::post('master-base-detils','App\Http\Controllers\VoucherMasterController@masterBseDetails');
    Route::get('cash-receive','App\Http\Controllers\VoucherMasterController@cashReceive');
    Route::get('bank-receive','App\Http\Controllers\VoucherMasterController@bankReceive');
    Route::get('cash-payment','App\Http\Controllers\VoucherMasterController@cashPayment');
    Route::get('bank-payment','App\Http\Controllers\VoucherMasterController@bankPayment');



    Route::post('voucher-save','App\Http\Controllers\VoucherMasterController@voucherSave');


    //Account Report Section 
    Route::get('ledger-report','App\Http\Controllers\AccountReportController@ledgerReprt');
    Route::get('ledger-report-show','App\Http\Controllers\AccountReportController@ledgerReprtShow');
    Route::get('group-ledger','App\Http\Controllers\AccountReportController@groupLedger');

    Route::post('group-base-ledger-report','App\Http\Controllers\AccountReportController@groupBaseLedgerReport');
    Route::get('group-base-ledger-filter-reset','App\Http\Controllers\AccountReportController@groupBaseLedgerFilterReset');
    Route::get('LedgerReportFilterReset','App\Http\Controllers\AccountReportController@LedgerReportFilterReset');

    Route::post('ledger-summary-report','App\Http\Controllers\AccountReportController@ledgerSummaryReport');
    Route::get('ledger-summary-filter-reset','App\Http\Controllers\AccountReportController@ledgerSummaryFilterReset');
    Route::get('filter-ledger-summary','App\Http\Controllers\AccountReportController@filterLedgerSummarray');



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

    Route::get('cash-book','App\Http\Controllers\AccountReportController@cashBook');
    Route::get('cash-book-filter-reset','App\Http\Controllers\AccountReportController@cashBookFilterReset');
    Route::post('cash-book-report','App\Http\Controllers\AccountReportController@cashBookReport');

    Route::get('day-book','App\Http\Controllers\AccountReportController@dayBook');
    Route::get('day-book-filter-reset','App\Http\Controllers\AccountReportController@dayBookFilterReset');
    Route::post('day-book-report','App\Http\Controllers\AccountReportController@dayBookReport');

    Route::get('user-wise-collection-payment','App\Http\Controllers\AccountReportController@userReceiptPayment');
    Route::get('user-wise-collection-payment-filter-reset','App\Http\Controllers\AccountReportController@userReceiptPaymentFilterReset');
    Route::post('user-wise-collection-payment-report','App\Http\Controllers\AccountReportController@userReceiptPaymentReport');

    Route::get('date-wise-invoice-print','App\Http\Controllers\AccountReportController@dateWiseInvoice');
    Route::get('date-wise-invoice-print-filter-reset','App\Http\Controllers\AccountReportController@dateWiseInvoiceFilterReset');
    Route::post('date-wise-invoice-print-report','App\Http\Controllers\AccountReportController@dateWiseInvoiceReport');

    Route::get('bank-book','App\Http\Controllers\AccountReportController@bankBook');
    Route::get('bank-book-filter-reset','App\Http\Controllers\AccountReportController@bankBookFilterReset');
    Route::post('bank-book-report','App\Http\Controllers\AccountReportController@bankBookReport');

    Route::get('receipt-payment','App\Http\Controllers\AccountReportController@receiptPayment');
    Route::get('receipt-payment-filter-reset','App\Http\Controllers\AccountReportController@receiptPaymentFilterReset');
    Route::post('receipt-payment-report','App\Http\Controllers\AccountReportController@receiptPaymentReport');
    
    //Searching section 
    Route::any('ledger-search','App\Http\Controllers\AccountLedgerController@ledger_search');
    Route::any('main-ledger-search','App\Http\Controllers\AccountLedgerController@mainLedgerSearch');
    Route::any('type_base_group','App\Http\Controllers\AccountLedgerController@type_base_group');
    Route::any('group-base-ledger','App\Http\Controllers\AccountLedgerController@groupBaseLedger');
    Route::any('group-base-bill-party-ledger','App\Http\Controllers\AccountLedgerController@groupBaseBillParty');
    
    Route::any('group-base-ledger-purchase-statement','App\Http\Controllers\AccountLedgerController@groupBaseLedgerPurchaseStatement');
    Route::any('chart-of-account','App\Http\Controllers\AccountReportController@chartOfAccount');
    
    
    
    
    //################################
    //  Inventory Report Section Start
    //################################
    

    Route::post('report-bill-party-statement','App\Http\Controllers\InventoryReportController@reportBillOfPartyStatement');
    Route::get('bill-party-statement','App\Http\Controllers\InventoryReportController@filterBillOfPartyStatement');
    Route::get('reset-bill-party-statement','App\Http\Controllers\InventoryReportController@resetBillOfPartyStatement');
    

    Route::post('report-barcode-history','App\Http\Controllers\InventoryReportController@reportBarcodeHistory');
    Route::get('barcode-history','App\Http\Controllers\InventoryReportController@filterBarcodeHistory');
    Route::get('reset-barcode-history','App\Http\Controllers\InventoryReportController@resetBarcodeHistory');   

    Route::post('report-date-wise-purchase','App\Http\Controllers\InventoryReportController@reportDateWisePurchaseStatement');
    Route::get('date-wise-purchase','App\Http\Controllers\InventoryReportController@filterDateWisePurchaseStatement');
    Route::get('reset-date-wise-purchase','App\Http\Controllers\InventoryReportController@resetDateWisePurchaseStatement'); 



    Route::post('report-date-wise-purchase-return','App\Http\Controllers\InventoryReportController@reportDateWisePurchaseReturnStatement');
    Route::get('purchase-return-detail','App\Http\Controllers\InventoryReportController@filterDateWisePurchaseReturnStatement');
    Route::get('reset-date-wise-purchase-return','App\Http\Controllers\InventoryReportController@resetDateWisePurchaseReturnStatement');
    Route::any('group-base-ledger-purchase-return','App\Http\Controllers\AccountLedgerController@groupBaseLedgerPurchaseReturnStatement');

    Route::post('report-date-wise-sales','App\Http\Controllers\InventoryReportController@reportDateWiseSalesStatement');
    Route::get('date-wise-sales','App\Http\Controllers\InventoryReportController@filterDateWiseSalesStatement');
    Route::get('reset-date-wise-sales','App\Http\Controllers\InventoryReportController@resetDateWiseSalesStatement');
    Route::any('group-base-ledger-sales','App\Http\Controllers\AccountLedgerController@groupBaseLedgerSalesStatement');

    Route::post('report-date-wise-sales-return','App\Http\Controllers\InventoryReportController@reportDateWiseSalesReturnStatement');
    Route::get('sales-return-detail','App\Http\Controllers\InventoryReportController@filterDateWiseSalesReturnStatement');
    Route::get('reset-date-wise-sales-return','App\Http\Controllers\InventoryReportController@resetDateWiseSalesReturnStatement');
    Route::any('group-base-ledger-sales-return','App\Http\Controllers\AccountLedgerController@groupBaseLedgerSalesReturnStatement');

    Route::post('report-stock-possition','App\Http\Controllers\InventoryReportController@reportStockPossition');
    Route::get('stock-possition','App\Http\Controllers\InventoryReportController@filterStockPossition');
    Route::get('reset-stock-possition','App\Http\Controllers\InventoryReportController@resetStockPossition');
    Route::get('stock-possition-cat-item','App\Http\Controllers\InventoryReportController@stockPossitionCatItem');


    Route::post('report-stock-ledger','App\Http\Controllers\InventoryReportController@reportStockLedger');
    Route::get('stock-ledger','App\Http\Controllers\InventoryReportController@filterStockLedger');
    Route::get('reset-stock-ledger','App\Http\Controllers\InventoryReportController@resetStockLedger');
    Route::get('stock-ledger-cat-item','App\Http\Controllers\InventoryReportController@stockLedgerCatItem');

    Route::post('report-stock-value','App\Http\Controllers\InventoryReportController@reportStockValue');
    Route::get('stock-value','App\Http\Controllers\InventoryReportController@filterStockValue');
    Route::get('reset-stock-value','App\Http\Controllers\InventoryReportController@resetStockValue');
    Route::get('stock-value-cat-item','App\Http\Controllers\InventoryReportController@stockValueCatItem');

    Route::post('report-stock-value-register','App\Http\Controllers\InventoryReportController@reportStockValueRegister');
    Route::get('stock-value-register','App\Http\Controllers\InventoryReportController@filterStockValueRegister');
    Route::get('reset-stock-value-register','App\Http\Controllers\InventoryReportController@resetStockValueRegister');
    Route::get('stock-value-register-cat-item','App\Http\Controllers\InventoryReportController@stockValueRegisterCatItem');

    Route::post('report-gross-profit','App\Http\Controllers\InventoryReportController@reportGrossProfit');
    Route::get('gross-profit','App\Http\Controllers\InventoryReportController@filterGrossProfit');
    Route::get('reset-gross-profit','App\Http\Controllers\InventoryReportController@resetGrossProfit');
    Route::get('gross-profit-cat-item','App\Http\Controllers\InventoryReportController@grossProfitCatItem');

    Route::post('report-expired-item','App\Http\Controllers\InventoryReportController@reportExpiredItem');
    Route::get('expired-item','App\Http\Controllers\InventoryReportController@filterExpiredItem');
    Route::get('reset-expired-item','App\Http\Controllers\InventoryReportController@resetExpiredItem');
    Route::get('expired-item-cat-item','App\Http\Controllers\InventoryReportController@expiredItemCatItem');

    Route::get('shortage-item','App\Http\Controllers\InventoryReportController@filterShortageItem');
    Route::post('report-shortage-item','App\Http\Controllers\InventoryReportController@reportShortageItem');
    Route::get('reset-shortage-item','App\Http\Controllers\InventoryReportController@resetShortageItem');
    Route::get('shortage-item-cat-item','App\Http\Controllers\InventoryReportController@shortageItemCatItem');

    

    //################################
    //  Inventory Report Section End
    //################################
    

    //Admin section end

    //Admin section Route Controller
    Route::get('admin-settings','App\Http\Controllers\GeneralSettingsController@settings')->name('admin-settings');
    Route::post('admin-settings-store','App\Http\Controllers\GeneralSettingsController@settingsSave')->name('admin-settings-store');
    Route::post('_lock_action','App\Http\Controllers\GeneralSettingsController@lockAction');
    Route::post('all-lock','App\Http\Controllers\GeneralSettingsController@allLockSystem');
    Route::get('all-lock','App\Http\Controllers\GeneralSettingsController@allLock');
    Route::get('lock-reset','App\Http\Controllers\GeneralSettingsController@lockReset');
});

