@extends('backend.layouts.app')
@section('title',$settings->title)

@section('content')
<!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Users Management </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
               @can('user-create')
                        <a class="btn btn-success" href="{{ route('users.create') }}"> Create New User</a>
                @endcan
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
     @include('backend.message.message')
    <!-- /.content-header -->
<div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-header border-0">
                @include('users.search')
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered _list_table">
                     <tr>
                       <th>No</th>
                       <th class="">Action</th>
                       <th>Name</th>
                       <th>Email</th>
                       <th>Roles</th>
                       <th>Branch</th>
                       <th>Cost Center</th>
                       <th>Status</th>
                     </tr>
                     @foreach ($data as $key => $user)
                      <tr>

                        <td>{{ $key+1 }}</td>

                               <td style="display: flex;">
                            <div class="dropdown mr-1">
                                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-expanded="false"> Action</button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                   <a class="dropdown-item "  href="{{ route('users.show',$user->id) }}">View  </a>
                                  @can('user-edit')
                                    <a class="dropdown-item " href="{{ route('users.edit',$user->id) }}">Edit</a>
                                  @endcan
                                 @can('user-delete')
                                    {!! Form::open(['method' => 'DELETE','route' => ['users.destroy', $user->id],'style'=>'display:inline']) !!}
                                        <button onclick="return confirm('Are you sure?')" type="submit" class="btn btn-sm ">
                                            <span class="_required">Delete</span>
                                        </button>
                                    {!! Form::close() !!}
                                @endcan
                                </div>
                              </div>
                        </td>
                        
                        <td>{{ $user->id }} - {{ $user->name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>
                          @if(!empty($user->getRoleNames()))
                            @foreach($user->getRoleNames() as $v)
                               <label class="badge badge-success">{{ $v }}</label>
                            @endforeach
                          @endif
                        </td>
                        <td>
                         @php
                            $selected_branchs=[];
                            if($user->branch_ids !=0){
                                 $selected_branchs =  explode(",",$user->branch_ids);
                            }
                          @endphp
                          @forelse($branchs as $branch)
                              @if(in_array($branch->id,$selected_branchs)) <label class="badge badge-info">{{$branch->_name}}</label> @endif
                              @empty
                              @endforelse


                        </td>
                        <td>
                         @php
                            $selected_costcenters=[];
                            if($user->cost_center_ids !=0){
                                 $selected_costcenters =  explode(",",$user->cost_center_ids);
                            }
                          @endphp
                          @forelse($cost_centers as $costcenter)
                              @if(in_array($costcenter->id,$selected_costcenters)) <label class="badge badge-info">{{$costcenter->_name}}</label> @endif
                              @empty
                              @endforelse


                        </td>
                        <td>
                          
                          {{ ($user->status==1) ? 'Active' : 'In Active' }}</td>
                       
                      </tr>
                     @endforeach
                    </table>
                </div>
                <!-- /.d-flex -->

 

                

                <div class="d-flex flex-row justify-content-end">
                  {!! $data->render() !!}
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