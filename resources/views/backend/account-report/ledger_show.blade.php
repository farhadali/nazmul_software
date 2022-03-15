
@extends('backend.layouts.app')
@section('title',$page_name)

@section('content')
<div class="wrapper print_content">
  <style type="text/css">
  .table td, .table th {
    padding: 0.10rem;
    vertical-align: top;
    border-top: 1px solid #dee2e6;
}
  </style>
  <div style="padding-left: 20px;display: flex;">
    <a class="nav-link"  href="{{url('ledger-report')}}" role="button">
          <i class="fas fa-search"></i>
        </a>
         <a style="cursor: pointer;" class="nav-link"  title="" data-caption="Print"  onclick="javascript:printDiv('printablediv')"
    data-original-title="Print"><i class="fas fa-print"></i></a>
  </div>

<section class="invoice" id="printablediv">
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
        <h5 class="text-center"><small>Date: {{ _view_date_formate($request->_datex ?? '') }} To {{ _view_date_formate($request->_datey ?? '') }}</small></h5>
      </div>
      <!-- /.col -->
      <div class="col-sm-4 invoice-col text-right">
        <b>Group Name: {!! $ledger_info->account_group->_name ?? '' !!} </b><br>
        <b>Address: {{ $ledger_info->_address ?? '' }}</b><br>
        <b>Phone:</b> {{ $ledger_info->_phone ?? '' }}<br>
        <b>Email:</b> {{ $ledger_info->_email ?? '' }}<br>
        <b>Branch:</b> @foreach($permited_branch as $p_branch)
                        @if(in_array($p_branch->id,$previous_filter["_branch_id"])) <b>{{$p_branch->_name ?? ''}} </b>, @endif
                      @endforeach
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
            <th style="width: 10%;">Date</th>
            <th style="width: 10%;">ID</th>
            <th style="width: 25%;">Narration</th>
            <th style="width: 20%;">Short Narration</th>
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
            <th  class="text-left"></th>
            <th  class="text-left"></th>
            <th colspan="2" class="text-left"><b>Opening Balance</b></th>
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
            <td class="text-center"> <a target="__blank" href="{{ route('voucher.show',$detail->_ref_master_id) }}">
              A-{!! $detail->_ref_master_id ?? '' !!}</a>

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
            <td class="text-right" >{!! _show_amount_dr_cr(_report_amount( $balance)) !!}</td>
             
          </tr>
          @empty
          @endforelse
          
          </tbody>
          
        </table>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->

    <div class="row">
      <!-- accepted payments column -->
      <div class="col-12">
        
        <p> In Words: {{ nv_number_to_text($balance ?? 0) }} </p>
        
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
@endsection

@section('script')

<script type="text/javascript">

 function printDiv(divID) {
            //Get the HTML of div
            var divElements = document.getElementById(divID).innerHTML;
            //Get the HTML of whole page
            var oldPage = document.body.innerHTML;

            //Reset the page's HTML with div's HTML only
            document.body.innerHTML =
                "<html><head><title></title></head><body>" +
                divElements + "</body>";

            //Print Page
            window.print();

            //Restore orignal HTML
            document.body.innerHTML = oldPage;


        }
         

</script>
@endsection