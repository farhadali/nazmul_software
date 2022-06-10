@extends('backend.layouts.app')
@section('title',$settings->name ?? '')
@section('content')
@php
$users = Auth::user();
@endphp
<!-- Content Header (Page header) -->


    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{url('home')}}">Home</a></li>
              <li class="breadcrumb-item active">Dashboard </li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <style type="text/css">
      .card-title {
        float: none;
    text-align: center !important;

    font-size: 1.1rem;
    font-weight: 400;
    margin: 0;
    padding: 5px;
}
    </style>
    <!-- /.content-header -->
<div class="content" >
      <div class="container-fluid">
        <div class="row">
          @can('quick-link')
          <div class="col-md-6">
            <div class="card ">
              <div class="card-header border-0">
                <h3 class="card-title">Quick Link</h3>
                <div class="card-tools"></div>
              </div>
              <div class="card-body table-responsive p-0 info-box">
                  <table class="table table-striped table-valign-middle">
                    <tr>
                      <th>
                         @can('voucher-list')
                          <div style="display: flex;">
                           <a href="{{url('voucher')}}" class="dropdown-item">
                              <i class="fa fa-fax mr-2" aria-hidden="true"></i> Voucher
                            </a>
                             <a  href="{{route('voucher.create')}}" class="dropdown-item text-right">
                              <i class="nav-icon fas fa-plus"></i>
                            </a>
                          </div>
                           @endcan 
                      </th>
                  </tr>
                    <tr>
                      <th>
                         @can('purchase-list')
                           <div style="display: flex;">
                           <a href="{{url('purchase')}}" class="dropdown-item">
                            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i> Purchase
                          </a>
                           <a  href="{{route('purchase.create')}}" class="dropdown-item text-right">
                            <i class="nav-icon fas fa-plus"></i>
                          </a>
                        </div>
                         @endcan
                      </th>
                  </tr>
                    <tr>
                      <th>
                         @can('purchase-return-list')
                            <div style="display: flex;">
                               <a href="{{url('purchase-return')}}" class="dropdown-item">
                                <i class="fa fa-list-alt mr-2" aria-hidden="true"></i> Purchase Return
                              </a>
                               <a  href="{{route('purchase-return.create')}}" class="dropdown-item text-right">
                                <i class="nav-icon fas fa-plus"></i>
                              </a>
                            </div>
                             @endcan
                      </th>
                  </tr>
                    <tr>
                      <th>
                         @can('sales-list')
                        <div style="display: flex;">
                           <a href="{{url('sales')}}" class="dropdown-item">
                            <i class="fa fa-shopping-cart mr-2" aria-hidden="true"></i> Sales
                          </a>
                           <a  href="{{route('sales.create')}}" class="dropdown-item text-right">
                            <i class="nav-icon fas fa-plus"></i>
                          </a>
                        </div>
                         @endcan 
                      </th>
                  </tr>
                    <tr>
                      <th>
                        @can('sales-return-list')
          
                        <div style="display: flex;">
                           <a href="{{url('sales-return')}}" class="dropdown-item">
                            <i class="fa fa-shopping-cart mr-2" aria-hidden="true"></i> Sales Return
                          </a>
                           <a  href="{{route('sales-return.create')}}" class="dropdown-item text-right">
                            <i class="nav-icon fas fa-plus"></i>
                          </a>
                        </div>
                          
                         @endcan  
                      </th>
                  </tr>
                  </table>
              </div>
            </div>
          </div>
          @endcan


          <div class="col-md-6">

            <div class="row">
