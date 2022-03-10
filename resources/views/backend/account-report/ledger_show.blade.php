
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
    padding: 0.25rem;
    vertical-align: top;
    border-top: 1px solid #dee2e6;
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
          <small class="float-right"></small>
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
        <h3 class="text-center"><b>Ledger Report</b></h3>
        <h5 class="text-center"><b>{!! $ledger_info->_name ?? '' !!}</b></h5>
        <h5 class="text-center"><small>Date: {{ change_date_format($request->_datex ?? '') }} To {{ change_date_format($request->_datey ?? '') }}</small></h5>
      </div>
      <!-- /.col -->
      <div class="col-sm-4 invoice-col text-right">
        <b>Group Name: {!! $ledger_info->account_group->_name ?? '' !!} </b><br>
        <b>Address: {{ $ledger_info->_address ?? '' }}</b><br>
        <b>Phone:</b> {{ $ledger_info->_phone ?? '' }}<br>
        <b>Email:</b> {{ $ledger_info->_email ?? '' }}<br>
        <b>Branch:</b> {{ $ledger_info->_entry_branch->_name ?? '' }}
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->

    <!-- Table row -->
    <div class="row">
      <div class="col-12 table-responsive">
        <table class="table ">
          <thead>
          <tr>
            <th style="width: 6%;">Date</th>
            <th style="width: 9%;">Voucher NO.</th>
            <th style="width: 25%;">Narration</th>
            <th style="width: 25%;">Short Narration</th>
            <th style="width: 10%;" class="text-right" >Dr. Amount</th>
            <th style="width: 10%;" class="text-right" >Cr. Amount</th>
            <th style="width: 10%;" class="text-right" >Balance</th>
          </tr>
          
          
          </thead>
          <tbody>
            @php
            $runing_total =0;
            $dr_total = 0;
            $cr_total = 0;
            @endphp
            <tr>
            <th colspan="4" class="text-center"><b>Opening Balance</b></th>
            <th class="text-right" > {{ _report_amount(  0) }} </th>
            <th class="text-right" > {{ _report_amount(  0) }}</th>
            <th  class="text-right"> {{ _report_amount(  $balance->_opening_dr_amount ?? 0 - $balance->_opening_cr_amount ?? 0 ) }}</th>


            @php
            $balance =($balance->_opening_dr_amount ?? 0 - $balance->_opening_cr_amount ?? 0);
            @endphp
          </tr>
            @forelse($ledger_details as $detail_key=>$detail)
          <tr>
            <td>{!! $detail->_date !!}</td>
            @if($detail->_table_name=="voucher_masters")
            <td class="text-center"> <a target="__blank" href="{{ route('voucher.edit',$detail->_ref_master_id) }}">
              {!! $detail->_ref_master_id ?? '' !!}</a>
            </td>
            @else
             <td>  </td>
            @endif
            <td>{!! $detail->_narration ?? '' !!}</td>
            <td>{!! $detail->_short_narration ?? '' !!}</td>
            <td class="text-right">{!! _report_amount($detail->_dr_amount ?? 0)  !!}</td>
            <td class="text-right" >{!! _report_amount( $detail->_cr_amount ?? 0) !!}</td>
            @php
            $dr_total +=(float)  $detail->_dr_amount ?? 0;
            $cr_total +=(float)  $detail->_cr_amount ?? 0;

             $balance +=$detail->_dr_amount - $detail->_cr_amount;
            @endphp
            <td class="text-right" >{!! _report_amount( $balance) !!}</td>
             
          </tr>
          @empty
          @endforelse
          
          </tbody>
          <tfoot>
            <tr>
              <th style="background-color: rgba(0,0,0,.05);" colspan="5" class="text-center">Closing Balance:</th>
              <th style="background-color: rgba(0,0,0,.05);" class="text-right" >{!! _report_amount( $balance) !!}</th>
              <th style="background-color: rgba(0,0,0,.05);" class="text-right" >{!! _report_amount( $balance) !!}</th>
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
        <p class="lead"> <b>In Words: {{ prefix_taka() }}. {{ $digit->format($balance ?? 0) }}. </b></p>
        
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
  //window.addEventListener("load", window.print());
</script>
</body>
</html>