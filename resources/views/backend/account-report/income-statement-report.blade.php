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
    <a class="nav-link"  href="{{url('income-statement')}}" role="button">
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
        <p class="text-center"><strong>Date:{{ $previous_filter["_datex"] ?? '' }} To {{ $previous_filter["_datey"] ?? '' }}</strong><br>
         
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
            <th style="width: 15%;">Group</th>
            <th style="width: 40%;">Ledger</th>
            <th style="width: 15%;" class="text-right">Upto Previous </th>
            <th style="width: 15%;" class="text-right">Current Period</th>
            <th style="width: 15%;" class="text-right" >Amount</th>
          </tr>
          
          
          </thead>
          <tbody>
            @php
            $i8_previous_total = 0;
            $i8_current_total = 0;
            $net_total =0;
            @endphp
           @forelse($income_8 as $i8_key=>$i8_value)
           @php
            $i8_previous_sub_total=0;
            $i8_current_sub_total=0;
            $i8_balance_sub_total=0;
           @endphp
           <tr >
             <td colspan="5" style="text-align: left;" ><b>{{$i8_key}}</b></td>
           </tr>
            @forelse($i8_value as $i_val)
            @php
              $i8_previous_total += $i_val->_previous_balance ?? 0;
              $i8_current_total += $i_val->_current_balance ?? 0;
              $net_total += $i_val->_last_amount ?? 0;



              $i8_previous_sub_total += $i_val->_previous_balance ?? 0;
              $i8_current_sub_total += $i_val->_current_balance ?? 0;
              $i8_balance_sub_total += $i_val->_last_amount ?? 0;


            @endphp
            
                   <tr>
                     <td colspan="2" style="text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;{{ $i_val->_l_name ?? '' }}</td>
                     <td style="text-align: right;">{{ _report_amount( $i_val->_previous_balance ?? 0)  }}</td>
                     <td style="text-align: right;">{{ _report_amount( $i_val->_current_balance ?? 0) }}</td>
                     <td style="text-align: right;">{{ _report_amount( $i_val->_last_amount ?? 0 ) }}</td>
                   </tr>
            @empty
            @endforelse
            @if(sizeof($i8_value)> 1 )
            <tr>
             <td style="text-align: left;" colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;Sub Total:  </b></td>
             <td style="text-align: right;"><b>{{ _report_amount($i8_previous_sub_total ?? 0) }}</b></td>
             <td style="text-align: right;"><b>{{ _report_amount( $i8_current_sub_total ?? 0 ) }}</b></td>
             <td style="text-align: right;"><b>{{ _report_amount( $i8_balance_sub_total ?? 0 ) }}</b></td>
           </tr>
           @endif

           @empty
           @endforelse

           <tr>
             <td style="text-align: left;" colspan="2"><b>Summary for Gross Profit:  </b></td>
             <td style="text-align: right;"><b>{{ _report_amount($i8_previous_total ?? 0) }}</b></td>
             <td style="text-align: right;"><b>{{ _report_amount( $i8_current_total ?? 0 ) }}</b></td>
             <td style="text-align: right;"><b>{{ _report_amount( $net_total ?? 0 ) }}</b></td>
           </tr>
           <tr >
                   <td colspan="5" style="text-align: left;" >&nbsp;&nbsp;&nbsp;&nbsp;</td>
                 </tr>
            @php
            $oi_previous_total = 0;
            $oi_current_total = 0;
            $oi_amount_total =0;
            @endphp
           @forelse($other_income_expenses as $oi_key=>$oi_value)
           @php
            $oi_previous_sub_total =0;
            $oi_current_sub_total =0;
            $oi_balance_sub_total =0;
           @endphp
                <tr >
                   <td colspan="5" style="text-align: left;" ><b>{{$oi_key}}</b></td>
                 </tr>

                  @forelse($oi_value as $oi_val)
                   @php
                    $oi_previous_sub_total +=$oi_val->_previous_balance ?? 0;
                    $oi_current_sub_total +=$oi_val->_current_balance ?? 0;
                    $oi_balance_sub_total +=$oi_val->_last_amount ?? 0;


                    $oi_previous_total +=$oi_val->_previous_balance ?? 0;
                    $oi_current_total +=$oi_val->_current_balance ?? 0;
                    $oi_amount_total +=$oi_val->_last_amount ?? 0;
                   @endphp
                    <tr>
                     <td colspan="2" style="text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;{{ $oi_val->_l_name ?? '' }}</td>
                     <td style="text-align: right;">{{ _report_amount( $oi_val->_previous_balance ?? 0)  }}</td>
                     <td style="text-align: right;">{{ _report_amount( $oi_val->_current_balance ?? 0) }}</td>
                     <td style="text-align: right;">{{ _report_amount( $oi_val->_last_amount ?? 0 ) }}</td>
                   </tr>

                  @empty
                  @endforelse
                  @if(sizeof($oi_value)> 1 )
                      <tr>
                       <td style="text-align: left;" colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;Sub Total:  </b></td>
                       <td style="text-align: right;"><b>{{ _report_amount($oi_previous_sub_total ?? 0) }}</b></td>
                       <td style="text-align: right;"><b>{{ _report_amount( $oi_current_sub_total ?? 0 ) }}</b></td>
                       <td style="text-align: right;"><b>{{ _report_amount( $oi_balance_sub_total ?? 0 ) }}</b></td>
                     </tr>
                     @endif
           @empty
           @endforelse
           <tr>


             <td style="text-align: left;" colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;Summary :  </b></td>
             <td style="text-align: right;"><b>{{ _report_amount($oi_previous_total ?? 0) }}</b></td>
             <td style="text-align: right;"><b>{{ _report_amount( $oi_current_total ?? 0 ) }}</b></td>
             <td style="text-align: right;"><b>{{ _report_amount( $oi_amount_total ?? 0 ) }}</b></td>
           </tr>
           <tr>
             <td style="text-align: left;" colspan="2"><b>Net Profit\Loss :  </b></td>
             <td style="text-align: right;"><b>{{ _report_amount($i8_previous_total + $oi_previous_total ?? 0) }}</b></td>
             <td style="text-align: right;"><b>{{ _report_amount( $i8_current_total + $oi_current_total ?? 0 ) }}</b></td>
             <td style="text-align: right;"><b>{{ _report_amount( $net_total + $oi_amount_total ?? 0 ) }}</b></td>
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