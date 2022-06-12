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
                @can('role-create')
                        <a class="btn btn-success" href="{{ route('item-category.create') }}"> <i class="nav-icon fas fa-plus"></i></a>
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
                 @include('backend.item-category.search')
              </div>
              <div class="card-body">
                <div class="d-flex">
                  <table class="table table-bordered _list_table">
                      <tr>
                        <th>SL</th>
                         <th class="">Action</th>
                          <th class="">ID</th>
                         <th>Parents</th>
                         <th>Name</th>
                         
                        
                      </tr>
                        @foreach ($datas as $key => $data)
                        <tr>
                            <td>{{($key+1)}}</td>
                          <td style="display: flex;">
                            <div class="dropdown mr-1">
                                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-expanded="false"> Action</button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                   <a class="dropdown-item " href="{{ route('item-category.show',$data->id) }}">View  </a>
                                  @can('item-category-edit')
                                    <a class="dropdown-item " href="{{ route('item-category.edit',$data->id) }}">Edit</a>
                                  @endcan
                                 @can('item-category-delete')
                                {!! Form::open(['method' => 'DELETE','route' => ['item-category.destroy', $data->id],'style'=>'display:inline']) !!}
                                      <button onclick="return confirm('Are you sure?')" type="submit" class="btn btn-sm "><span class="_required">Delete</span></button>
                                  {!! Form::close() !!}
                                  @endcan
                                </div>
                              </div>
                        </td>
                             
                            <td>{{ $data->id }}</td>
                            <td> {{ $data->_parents->_name ?? '' }}</td>
                            <td> {{ $data->_name ?? '' }}</td>
                            
                            
                            
                           
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