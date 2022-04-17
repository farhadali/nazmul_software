
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{{$page_name}}</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  
  <!-- Theme style -->
  <link rel="stylesheet" href="{{asset('dist/css/adminlte.min.css')}}">
  <style type="text/css">
    .table td, .table th {
        padding: .15rem !important;
        vertical-align: top;
        border-top: 1px solid #CCCCCC;
    }
  </style>
</head>
<body>
<div class="wrapper">

<section class="invoice">
    <!-- title row -->
    <div class="row">
      <div class="col-12">
        <h2 class="page-header">
           <img src="{{asset('/')}}{{$settings->logo ?? ''}}" alt="{{$settings->name ?? '' }}"  style="width: 60px;height: 60px;"> {{$settings->name ?? '' }}
          <small class="float-right">Date: {{ _view_date_formate($data->_date ?? '') }}</small>
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
            <td class="text-right" >{!! _report_amount( $detail->_dr_amount ?? 0 ) !!}</td>
            <td class="text-right" >{!! _report_amount($detail->_cr_amount ?? 0 )!!}</td>
             
          </tr>
          @empty
          @endforelse
          
          </tbody>
          <tfoot>
            <tr>
              <th style="background-color: rgba(0,0,0,.05);" colspan="5" class="text-center">Total:</th>
              <th style="background-color: rgba(0,0,0,.05);" class="text-right" >{!! _report_amount($data->_amount ?? 0) !!}</th>
              <th style="background-color: rgba(0,0,0,.05);" class="text-right" >{!! _report_amount($data->_amount ?? 0) !!}</th>
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
          <div class="col-3 text-center " style="margin-bottom: 50px;"><span style="border-bottom: 1px solid #f5f9f9;">Received By</span></div>
          <div class="col-3 text-center " style="margin-bottom: 50px;"><span style="border-bottom: 1px solid #f5f9f9;">Prepared By</span></div>
          <div class="col-3 text-center " style="margin-bottom: 50px;"><span style="border-bottom: 1px solid #f5f9f9;">Checked By</span></div>
          <div class="col-3 text-center " style="margin-bottom: 50px;"><span style="border-bottom: 1px solid #f5f9f9;"> Approved By</span></div>
        </div>

          
       
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>

</div>
<!-- ./wrapper -->
<!-- Page specific script -->
<script>
  window.addEventListener("load", window.print());
</script>
</body>
</html>