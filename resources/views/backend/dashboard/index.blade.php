@extends('backend.layouts.app')
@section('title',$settings->name ?? '')
@section('content')
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
    <!-- /.content-header -->
<div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6">
            <div class="card">
              <div class="card-header border-0">
                <h3 class="card-title">Quick Link</h3>
                <div class="card-tools"></div>
              </div>
              <div class="card-body table-responsive p-0">
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
            <br>

            <!--  -->

            <div class="card">
              <div class="card-header border-0">
                <h3 class="card-title">Top Sale Products</h3>
                <div class="card-tools"></div>
              </div>
              <div class="card-body table-responsive p-0">
                <table class="table table-striped table-valign-middle">
                  <thead>
                  <tr>
                    <th>Product</th>
                    <th class="text-right">Qty</th>
                    <th class="text-right">Sales Amount</th>
                  </tr>
                  </thead>
                  @php
                   $users = Auth::user();
        $_top_sales_items = \DB::select( " SELECT t1._item_name, SUM(-t1._qty) AS _qty,SUM(-(t1._qty)*t1._rate) AS _sales_value
FROM item_inventories AS t1
WHERE t1._status=1 AND t1._branch_id IN(".$users->branch_ids.") 
  AND t1._cost_center_id IN(".$users->cost_center_ids.") AND t1._transection IN('Sales','Sales Return')
    GROUP BY t1._item_id ORDER BY SUM(-(t1._qty)*t1._rate) DESC LIMIT 10 " );

                  @endphp
                  <tbody>
                    @forelse($_top_sales_items as $value)
                  <tr>
                    <td> {!! $value->_item_name ?? '' !!}  </td>
                    <td class="text-right"> {!! _report_amount($value->_qty ?? 0) !!}  </td>
                    <td class="text-right"> {!! _report_amount($value->_sales_value ?? 0) !!}  </td>
                  </tr>
               
              @empty
              @endforelse
                  
                  </tbody>
                </table>
              </div>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col-md-6 -->
          <div class="col-lg-6">
            <div class="card ">
              <div class="card-header border-0">
                <h3 class="card-title">Top Account Ledger</h3>
                <div class="card-tools"></div>
              </div>
              <div class="card-body table-responsive p-0">
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
AND t1.`_cost_center` IN(".$users->cost_center_ids.")
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
          <br>
            <div class="card">
              <div class="card-header border-0">
                <h3 class="card-title">Slow Sale Products</h3>
                <div class="card-tools"></div>
              </div>
              <div class="card-body table-responsive p-0">
                <table class="table table-striped table-valign-middle">
                  <thead>
                  <tr>
                    <th>Product</th>
                    <th class="text-right">Qty</th>
                    <th class="text-right">Sales Amount</th>
                  </tr>
                  </thead>
                  @php
                   $users = Auth::user();
        $_slow_sales_items = \DB::select( " SELECT t1._item_name, SUM(-t1._qty) AS _qty,SUM(-(t1._qty)*t1._rate) AS _sales_value
FROM item_inventories AS t1
WHERE t1._status=1 AND t1._branch_id IN(".$users->branch_ids.") 
  AND t1._cost_center_id IN(".$users->cost_center_ids.") AND t1._transection IN('Sales','Sales Return')
    GROUP BY t1._item_id ORDER BY SUM(-(t1._qty)*t1._rate) ASC LIMIT 10 " );

                  @endphp
                  <tbody>
                    @forelse($_slow_sales_items as $value)
                  <tr>
                    <td> {!! $value->_item_name ?? '' !!}  </td>
                    <td class="text-right"> {!! _report_amount($value->_qty ?? 0) !!}  </td>
                    <td class="text-right"> {!! _report_amount($value->_sales_value ?? 0) !!}  </td>
                  </tr>
               
              @empty
              @endforelse
                  
                  </tbody>
                </table>
              </div>
            </div>
            <!-- /.card -->

            
          </div>
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </div>
@endsection
@section('script')
<script src="{{asset('plugins/chart.js/Chart.min.js')}}"></script>
<script src="{{asset('dist/js/pages/dashboard3.js')}}"></script>

@endsection