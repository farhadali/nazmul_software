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
                @can('account-type-create')
                        <a class="btn btn-success" href="{{ route('account-type.create') }}"> <i class="nav-icon fas fa-plus"></i> </a>
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
              <div class="card-header border-0">
                 
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
                      @include('backend.account-type.search')
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
                                  <i class="fa fa-print mr-2" aria-hidden="true"></i>Print
                                </a>
                               <div class="dropdown-divider"></div>
                              
                                
                              
                                    
                            </li>
                             @endcan   
                         {!! $datas->render() !!}
                          </div>
                    </div>
                  </div>
              </div>
              <div class="card-body">
                <div class="d-flex">
                  <table class="table table-bordered">
                      <tr>
                         
                         <th class="_action">Action</th>
                         <th>ID</th>
                         <th>Name</th>
                         <th>Code</th>
                         <th>Base Account</th>
                         <th>Status</th>
                      </tr>
                        @foreach ($datas as $key => $data)
                        <tr>
                            
                             <td>
                                <a class="btn btn-sm btn-info" href="{{ route('account-type.show',$data->id) }}">
                                  <i class="nav-icon fas fa-eye"></i>
                                </a>
                                @can('account-type-edit')
                                    <a class="btn btn-sm btn-primary" href="{{ route('account-type.edit',$data->id) }}">
                                      <i class="nav-icon fas fa-edit"></i>
                                    </a>
                                @endcan
                                @can('account-type-delete')
                                    {!! Form::open(['method' => 'DELETE','route' => ['account-type.destroy', $data->id],'style'=>'display:inline']) !!}
                                        <button onclick="return confirm('Are you sure?')" type="submit" class="btn btn-sm btn-danger">
                                            <i class="nav-icon fas fa-trash"></i>
                                        </button>
                                    {!! Form::close() !!}
                                @endcan
                            </td>
                            <td>{{ $data->id }} </td>
                            <td> {{ $data->_name ?? '' }}</td>
                            <td> {{ $data->_code ?? '' }}</td>
                            <td>{{ $data->_main_account_head->_name ?? '' }}</td>
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