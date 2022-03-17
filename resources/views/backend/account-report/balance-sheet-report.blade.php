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
    <a class="nav-link"  href="{{url('balance-sheet')}}" role="button">
          <i class="fas fa-search"></i>
        </a>
         <a style="cursor: pointer;" class="nav-link"  title="" data-caption="Print"  onclick="javascript:printDiv('printablediv')"
    data-original-title="Print"><i class="fas fa-print"></i></a>
  </div>

<section class="invoice" id="printablediv">
    
    <!-- info row -->
    <div class="row invoice-info">
      <div class="col-sm-4 invoice-col">
        <h2 class="page-header text-left">
           <img src="{{asset('/')}}{{$settings->logo ?? ''}}" alt="{{$settings->name ?? '' }}"  style="width: 60px;height: 60px;"> {{$settings->name ?? '' }}
          <small class="float-right"></small>
        </h2>
        <address class="text-left ml-3">
          <strong>{{$settings->_address ?? '' }}</strong><br>
          {{$settings->_phone ?? '' }}<br>
          {{$settings->_email ?? '' }}<br>
        </address>
        
      </div>
      <!-- /.col -->
      <div class="col-sm-4 invoice-col">
        <h3 class="text-center"><b>{{$page_name}}</b></h3>
        <p class="text-center"><strong>As on Date :&nbsp;{{ $previous_filter["_datex"] ?? '' }} </strong><br>
         
        @foreach($permited_branch as $p_branch)
                      @if(isset($previous_filter["_branch_id"]))
                        @if(in_array($p_branch->id,$previous_filter["_branch_id"])) 
                       <span style="background: #f4f6f9;margin-right: 2px;padding: 5px;"><b>{{ $p_branch["_name"] }}</b></span>    
                        @endif
                      @endif
                      @endforeach
             
          </p>
      </div>
      <!-- /.col -->
      <div class="col-sm-4 invoice-col text-right">
           <p class="text-right">Print: {{date('d-m-Y H:s:a')}}</p>
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
            <th style="width: 80%;">Particulars</th>
            <th style="width: 20%;padding-right: 10px;" class="text-right" >Amount</th>
          </tr>
          
          
          </thead>
          <tbody>
           @forelse($balance_sheet_filter as $l_1key=>$l_1_value)
           @php
            $summary_l1 = 0;
           @endphp
                   <tr>
                     <td colspan="2" style="text-align: left;"><b>{!! $l_1key !!}</b></td>
                   </tr>
                   @forelse($l_1_value as $l_2key=>$l2value)
                   @php
                    $summary_l2 = 0;
                   @endphp
                   <tr>
                     <td colspan="2" style="text-align: left;"><b>&nbsp; &nbsp;{!! $l_2key !!}</b></td>
                   </tr>

                   @forelse($l2value as $l_3key=>$l3value)
                     @php
                      $summary_l3 = 0;
                     @endphp
                     <tr>
                       <td colspan="2" style="text-align: left;"><b>&nbsp; &nbsp;&nbsp; &nbsp;{!! $l_3key !!}</b></td>
                     </tr>
                     @forelse($l3value as $l_4key=>$l_4value)
                     @php

                      $summary_l1 +=$l_4value->_amount ?? 0; 
                      $summary_l2 +=$l_4value->_amount ?? 0;
                      $summary_l3 +=$l_4value->_amount ?? 0;
                     @endphp
                          <tr>
                             <td  style="text-align: left;">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;{!! $l_4value->_l_name ?? '' !!}</td>
                             <td style="text-align: right;padding-right: 10px;">{!! _show_amount_dr_cr(_report_amount(   $l_4value->_amount ?? 0 ))  !!}</td>
                           </tr>
                     @empty
                     @endforelse
                     
                     @if(sizeof($l3value) > 1)
                   <tr>
                     <td style="text-align: left;"><b>&nbsp; &nbsp;&nbsp; &nbsp;Sub Total for {!! $l_3key !!}:</b></td>
                     <td style="text-align: right;padding-right: 10px;"><b> {!! _show_amount_dr_cr(_report_amount(  $summary_l3 ))  !!}</b></td>
                   </tr>
                   @endif

                   @empty
                   @endforelse

                   @if(sizeof($l_1_value) > 1)
                   <tr>
                     <td style="text-align: left;"><b>&nbsp; &nbsp;&nbsp; &nbsp;Sub Total for {!! $l_2key !!}:</b></td>
                     <td style="text-align: right;padding-right: 10px;"><b> {!! _show_amount_dr_cr(_report_amount(  $summary_l2 ))  !!}</b></td>
                   </tr>
                   @endif

                   @empty
                   @endforelse
                   <tr>
                     <td style="text-align: left;"><b>Summary for {!! $l_1key !!}:</b></td>
                     <td style="text-align: right;padding-right: 10px;"><b> {!! _show_amount_dr_cr(_report_amount(  $summary_l1 ))  !!}</b></td>
                   </tr>
                   <tr>
                     <td colspan="2">&nbsp; &nbsp;</td>
                   </tr>

           @empty
           @endforelse
                  


          </tbody>
          <tfoot>
            <tr>
              <td colspan="8">
                <div class="row">
                  <div class="col-12 mt-5">
                    <div class="row">
                      <div class="col-3 text-center " style="margin-bottom: 50px;"><span style="border-bottom: 1px solid #f5f9f9;">Received By</span></div>
                      <div class="col-3 text-center " style="margin-bottom: 50px;"><span style="border-bottom: 1px solid #f5f9f9;">Prepared By</span></div>
                      <div class="col-3 text-center " style="margin-bottom: 50px;"><span style="border-bottom: 1px solid #f5f9f9;">Checked By</span></div>
                      <div class="col-3 text-center " style="margin-bottom: 50px;"><span style="border-bottom: 1px solid #f5f9f9;"> Approved By</span></div>
                    </div>
                   
                  </div>
                </div>
              </td>
            </tr>
          </tfoot>
        </table>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->


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
