@extends('backend.layouts.app')
@section('title',$page_name)

@section('content')
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 _page_name">{!! $page_name ?? '' !!} </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <!-- <li class="breadcrumb-item"><a href="{{url('home')}}">Home</a></li> -->
              <li class="breadcrumb-item active">
                @can('item-information-create')
                        
                    <a title="Add New" class="btn btn-info btn-sm" href="{{ route('item-information.create') }}"> <i class="nav-icon fas fa-plus"></i> </a>
                @endcan
               </li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    @if ($message = Session::get('success'))
    <div class="alert alert-success">
      <p>{{ $message }}</p>
    </div>
    @endif
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-header border-0 mt-1">
                 

                  <div class="row">
                   @php

 $currentURL = URL::full();
 $current = URL::current();
if($currentURL === $current){
   $print_url = $current."?print=single";
   $print_url_detal = $current."?print=detail";
}else{
     $print_url = $currentURL."&print=single";
     $print_url_detal = $currentURL."&print=detail";
}
    

                   @endphp
                    <div class="col-md-4">
                      @include('backend.item-information.search')
                    </div>
                    <div class="col-md-8">
                      <div class="d-flex flex-row justify-content-end">
                         @can('voucher-print')
                        <li class="nav-item dropdown remove_from_header">
                              <a class="nav-link" data-toggle="dropdown" href="#">
                                
                                <i class="fa fa-print " aria-hidden="true"></i> <i class="right fas fa-angle-down "></i>
                              </a>
                              <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                               
                                <div class="dropdown-divider"></div>
                                
                                <a target="__blank" href="{{$print_url}}" class="dropdown-item">
                                  <i class="fa fa-print mr-2" aria-hidden="true"></i> Print
                                </a>  
                            </li>
                             @endcan   
                         {!! $datas->render() !!}
                          </div>
                    </div>
                  </div>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered">
                      <tr>
                         
                         <th class="_action">Action</th>
                         <th>SL</th>
                         <th>ID</th>
                         <th>Item</th>
                         <th>Unit</th>
                         <th>Code</th>
                         <th>Barcode</th>
                         <th>Category</th>
                         
                         <th>Discount</th>
                         <th>Vat</th>
                         <th>Purchase Rate</th>
                         <th>Sales Rate</th>
                         <th>Stock</th>
                         <th>Reorder Level</th>
                         <th>Order Qty</th>
                         <th>Manufacture Company</th>
                         <th>Status</th>            
                      </tr>
                        @foreach ($datas as $key => $data)
                        <tr>
                           
                             <td>
                                <a class="btn btn-sm btn-info _action_button" href="{{ route('item-information.show',$data->id) }}">
                                  <i class="nav-icon fas fa-eye"></i>
                                </a>
                                @can('item-information-edit')
                                    <a class="btn btn-sm btn-primary _action_button" href="{{ route('item-information.edit',$data->id) }}">
                                      <i class="nav-icon fas fa-edit"></i>
                                    </a>
                                @endcan
                                @can('item-information-delete')
                                    {!! Form::open(['method' => 'DELETE','route' => ['item-information.destroy', $data->id],'style'=>'display:inline']) !!}
                                        <button onclick="return confirm('Are you sure?')" type="submit" class="btn btn-sm btn-danger _action_button">
                                            <i class="nav-icon fas fa-trash"></i>
                                        </button>
                                    {!! Form::close() !!}
                                @endcan
                            </td>
                            <td>{{ ($key+1) }}</td>
                            <td>{{ $data->id ?? '' }}</td>
                            <td>{{ $data->_item ?? '' }}</td>
                            <td>{{ $data->_units->_name ?? '' }}</td>
                            <td>{{ $data->_code ?? '' }}</td>
                            <td>{{ $data->_barcode ?? '' }}</td>
                            <td>{{ $data->_category->_name ?? '' }}</td>
                            <td>{{ _report_amount( $data->_discount ?? 0 ) }}</td>
                            <td>{{ _report_amount( $data->_vat ?? 0 ) }}</td>
                            <td>{{ _report_amount($data->_pur_rate ?? 0 ) }}</td>
                            <td>{{ _report_amount($data->_sale_rate ?? 0 ) }}</td>
                            <td>{{ $data->_balance ?? 0 }}</td>
                            <td>{{ $data->_reorder ?? 0 }}</td>
                            <td>{{ $data->_order_qty ?? 0 }}</td>
                            <td>{{ $data->_manufacture_company ?? '' }}</td>
                           <td>{{ selected_status($data->_status) }}</td>
                           
                        </tr>
                        @endforeach
                    </table>
                </div>
                <!-- /.d-flex -->

                

                <div class="d-flex flex-row justify-content-end">
                 {!! $datas->render() !!}
                </div>
              </div>
            </div>
            <!-- /.card -->

            
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </div>
</div>

@endsection