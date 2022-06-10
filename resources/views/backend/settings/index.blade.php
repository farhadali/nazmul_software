@extends('backend.layouts.app')
@section('title','General Settings')

@section('content')

<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">General Settings </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
             
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <div class="message-area">
    @include('backend.message.message')
    </div>
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
             
              <div class="card-body">
                <form method="POST" action="{{route('admin-settings-store')}}" enctype="multipart/form-data">
               @csrf
                    <div class="row">
                      <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>LOGO:</strong>
                               <input type="file" accept="image/*" onchange="loadFile(event,1 )"  name="logo" class="form-control">
                               <img id="output_1" class="banner_image_create" src="{{asset('/')}}{{$settings->logo ?? ''}}"  style="max-height:100px;max-width: 100px; " />
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Title:</strong>
                               <input type="text" name="title" required class="form-control" value="{{old('title',$settings->title ?? '' )}}">
                               <input type="hidden" name="id" value="{{$settings->id ?? ''}}">
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Name:</strong>
                               <input type="text" name="name" required class="form-control" value="{{old('name',$settings->name ?? '' )}}">
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Keywords:</strong>
                               <input type="text" name="keywords" required class="form-control" value="{{old('keywords',$settings->keywords ?? '' )}}">
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Author:</strong>
                               <input type="text" name="author" required class="form-control" value="{{old('author',$settings->author ?? '' )}}">
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>URL:</strong>
                               <input type="text" name="url" required class="form-control" value="{{old('url',$settings->url ?? '' )}}">
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Email:</strong>
                               <input type="text" name="_email" required class="form-control" value="{{old('_email',$settings->_email ?? '' )}}">
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Phone:</strong>
                               <input type="text" name="_phone" required class="form-control" value="{{old('_phone',$settings->_phone ?? '' )}}">
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Address:</strong>
                               <input type="text" name="_address" required class="form-control" value="{{old('_address',$settings->_address ?? '' )}}">
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Invoice Top Text:</strong>
                                <textarea class="form-control" name="_top_title" >{{old('_top_title',$settings->_top_title ?? '' )}}</textarea>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Sales Note:</strong>
                                <textarea class="form-control" name="_sales_note" >{{old('_sales_note',$settings->_sales_note ?? '' )}}</textarea>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Sales Return Note:</strong>
                                <textarea class="form-control" name="_sales_return__note" >{{old('_sales_return__note',$settings->_sales_return__note ?? '' )}}</textarea>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Purchase Note:</strong>
                                <textarea class="form-control" name="_purchse_note" >{{old('_purchse_note',$settings->_purchse_note ?? '' )}}</textarea>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                <strong>Purchase Return Note:</strong>
                                <textarea class="form-control" name="_purchase_return_note" >{{old('_purchase_return_note',$settings->_purchase_return_note ?? '' )}}</textarea>
                            </div>
                        </div>
                        

                        <div  style="margin-bottom: 100px;width: 100%; "><hr></div>
                        
                        <div class="col-xs-12 col-sm-12 col-md-12 bottom_save_section text-middle">
                            <button type="submit" class="btn btn-success submit-button ml-5"><i class="fa fa-credit-card mr-2" aria-hidden="true"></i> Save</button>
                            
                        </div>
                        <br><br>
                    </div>
                    </form>
                
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