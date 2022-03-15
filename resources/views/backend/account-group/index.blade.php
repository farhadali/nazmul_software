@extends('backend.layouts.app')
@section('title',$page_name)

@section('content')
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">{!! $page_name ?? '' !!} </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <!-- <li class="breadcrumb-item"><a href="{{url('home')}}">Home</a></li> -->
              <li class="breadcrumb-item active">
                @can('role-create')
                        <a class="btn btn-info" href="{{ route('account-group.create') }}"> Create New </a>
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
                 @include('backend.account-group.search')
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                         <th class="_no">No</th>
                         <th class="_action">Action</th>
                         <th>Account Type</th>
                         <th>Code</th>
                         <th>Name</th>
                         <th>Details</th>
                         <th>Status</th>
                         <th>Possition</th>
                      </tr>
                    </thead>
                      <tbody>
                        @foreach ($datas as $key => $data)
                        <tr>
                            <td>{{ $key+1 }}</td>
                             <td>
                                <a class="btn btn-sm btn-info" href="{{ route('account-group.show',$data->id) }}">
                                  <i class="nav-icon fas fa-eye"></i>
                                </a>
                                @can('account-group-edit')
                                    <a class="btn btn-sm btn-primary" href="{{ route('account-group.edit',$data->id) }}">
                                      <i class="nav-icon fas fa-edit"></i>
                                    </a>
                                @endcan
                                @can('account-group-delete')
                                    {!! Form::open(['method' => 'DELETE','route' => ['account-group.destroy', $data->id],'style'=>'display:inline']) !!}
                                        <button onclick="return confirm('Are you sure?')" type="submit" class="btn btn-sm btn-danger">
                                            <i class="nav-icon fas fa-trash"></i>
                                        </button>
                                    {!! Form::close() !!}
                                @endcan
                            </td>
                            <td>{{ $data->account_type->_name ?? '' }}</td>
                            <td>{{ $data->_code ?? '' }}</td>
                            <td>{{ $data->id ?? '' }} - {{ $data->_name ?? '' }}</td>
                            <td>{{ $data->_details ?? '' }}</td>
                            <td>{{ selected_status($data->_status) }}</td>
                            <td>{{ $data->_short ?? '' }}</td>
                        </tr>
                        @endforeach
                        </tbody>
                        <tfoot>
                          <tr>
                            <td colspan="7"> {!! $datas->render() !!}</td>
                          </tr>
                        </tfoot>
                    </table>
                </div>
                <!-- /.d-flex -->

                

                <!-- <div class="d-flex flex-row justify-content-end">
                 {!! $datas->render() !!}
                </div> -->
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