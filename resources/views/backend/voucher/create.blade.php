@extends('backend.layouts.app')
@section('title',$page_name)

@section('content')
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class=" col-sm-6 ">
            <h1 class="m-0"> {{ $page_name ?? '' }} </h1>
          </div><!-- /.col -->
          <div class=" col-sm-6 ">
            <ol class="breadcrumb float-sm-right">
              <!-- <li class="breadcrumb-item"><a href="{{url('home')}}">Home</a></li> -->
              <li class="breadcrumb-item active">
                 <a class="btn btn-primary" href="{{ route('account-ledger.index') }}"> {{ $page_name ?? '' }} </a>
               </li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <div class="message-area">
    @if (count($errors) > 0)
           <div class="alert alert-danger">
                <strong>Whoops!</strong> There were some problems with your input.<br><br>
                <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
                </ul>
            </div>
        @endif
  @if ($message = Session::get('success'))
    <div class="alert alert-success">
      <p>{{ $message }}</p>
    </div>
    @endif
    </div>
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
             
              <div class="card-body">
                {!! Form::open(array('route' => 'account-ledger.store','method'=>'POST')) !!}
                    <div class="row">

                       <div class="col-xs-12 col-sm-12 col-md-3">
                        <input type="hidden" name="_form_name" value="voucher_masters">
                            <div class="form-group">
                                <label>Date:</label>
                                  <div class="input-group date" id="reservationdate" data-target-input="nearest">
                                      <input type="text" class="form-control datetimepicker-input" data-target="#reservationdate"/>
                                      <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
                                          <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                      </div>
                                  </div>
                              </div>
                        </div>
                       <div class="col-xs-12 col-sm-12 col-md-3">
                            <div class="form-group">
                                <label>Voucher Type: <span class="_required">*</span></label>
                               <select class="form-control " name="_voucher_type" required>
                                  <option value="">--Voucher Type--</option>
                                  @forelse($voucher_types as $voucher_type )
                                  <option value="{{$voucher_type->_code}}" @if(isset($request->_voucher_type)) @if($request->_voucher_type == $voucher_type->_code) selected @endif   @endif>{{ $voucher_type->_code ?? '' }}-{{ $voucher_type->_name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="form-group ">
                                <label>Branch:<span class="_required">*</span></label>
                               <select class="form-control" name="_branch_id" required >
                                  
                                  @forelse($permited_branch as $branch )
                                  <option value="{{$branch->id}}" @if(isset($request->_branch_id)) @if($request->_branch_id == $branch->id) selected @endif   @endif>{{ $branch->id ?? '' }} - {{ $branch->_name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 ">
                            <div class="form-group">
                                <label class="mr-2" for="_transection_ref">Reference:</label>
                                <input type="text" id="_transection_ref" name="_transection_ref" class="form-control _transection_ref" value="{{old('_transection_ref')}}" placeholder="Reference" >
                            </div>
                        </div>

                       
                          <div class="col-md-12  ">
                             <div class="card">
                              <div class="card-body">
                                <div class="table-responsive">
                                      <table class="table table-bordered" >
                                          <thead>
                                            <th></th>
                                            <th>Ledger</th>
                                            <th>Branch</th>
                                            <th>Cost Center</th>
                                            <th>Short Narr.</th>
                                            <th>Dr. Amount</th>
                                            <th>Cr. Amount</th>
                                          </thead>
                                          <tbody class="area__voucher_details" id="area__voucher_details">
                                            <tr>
                                              <td>
                                                <a  href="" class="btn btn-default "><i class="fa fa-trash"></i></a>
                                              </td>
                                              <td>
                                                <input type="text" name="_search_ledger_id" class="form-control _search_ledger_id width_280_px" placeholder="Ledger">
                                                <input type="hidden" name="_ledger_id[]" class="form-control _ledger_id" >
                                                <div class="search_box">
                                                  
                                                </div>
                                              </td>
                                              <td>
                                                 <select class="form-control width_150_px" name="_branch_id_detail"  required >
                                            
                                                  @forelse($permited_branch as $branch )
                                                  <option value="{{$branch->id}}" @if(isset($request->_branch_id)) @if($request->_branch_id == $branch->id) selected @endif   @endif>{{ $branch->id ?? '' }} - {{ $branch->_name ?? '' }}</option>
                                                  @empty
                                                  @endforelse
                                                </select>
                                              </td>
                                             
                                                <td>
                                                 <select class="form-control width_150_px" name="_cost_center" required >
                                            
                                                  @forelse($permited_costcenters as $costcenter )
                                                  <option value="{{$costcenter->id}}" @if(isset($request->_cost_center)) @if($request->_cost_center == $costcenter->id) selected @endif   @endif>{{ $costcenter->id ?? '' }} - {{ $costcenter->_name ?? '' }}</option>
                                                  @empty
                                                  @endforelse
                                                </select>
                                              </td>
                                              
                                              <td>
                                                <input type="text" name="_short_narr" class="form-control width_250_px" placeholder="Short Narr">
                                              </td>
                                              <td>
                                                <input type="number" name="_dr_amount" class="form-control width_100_px" placeholder="Dr. Amount" value="{{old('_dr_amount',0)}}">
                                              </td>
                                              <td>
                                                <input type="number" name="_cr_amount" class="form-control width_100_px" placeholder="Cr. Amount" value="{{old('_cr_amount',0)}}">
                                              </td>
                                            </tr>
                                           
                                            
                                          </tbody>
                                          <tfoot>
                                            <tr>
                                              <td>
                                                <a href="" class="btn btn-info"><i class="fa fa-plus"></i></a>
                                              </td>
                                              <td colspan="4" class="text-right"><b>Total</b></td>
                                              <td>
                                                <input type="number" step="any" min="0" name="_total_dr_amount" class="form-control" value="0" readonly required>
                                              </td>
                                              <td>
                                                <input type="number" step="any" min="0" name="_total_cr_amount" class="form-control" value="0" readonly required>
                                              </td>
                                            </tr>
                                          </tfoot>
                                      </table>
                                </div>
                            </div>
                          </div>
                        </div>





                        <div class="col-xs-12 col-sm-12 col-md-12 ">
                            <div class="form-group">
                                <label class="mr-2" for="_note">Note:</label>
                                <input type="text" id="_note"  name="_note" class="form-control _note" value="{{old('_note')}}" placeholder="Note"  >
                            </div>
                        </div>
                        
                        
                       
                       
                        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                            <button type="submit" class="btn btn-primary submit-button">Submit</button>
                        </div>
                        <br><br>
                    </div>
                    {!! Form::close() !!}
                
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

