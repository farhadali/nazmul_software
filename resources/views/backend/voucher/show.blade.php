@extends('backend.layouts.app')
@section('title',$page_name)

@section('content')

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
    </div>
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
             <div class="card-header">
                <div class="card_header_section">
                  <div class="_page_name_area">
                     <h4 class="m-0">{!! $page_name ?? '' !!} </h4>
                  </div>
                  <div class="_new_button_area">
                    <div class="d-flex right_float">
                      @can('voucher-edit')
                                    <a title="Edit" class="btn btn-sm btn-default  mr-3" href="{{ route('voucher.edit',$data->id) }}">
                                      <i class="nav-icon fas fa-edit"></i>
                                    </a>
                      @endcan
                      @can('voucher-print')
                        <a target="__blank" title="Print" class="btn btn-default mr-3" href="{{ url('voucher/print') }}/{{$data->id }}"> <i class="fa fa-print _required" aria-hidden="true"></i></a>
                      @endcan
                      @can('voucher-list')
                       <a class="btn btn-primary" title="List" href="{{ route('voucher.index') }}"> <i class="fa fa-th-list" aria-hidden="true"></i></a>
                       @endcan
                    </div>
                   
                  </div>
                </div>
             </div>
              <div class="card-body">
                <div class="wrapper">
  <!-- Main content -->
  <section class="invoice">
    <!-- title row -->
    <div class="row">
      <div class="col-12">
        <h2 class="page-header">
           <img src="{{asset('/')}}{{$settings->logo ?? ''}}" alt="{{$settings->name ?? '' }}"  style="width: 60px;height: 60px;"> {{$settings->name ?? '' }}
          <small class="float-right">Date: {{ change_date_format($data->_date ?? '') }}</small>
        </h2>
      </div>
      <!-- /.col -->
    </div>
    <!-- info row -->
    <div class="row invoice-info">
      <div class="col-sm-4 invoice-col">
        
        <address>
          <strong>{{$settings->_address ?? '' }}</strong><br>
          {{$settings->_phone ?? '' }}<br>
          {{$settings->_email ?? '' }}<br>
        </address>
      </div>
      <!-- /.col -->
      <div class="col-sm-4 invoice-col">
        <h3 class="text-center"><b>{{ voucher_code_to_name($data->_voucher_type) }}</b></h3>
      </div>
      <!-- /.col -->
      <div class="col-sm-4 invoice-col text-right">
        <b>Voucher ID: {{ $data->_code ?? '' }}</b><br>
        <b>Time:</b> {{$data->_time ?? ''}}<br>
        <b>Created By:</b> {{$data->_user_name ?? ''}}<br>
        <b>Branch:</b> {{$data->_master_branch->_name ?? ''}}
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->

    <!-- Table row -->
    <div class="row">
      <div class="col-12 table-responsive">
        <table class="table table-striped">
          <thead>
          <tr>
            <th>ID</th>
            <th>Ledger</th>
            <th>Branch</th>
            <th>Cost Center</th>
            <th>Short Narr.</th>
            <th class="text-right" >Dr. Amount</th>
            <th class="text-right" >Cr. Amount</th>
          </tr>
          </thead>
          <tbody>
            @forelse($data->_master_details as $detail_key=>$detail)
          <tr>
            <td>{!! $detail->id ?? '' !!}</td>
            <td>{!! $detail->_voucher_ledger->_name ?? '' !!}</td>
            <td>{!! $detail->_detail_branch->_name ?? '' !!}</td>
            <td>{!! $detail->_detail_cost_center->_name ?? '' !!}</td>
            <td>{!! $detail->_short_narr ?? '' !!}</td>
            <td class="text-right" >{!! number_format((float) $detail->_dr_amount ?? 0, default_des(), '.', '') !!}</td>
            <td class="text-right" >{!! number_format((float) $detail->_cr_amount ?? 0, default_des(), '.', '')!!}</td>
             
          </tr>
          @empty
          @endforelse
          
          </tbody>
          <tfoot>
            <tr>
              <th colspan="5" class="text-right">Total:</th>
              <th class="text-right" >{!! number_format((float) $data->_amount ?? 0, default_des(), '.', '')!!}</th>
              <th class="text-right" >{!! number_format((float) $data->_amount ?? 0, default_des(), '.', '')!!}</th>
            </tr>
          </tfoot>
        </table>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->

    <div class="row">
      <!-- accepted payments column -->
      <div class="col-12">
        @php
$digit = new NumberFormatter("en", NumberFormatter::SPELLOUT);

        @endphp
        <p class="lead"> <b>In Words: {{ prefix_taka() }}. {{ $digit->format($data->_amount ?? 0) }}. </b></p>
        
      </div>
      <!-- /.col -->
      <div class="col-12 mt-5">
        <div class="row">
          <div class="col-3 text-center " style="margin-bottom: 50px;"><span style="border-bottom: 1px solid #f5f5f9;">Received By</span></div>
          <div class="col-3 text-center " style="margin-bottom: 50px;"><span style="border-bottom: 1px solid #f5f5f9;">Prepared By</span></div>
          <div class="col-3 text-center " style="margin-bottom: 50px;"><span style="border-bottom: 1px solid #f5f5f9;">Checked By</span></div>
          <div class="col-3 text-center " style="margin-bottom: 50px;"><span style="border-bottom: 1px solid #f5f5f9;"> Approved By</span></div>
        </div>

          
       
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
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