@can('total-purchase')
@php        
$_purchase = \DB::select( " SELECT  t1._account_ledger,SUM(t1.`_dr_amount`) AS _balance  FROM `accounts` AS t1 
INNER JOIN purchase_form_settings AS t2 ON t1.`_account_ledger`=t2._default_purchase
WHERE t1._status=1 AND t1.`_branch_id` IN(".$users->branch_ids.") AND t1.`_cost_center` IN(".$users->cost_center_ids.")  " );
@endphp
               <div class="col-md-6 col-sm-6 col-xs-12 col-custom">
                 <div class="info-box info-box-new-style">
                      <span class="info-box-icon bg-aqua"><i class="fa fa-shopping-basket  text-white" aria-hidden="true"></i>
</span>
                        @forelse($_purchase as $val)
                      <div class="info-box-content">
                        <span class="info-box-text"><h4>Total  {{ _ledger_name($val->_account_ledger) }}</h4></span>
                        <span class="info-box-number total_purchase"><h3> {{prefix_taka()}}. {{ _report_amount($val->_balance ?? 0) }}</h3></span>
                      </div>
                      @empty
                      @endforelse
                      <!-- /.info-box-content -->
                 </div>
                 <!-- /.info-box -->
              </div>
@endcan
@can('total-sales')
@php        
$data = \DB::select( " SELECT  t1._account_ledger,SUM(t1.`_cr_amount`-t1._dr_amount) AS _balance  FROM `accounts` AS t1 
INNER JOIN sales_form_settings AS t2 ON t1.`_account_ledger`=t2._default_sales
WHERE t1._status=1 AND t1.`_branch_id` IN(".$users->branch_ids.") AND t1.`_cost_center` IN(".$users->cost_center_ids.")  " );
@endphp
               <div class="col-md-6 col-sm-6 col-xs-12 col-custom">
                 <div class="info-box info-box-new-style">
                      <span class="info-box-icon bg-yellow"><i class="fa fa-shopping-cart text-white" aria-hidden="true"></i></span>
                        @forelse($data as $val)
                      <div class="info-box-content">
                        <span class="info-box-text"><h4>Total  {{ _ledger_name($val->_account_ledger) }}</h4></span>
                        <span class="info-box-number total_purchase"><h3> {{prefix_taka()}}. {{ _report_amount($val->_balance ?? 0) }}</h3></span>
                      </div>
                      @empty
                      @endforelse
                      <!-- /.info-box-content -->
                 </div>
                 <!-- /.info-box -->
              </div>
@endcan
@can('total-purchase-return')
@php        
$data = \DB::select( " SELECT  t1._account_ledger,SUM(t1.`_cr_amount`) AS _balance  FROM `accounts` AS t1 
INNER JOIN purchase_return_form_settings AS t2 ON t1.`_account_ledger`=t2._default_purchase
WHERE t1._status=1 AND t1.`_branch_id` IN(".$users->branch_ids.") AND t1.`_cost_center` IN(".$users->cost_center_ids.")  " );
@endphp
               <div class="col-md-6 col-sm-6 col-xs-12 col-custom">
                 <div class="info-box info-box-new-style">
                      <span class="info-box-icon bg-red"><i class="fa fa-shopping-basket  text-white" aria-hidden="true"></i></span>
                        @forelse($data as $val)
                      <div class="info-box-content">
                        <span class="info-box-text"><h4>Total  {{ _ledger_name($val->_account_ledger) }}</h4></span>
                        <span class="info-box-number total_purchase"><h3> {{prefix_taka()}}. {{ _report_amount($val->_balance ?? 0) }}</h3></span>
                      </div>
                      @empty
                      @endforelse
                      <!-- /.info-box-content -->
                 </div>
                 <!-- /.info-box -->
              </div>
@endcan
@can('total-sales-return')
@php        
$data = \DB::select( " SELECT  t1._account_ledger,-SUM(t1.`_cr_amount`-t1._dr_amount) AS _balance  FROM `accounts` AS t1 
INNER JOIN sales_return_form_settings AS t2 ON t1.`_account_ledger`=t2._default_sales
WHERE t1._status=1 AND t1.`_branch_id` IN(".$users->branch_ids.") AND t1.`_cost_center` IN(".$users->cost_center_ids.")  " );
@endphp
               <div class="col-md-6 col-sm-6 col-xs-12 col-custom ">
                 <div class="info-box info-box-new-style">
                      <span class="info-box-icon bg-red"><i class="fa fa-shopping-cart   text-white" aria-hidden="true"></i></span>
                        @forelse($data as $val)
                      <div class="info-box-content">
                        <span class="info-box-text"><h4>Total  {{ _ledger_name($val->_account_ledger) }}</h4></span>
                        <span class="info-box-number total_purchase"><h3> {{prefix_taka()}}. {{ _report_amount($val->_balance ?? 0) }}</h3></span>
                      </div>
                      @empty
                      @endforelse
                      <!-- /.info-box-content -->
                 </div>
                 <!-- /.info-box -->
              </div>
@endcan




            </div>
          </div>


  <div class="col-lg-12 mt-2">
   <div class="card bg-white">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">Daily Sales Report</h3>
                  
                </div>
              </div>
              <div class="card-body">
                

                <div class="position-relative mb-4">
                  <canvas id="visitors-chart" height="200"></canvas>
                </div>
              </div>
            </div>
  </div>
  <div class="col-md-12 mt-2">
    <div class="card bg-white">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">Monthly Sales/Sales Return/Purchase/Purchase Return Report</h3>
                 
                </div>
              </div>
              <div class="card-body">
                

                <div class="position-relative mb-4">
                  <canvas id="sales-chart" height="200"></canvas>
                </div>

                
              </div>
            </div>
  </div>
  

  


          <!-- /.col-md-6 -->
           @can('top-due-customer')
          <div class="col-md-6 mt-2">
            <div class="card ">
              <div class="card-header border-0">
                <h3 class="card-title">Top Due Customer</h3>
                <div class="card-tools"></div>
              </div>
              <div class="card-body table-responsive p-0 info-box">
                <table class="table table-striped table-valign-middle">
                  <thead>
                  <tr>
                    <th>Ledger</th>
                    <th class="text-right">Amount</th>
                  </tr>
                  </thead>
                  @php
        
        $accounts = \DB::select( " SELECT  t2._name,SUM(t1.`_dr_amount`-t1.`_cr_amount`) AS _balance  
FROM `accounts` AS t1 
INNER JOIN account_ledgers AS t2 ON t1._account_ledger=t2.id
WHERE t1._status=1 AND t1.`_branch_id` IN(".$users->branch_ids.") 
AND t1.`_cost_center` IN(".$users->cost_center_ids.") AND t1._account_head=13
GROUP BY t1._account_ledger ORDER BY ABS(SUM(t1.`_dr_amount`-t1.`_cr_amount`)) DESC
LIMIT 5 " );


                  @endphp
                  <tbody>
                    @forelse($accounts as $val)
                  <tr>
                    <td>
                     {!! $val->_name ?? '' !!}
                    </td>
                    <td class="text-right"> {!! _show_amount_dr_cr(_report_amount($val->_balance ?? 0)) !!}</td>
                    
                  </tr>
                  @empty
                  @endforelse
                  
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          @endcan
          @can('top-payable-supplier')
          <div class="col-md-6 mt-2">
            <div class="card ">
              <div class="card-header border-0">
                <h3 class="card-title">Top Payable Supplier</h3>
                <div class="card-tools"></div>
              </div>
              <div class="card-body table-responsive p-0 info-box">
                <table class="table table-striped table-valign-middle">
                  <thead>
                  <tr>
                    <th>Ledger</th>
                    <th class="text-right">Amount</th>
                  </tr>
                  </thead>
                  @php
        
        $accounts = \DB::select( " SELECT  t2._name,SUM(t1.`_dr_amount`-t1.`_cr_amount`) AS _balance  
FROM `accounts` AS t1 
INNER JOIN account_ledgers AS t2 ON t1._account_ledger=t2.id
WHERE t1._status=1 AND t1.`_branch_id` IN(".$users->branch_ids.") 
AND t1.`_cost_center` IN(".$users->cost_center_ids.") AND t1._account_head=12
GROUP BY t1._account_ledger ORDER BY ABS(SUM(t1.`_dr_amount`-t1.`_cr_amount`)) DESC
LIMIT 5 " );


                  @endphp
                  <tbody>
                    @forelse($accounts as $val)
                  <tr>
                    <td>
                     {!! $val->_name ?? '' !!}
                    </td>
                    <td class="text-right"> {!! _show_amount_dr_cr(_report_amount($val->_balance ?? 0)) !!}</td>
                    
                  </tr>
                  @empty
                  @endforelse
                  
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          @endcan
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </div>


<?php
  $filtered_month =[];
  $filtered_purchase = [];
  $filtered_purchase_return = [];
  $filtered_sales = [];
  $filtered_sales_return = [];
  
  $qur = " select DATE_FORMAT(_date, '%m-%Y') as _month from accounts GROUP BY YEAR(_date),MONTH(_date) ASC ";
  $months = \DB::select($qur);
  
  $purchases = " select round(sum(_dr_amount)) as _amount,DATE_FORMAT(_date, '%m-%Y') as _month from accounts where _transaction='Purchase' GROUP BY YEAR(_date),MONTH(_date) ASC ";
  $purchases_amount = \DB::select($purchases);
  
  $purchase_return = " select round(sum(_cr_amount)) as _amount,DATE_FORMAT(_date, '%m-%Y') as _month from accounts where (_transaction collate utf8mb4_unicode_ci = 'Purchase Return') GROUP BY YEAR(_date),MONTH(_date) ASC ";
  $purchase_return_amounts = \DB::select($purchase_return);
  
  $sales = " select round(sum(_cr_amount)) as _amount,DATE_FORMAT(_date, '%m-%Y') as _month from accounts where (_transaction collate utf8mb4_unicode_ci = 'Sales') GROUP BY YEAR(_date),MONTH(_date) ASC ";
  $sales_amounts = \DB::select($sales);
  
  $sales_return = " select round(sum(_dr_amount)) as _amount,DATE_FORMAT(_date, '%m-%Y') as _month from accounts where (_transaction collate utf8mb4_unicode_ci = 'Sales Return') GROUP BY YEAR(_date),MONTH(_date) ASC ";
  $sales_return_amounts = \DB::select($sales_return);
  
  $purchase_return_amount = 0;
  $sales_amount = 0;
  $purchase_amount = 0;
  $sales_return_amount = 0;
  
  $array_count = sizeof($months);
  $avoid_value = ($array_count - 12);
  if(sizeof($months) > 12){
    $filtered_purchase = array_fill(0,12,0);
    $filtered_purchase_return = array_fill(0,12,0);
    $filtered_sales = array_fill(0,12,0);
    $filtered_sales_return = array_fill(0,12,0);
    
    
    
    foreach($months as $key=> $month){
      if( $key >= $avoid_value ){
        array_push($filtered_month,$month->_month);
      }
    }
    foreach( $filtered_month as $key=>$month_p){
        //For Purchase array data 
        foreach($purchases_amount as  $purchases_am){
          if($month_p == $purchases_am->_month ){
            if(strlen($purchases_am->_amount) !==0){
              $filtered_purchase[$key] = floatval($purchases_am->_amount);
            }
          }
        }
        //For Sales array data 
        foreach($sales_amounts as $sales_am){
          if($month_p == $sales_am->_month ){
            if(strlen($sales_am->_amount) !==0){
              $filtered_sales[$key] = floatval($sales_am->_amount);
            }
          }
        }
        //For Sales Return array data 
        foreach($sales_return_amounts as $sales_return_am){
          if($month_p == $sales_return_am->_month ){
            if(strlen($sales_return_am->_amount) !==0){
              $filtered_sales_return[$key] = floatval($sales_return_am->_amount);
            }
          }
        }
        //For Purchase Return array data 
        foreach($purchase_return_amounts as $purchase_return_am){
          if($month_p == $purchase_return_am->_month ){
            if(strlen($purchase_return_am->_amount) !==0){
              $filtered_purchase_return[$key] = floatval($purchase_return_am->_amount);
            }
          }
        }
      }
  }else{
    
    $filtered_purchase = array_fill(0,$array_count,0);
    $filtered_purchase_return = array_fill(0,$array_count,0);
    $filtered_sales = array_fill(0,$array_count,0);
    $filtered_sales_return = array_fill(0,$array_count,0);
    
    foreach($months as $key=> $month){
        array_push($filtered_month,$month->_month);
      //For Purchase array data 
        foreach($purchases_amount as $purchases_am){
          if($month->_month == $purchases_am->_month ){
            if(strlen($purchases_am->_amount) !==0){
              $filtered_purchase[$key] = floatval($purchases_am->_amount);
            }
          }
        }
        //For Sales array data 
        foreach($sales_amounts as $sales_am){
          if($month->_month == $sales_am->_month ){
            if(strlen($sales_am->_amount) !==0){
              $filtered_sales[$key] = floatval($sales_am->_amount);
            }
          }
        }
        //For Sales Return array data 
        foreach($sales_return_amounts as $sales_return_am){
          if($month->_month == $sales_return_am->_month ){
            if(strlen($sales_return_am->_amount) !==0){
              $filtered_sales_return[$key] = floatval($sales_return_am->_amount);
            }
          }
        }
        //For Purchase Return array data 
        foreach($purchase_return_amounts as $purchase_return_am){
          if($month->_month == $purchase_return_am->_month ){
            if(strlen($purchase_return_am->_amount) !==0){
              $filtered_purchase_return[$key] = floatval($purchase_return_am->_amount);
            }
          }
        }
      
    }
  }
  //print_r($filtered_month);
  ?>


</div>


@endsection
@section('script')
<script src="{{asset('plugins/chart.js/Chart.min.js')}}"></script>
<script type="text/javascript">




    
  

  
    var arrayJavascript = <?php echo json_encode($filtered_month) ?>;
  var filterd_purchase_amounts = <?php echo json_encode($filtered_purchase) ?>;
  var filtered_sales_amounts =  <?php echo json_encode($filtered_sales) ?>;
  var filtered_sales_return_amounts =  <?php echo json_encode($filtered_sales_return) ?>;
  var filtered_purchase_return_amounts =  <?php echo json_encode($filtered_sales_return) ?>;
  console.log(filtered_purchase_return_amounts)

  $(function () {
  'use strict'

  var ticksStyle = {
    fontColor: '#495057',
    fontStyle: 'bold'
  }

  var mode = 'index'
  var intersect = true

  var $salesChart = $('#sales-chart')
  // eslint-disable-next-line no-unused-vars
  var salesChart = new Chart($salesChart, {
    type: 'bar',
    data: {
      labels: arrayJavascript,
      datasets: [
        {
          backgroundColor: '#007bff',
          borderColor: '#007bff',
          label: 'Sales',
          data: filtered_sales_amounts
        },
        {
          backgroundColor: '#ced4da',
          borderColor: '#ced4da',
          label: 'Sales Return',
          data: filtered_sales_return_amounts
        },
        {
          backgroundColor: '#ced4da',
          borderColor: '#ced4da',
          label: 'Purchase',
          data: filterd_purchase_amounts
        },
        {
          backgroundColor: '#ced4da',
          borderColor: '#ced4da',
          label: 'Purchase Return',
          data: filtered_purchase_return_amounts
        }
      ]
    },
    options: {
      maintainAspectRatio: false,
      tooltips: {
        mode: mode,
        intersect: intersect
      },
      hover: {
        mode: mode,
        intersect: intersect
      },
      legend: {
        display: false
      },
      scales: {
        yAxes: [{
          // display: false,
          gridLines: {
            display: true,
            lineWidth: '4px',
            color: 'rgba(0, 0, 0, .2)',
            zeroLineColor: 'transparent'
          },
          ticks: $.extend({
            beginAtZero: true,

            // Include a dollar sign in the ticks
            callback: function (value) {
              if (value >= 1000) {
                value /= 1000
                value += 'k'
              }

              return 'Tk.' + value
            }
          }, ticksStyle)
        }],
        xAxes: [{
          display: true,
          gridLines: {
            display: false
          },
          ticks: ticksStyle
        }]
      }
    }
  })

  var $visitorsChart = $('#visitors-chart')
  // eslint-disable-next-line no-unused-vars
  var visitorsChart = new Chart($visitorsChart, {
    data: {
      labels: ['18th', '20th', '22nd', '24th', '26th', '28th', '30th'],
      datasets: [{
        type: 'line',
        data: [100, 120, 170, 167, 180, 177, 160],
        backgroundColor: 'transparent',
        borderColor: '#007bff',
        pointBorderColor: '#007bff',
        pointBackgroundColor: '#007bff',
        fill: false
        // pointHoverBackgroundColor: '#007bff',
        // pointHoverBorderColor    : '#007bff'
      },
      {
        type: 'line',
        data: [60, 80, 70, 67, 80, 77, 100],
        backgroundColor: 'tansparent',
        borderColor: '#ced4da',
        pointBorderColor: '#ced4da',
        pointBackgroundColor: '#ced4da',
        fill: false
        // pointHoverBackgroundColor: '#ced4da',
        // pointHoverBorderColor    : '#ced4da'
      }]
    },
    options: {
      maintainAspectRatio: false,
      tooltips: {
        mode: mode,
        intersect: intersect
      },
      hover: {
        mode: mode,
        intersect: intersect
      },
      legend: {
        display: false
      },
      scales: {
        yAxes: [{
          // display: false,
          gridLines: {
            display: true,
            lineWidth: '4px',
            color: 'rgba(0, 0, 0, .2)',
            zeroLineColor: 'transparent'
          },
          ticks: $.extend({
            beginAtZero: true,
            suggestedMax: 200
          }, ticksStyle)
        }],
        xAxes: [{
          display: true,
          gridLines: {
            display: false
          },
          ticks: ticksStyle
        }]
      }
    }
  })
})
</script>

@endsection