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
            <th style="text-align: center;border-bottom: none;" >Particulars</th>
            <th style="text-align: center;" colspan="2"> TRIAL BALANCE</th>
            <th style="text-align: center;" colspan="2">INCOME STATEMENT</th>
            <th style="text-align: center;" colspan="2">BALANCE SHEET</th>
          </tr>
          <tr>
            <th style="text-align: right;border-top: none;"> </th>
            <th style="text-align: right;">Dr. Amount </th>
            <th style="text-align: right;">Cr. Amount </th>
            <th style="text-align: right;">Expenses</th>
            <th style="text-align: right;">Income</th>
            <th style="text-align: right;">Assets</th>
            <th style="text-align: right;">Liabilities</th>
          </tr>
          
          
          </thead>
          <tbody>
            @php
            $trail_dr_total = 0;
            $trail_cr_total = 0;
            $income_dr_total = 0;
            $income_cr_total = 0;
            $balance_dr_total = 0;
            $balance_cr_total = 0;

            @endphp
           @forelse($work_sheet_result as $key=>$value)
           <tr>
             <td style="text-align: left;padding-left: 10px;">{!! $value->_l_name ?? '' !!}</td>
              @if($value->_head_name !=4)
                  @if($value->_amount >= 0)
                          @php
                           $trail_dr_total += $value->_amount;
                          @endphp
                    <td style="text-align: right;"> {{_report_amount(   $value->_amount ) }}</td>
                    <td style="text-align: right;">{{_report_amount( 0 )}} </td>
                    @else
                        @php
                         $trail_cr_total += $value->_amount;
                        @endphp
                    <td style="text-align: right;"> {{_report_amount( 0 )}}</td>
                    <td style="text-align: right;"> {{_report_amount(   $value->_amount ) }} </td>
                  @endif
              @else
                <td style="text-align: right;"> {{_report_amount( 0 )}}</td>
                <td style="text-align: right;"> {{_report_amount(   0 ) }} </td>
                @if($value->_amount < 0)
                @php
                    $income_dr_total +=abs($value->_amount);
                    $balance_cr_total +=$value->_amount;
                  @endphp
                <td style="text-align: right;"> {{_report_amount( abs($value->_amount) )}}</td>
                 <td style="text-align: right;"> {{_report_amount(   0 ) }} </td>

                <td style="text-align: right;"> {{_report_amount( 0 )}}</td>
                 <td style="text-align: right;"> {{_report_amount(   abs($value->_amount) ) }} </td>
                 @else

                 @php
                    $income_cr_total += abs($value->_amount);
                    $balance_dr_total +=$value->_amount;
                  @endphp
                 <td style="text-align: right;"> {{_report_amount( 0 )}}</td>
                 <td style="text-align: right;"> {{_report_amount(  abs($value->_amount) ) }} </td>

                 <td style="text-align: right;"> {{_report_amount( abs($value->_amount) )}}</td>
                 <td style="text-align: right;"> {{_report_amount(  0  ) }} </td>
                 @endif
              @endif

              @if($value->_main_head ==4)
                  @php
                    $income_dr_total +=$value->_amount;
                  @endphp
                 <td style="text-align: right;"> {{_report_amount( $value->_amount )}}</td>
                 <td style="text-align: right;"> {{_report_amount(  0  ) }} </td>
              @elseif($value->_main_head ==3)
                  @php
                    $income_cr_total +=$value->_amount;
                  @endphp
                <td style="text-align: right;"> {{_report_amount( 0 )}}</td>
                   <td style="text-align: right;"> {{_report_amount(  $value->_amount  ) }} </td>
              @else
                  @if($value->_head_name !=4)
                   <td style="text-align: right;"> {{_report_amount( 0 )}}</td>
                   <td style="text-align: right;"> {{_report_amount(  0  ) }} </td>
                   @endif
              @endif


               @if($value->_main_head ==2 || $value->_main_head ==5 || $value->_main_head ==1)

                  @if($value->_amount >= 0)
                        @php
                          $balance_dr_total +=$value->_amount;
                        @endphp
                       <td style="text-align: right;"> {{_report_amount( $value->_amount )}}</td>
                       <td style="text-align: right;"> {{_report_amount(  0  ) }} </td>
                  @else
                        @php
                          $balance_cr_total +=$value->_amount;
                        @endphp
                        <td style="text-align: right;"> {{_report_amount( 0 )}}</td>
                        <td style="text-align: right;"> {{_report_amount(  $value->_amount  ) }} </td>
                  @endif



               @else
                    @if($value->_head_name !=4)
                   <td style="text-align: right;"> {{_report_amount( 0 )}}</td>
                   <td style="text-align: right;"> {{_report_amount(  0  ) }} </td>
                   @endif
               @endif



             
            
           </tr>


           @empty
           @endforelse
                  
           <tr>
             <td style="text-align: left;padding-left: 10px;"><b>Grand Total</b></td>
             <td style="text-align: right;"><b>{{_report_amount(  $trail_dr_total )}}</b> </td>
             <td style="text-align: right;"><b> {{_report_amount(  $trail_cr_total )}}</b></td>
             <td style="text-align: right;"><b>{{_report_amount(  $income_dr_total )}}</b> </td>
             <td style="text-align: right;"><b> {{_report_amount(  $income_cr_total )}}</b></td>
             <td style="text-align: right;"><b> {{_report_amount(  $balance_dr_total )}}</b></td>
             <td style="text-align: right;"><b> {{_report_amount(  $balance_cr_total )}}</b></td>
           </tr>

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
