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
<div class="_report_button_header">
    <a class="nav-link"  href="{{url('cash-book')}}" role="button">
          <i class="fas fa-search"></i>
        </a>
 <a style="cursor: pointer;" class="nav-link"  title="Print" onclick="javascript:printDiv('printablediv')"><i class="fas fa-print"></i></a>
      <a style="cursor: pointer;" onclick="fnExcelReport();" class="nav-link"  title="Excel Download" ><i class="fa fa-file-excel" aria-hidden="true"></i></a>
  </div>

<section class="invoice" id="printablediv">
    
    
    
        <table class="table" style="border:none;width: 100%;">
          <tr>
            
            <td style="border:none;width: 100%;text-align: center;">
              <table class="table" style="border:none;">
                <tr style="line-height: 16px;" > <td class="text-center" style="border:none;font-size: 24px;"><b>{{$settings->name ?? '' }}</b></td> </tr>
                <tr style="line-height: 16px;" > <td class="text-center" style="border:none;">{{$settings->_address ?? '' }}</td></tr>
                <tr style="line-height: 16px;" > <td class="text-center" style="border:none;">{{$settings->_phone ?? '' }},{{$settings->_email ?? '' }}</td></tr>
                 <tr style="line-height: 16px;" > <td class="text-center" style="border:none;"><b>{{$page_name}} </b></td> </tr>
                 <tr style="line-height: 16px;" > <td class="text-center" style="border:none;"><strong>Date: {{ _view_date_formate($request->_datex ?? '') }} To {{ _view_date_formate($request->_datey ?? '') }} </strong></td> </tr>
                 <tr style="line-height: 16px;" > <td class="text-center" style="border:none;"><b>@foreach($permited_branch as $p_branch)
                      @if(isset($previous_filter["_branch_id"]))
                        @if(in_array($p_branch->id,$previous_filter["_branch_id"])) 
                       <span style="background: #f4f6f9;margin-right: 2px;padding: 5px;"><b>{{ $p_branch["_name"] }}</b></span>    
                        @endif
                      @endif
                      @endforeach </b></td> </tr>
              </table>
            </td>
           
          </tr>
        </table>
       

    <!-- Table row -->
     <table class="cewReportTable">
          <thead>
          <tr>
           <th style="border:1px solid silver;width: 7%;" class="text-left" >Date</th>
            <th style="border:1px solid silver;width: 7%;" class="text-left" >ID</th>
            <th style="border:1px solid silver;width: 30%;" class="text-left" >Ledger </th>
            <th style="border:1px solid silver;width: 20%;" class="text-left" >Referance</th>
            <th style="border:1px solid silver;width: 20%;" class="text-left" >Narration</th>
            <th style="border:1px solid silver;width: 8%;" class="text-right" >Receipt </th>
            <th style="border:1px solid silver;width: 8%;" class="text-right" >Payment </th>
          </tr>
          
          
          </thead>
          <tbody>
              @php
              $_grand_total_dr_amount = 0;
              $_grand_total_cr_amount = 0;
            @endphp
            @forelse( $_result_group as $key=>$data)
            <tr>
              <td colspan="7"><b>{{$key}}</b></td>
            </tr>
            @php
              $_ledger_group_dr_amount = 0;
              $_ledger_group_cr_amount = 0;
            @endphp
            @forelse($data as $value)
             @php
              $_ledger_group_dr_amount += $value->_dr_amount ?? 0;
              $_ledger_group_cr_amount +=  $value->_cr_amount ?? 0;

             
            @endphp
            <tr>
              @if($key=="A. Opening Cash")
              <td>{{ _view_date_formate($request->_datex ?? '') }}</td>
              @endif
              @if($key=="B. Receipt & Payment")
              <td>{{ _view_date_formate($value->_date ?? '') }}</td>
              @endif
              @if($key=="C. Closing Cash")
              <td>{{ _view_date_formate($request->_datey ?? '') }}</td>
              @endif
              <td>
                @if($value->_table_name=="voucher_masters")
                 <a style="text-decoration: none;" target="__blank" href="{{ route('voucher.show',$value->_id) }}">
                  A-{!! $value->_id ?? '' !!}</a>
                    @endif
                   
                    @if($value->_table_name=="purchase_accounts")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('purchase/print',$value->_id) }}">
                  PA-{!! $value->_id ?? '' !!}</a>
                    @endif
                    
                    @if($value->_table_name=="purchase_return_accounts")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('purchase-return/print',$value->_id) }}">
                  PRA-{!! $value->_id ?? '' !!}</a>
                    @endif
                    
                    @if($value->_table_name=="sales_accounts")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('sales/print',$value->_id) }}">
                  SA-{!! $value->_id ?? '' !!}</a>
                    @endif
                   
                    @if($value->_table_name=="sales_return_accounts")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('sales-return/print',$value->_id) }}">
                  SRA-{!! $value->_id ?? '' !!}</a>
                    @endif
                    @if($value->_table_name=="transfer")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('transfer-production/print',$value->_id) }}">
                  TF-{!! $value->_id ?? '' !!}</a>
                    @endif
                    @if($value->_table_name=="production")
                 <a style="text-decoration: none;" target="__blank" href="{{ url('transfer-production/print',$value->_id) }}">
                  PD-{!! $value->_id ?? '' !!}</a>
                    @endif
                   
              </td>
 @if($key=="B. Receipt & Payment")
              <td>
                @php 
              $ledgers=  _oposite_account($value->_id,$value->_table_name,$value->_account_ledger);
              foreach($ledgers as $key_s=> $l){
                echo $l->_name;
                echo "<br/>";
              }
              @endphp
            </td>
  @else
<td>{{ $value->_l_name ?? '' }}</td>
  @endif

              <td>{{ $value->_reference ?? '' }}</td>
              <td>{{ $value->_short_narration ?? '' }}</td>
              <td class="text-right">{{ _report_amount(  $value->_dr_amount ?? 0 ) }}</td>
              <td class="text-right">{{ _report_amount(  $value->_cr_amount ?? 0 ) }}</td>
            </tr>
            @empty
            @endforelse
            <tr>
              <td colspan="5"><b>Summary of {{$key}}</b></td>
              <td class="text-right"><b>{{ _report_amount(  $_ledger_group_dr_amount ) }}</b></td>
              <td class="text-right"><b>{{ _report_amount(  $_ledger_group_cr_amount ) }}</b></td>
            </tr>

            @empty
            @endforelse
           
          
          </tbody>
          
        </table>

      

    
    <!-- /.row -->
  </section>

</div>
@endsection

@section('script')



@endsection