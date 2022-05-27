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
    <a class="nav-link"  href="{{url('group-ledger')}}" role="button">
          <i class="fas fa-search"></i>
        </a>
 <a style="cursor: pointer;" class="nav-link"  title="Print" onclick="javascript:printDiv('printablediv')"><i class="fas fa-print"></i></a>
      <a style="cursor: pointer;" onclick="fnExcelReport();" class="nav-link"  title="Excel Download" ><i class="fa fa-file-excel" aria-hidden="true"></i></a>
  </div>

<section class="invoice" id="printablediv">
    
    
    <div class="row">
      <div class="col-12">
        <table class="table" style="border:none;">
          <tr>
            <td style="border:none;width: 33%;text-align: left;">
              
            </td>
            <td style="border:none;width: 33%;text-align: center;">
              <table class="table" style="border:none;">
                <tr style="line-height: 16px;" > <td class="text-center" style="border:none;font-size: 24px;"><b>{{$settings->name ?? '' }}</b></td> </tr>
                <tr style="line-height: 16px;" > <td class="text-center" style="border:none;">{{$settings->_address ?? '' }}</td></tr>
                <tr style="line-height: 16px;" > <td class="text-center" style="border:none;">{{$settings->_phone ?? '' }},{{$settings->_email ?? '' }}</td></tr>
                 <tr style="line-height: 16px;" > <td class="text-center" style="border:none;"><b>{{$page_name}} </b></td> </tr>
                 <tr style="line-height: 16px;" > <td class="text-center" style="border:none;"><strong>Date:{{ $previous_filter["_datex"] ?? '' }} To {{ $previous_filter["_datey"] ?? '' }}</strong></td> </tr>
                 <tr style="line-height: 16px;" > <td class="text-center" style="border:none;"><b>@foreach($permited_branch as $p_branch)
                      @if(isset($previous_filter["_branch_id"]))
                        @if(in_array($p_branch->id,$previous_filter["_branch_id"])) 
                       <span style="background: #f4f6f9;margin-right: 2px;padding: 5px;"><b>{{ $p_branch["_name"] }}</b></span>    
                        @endif
                      @endif
                      @endforeach </b></td> </tr>
              </table>
            </td>
            <td style="border:none;width: 33%;text-align: right;">
              <p class="text-right">Print: {{date('d-m-Y H:s:a')}}</p>
            </td>
          </tr>
        </table>
        </div>
      </div>

    <!-- Table row -->
    <div class="row">
      <div class="col-12 table-responsive">
        <table class="table ">
          <thead>
          <tr>
            <th style="width: 15%;">Date</th>
            <th style="width: 10%;">ID</th>
            <th style="width: 20%;">Short Narration</th>
            <th style="width: 25%;">Narration</th>
            <th style="width: 10%;" class="text-right" >Dr. Amount</th>
            <th style="width: 10%;" class="text-right" >Cr. Amount</th>
            <th style="width: 10%;" class="text-right" >Balance</th>
          </tr>
          
          
          </thead>
          <tbody>
            @php
            $_dr_grand_total = 0;
            $_cr_grand_total = 0;
            @endphp
            @forelse($group_array_values as $key=>$value)
            <tr>
              
                <td colspan="7" style="text-align: left;background: #f5f9f9;">
                  
                     <b> {{ $key ?? '' }} </b>
                    
                
              
              </td>
            </tr>
                @forelse($value as $l_key=>$l_val)

               
                  <tr>
                    <td colspan="7" style="text-align: left;">
                     
                        <b>  {{ $l_key ?? '' }} </b>
                        
                     </td>
                  </tr>
                  @php
                    $running_sub_dr_total=0;
                    $running_sub_cr_total=0;
                    $runing_balance_total = 0;
                  @endphp
                  @forelse($l_val as $_dkey=>$detail)
                  @php
                    $_dr_grand_total +=$detail->_dr_amount ?? 0;
                    $_cr_grand_total +=$detail->_cr_amount ?? 0;
                    $running_sub_dr_total +=$detail->_dr_amount ?? 0;
                    $running_sub_cr_total +=$detail->_cr_amount ?? 0;
                    $runing_balance_total += (($detail->_balance+$detail->_dr_amount)-$detail->_cr_amount);
                  @endphp
                  
                    <tr>
                    <td style="text-align: left;">
                      
                      {{ _view_date_formate($detail->_date ?? $_datex) }} </td>
                     
                    <td class="text-left">
                    @if($detail->_table_name=="voucher_masters")
                 <a style="text-decoration: none;" target="__blank" href="{{ route('voucher.show',$detail->_id) }}">
                  A-{!! $detail->_id ?? '' !!}</a>
                    @endif
                    @if($detail->_table_name=="purchases")
                 <a style="text-decoration: none;" target="__blank" href="{{ route('purchase.edit',$detail->_id) }}">
                  P-{!! $detail->_id ?? '' !!}</a>
                    @endif
                    @if($detail->_table_name=="purchase_accounts")
                 <a style="text-decoration: none;" target="__blank" href="{{ route('purchase.edit',$detail->_id) }}">
                  PA-{!! $detail->_id ?? '' !!}</a>
                    @endif
                    @if($detail->_table_name=="purchases_return")
                 <a style="text-decoration: none;" target="__blank" href="{{ route('purchase-return.edit',$detail->_id) }}">
                  PR-{!! $detail->_id ?? '' !!}</a>
                    @endif
                    @if($detail->_table_name=="purchase_return_accounts")
                 <a style="text-decoration: none;" target="__blank" href="{{ route('purchase-return.edit',$detail->_id) }}">
                  PRA-{!! $detail->_id ?? '' !!}</a>
                    @endif
                    @if($detail->_table_name=="sales")
                 <a style="text-decoration: none;" target="__blank" href="{{ route('sales.edit',$detail->_id) }}">
                  S-{!! $detail->_id ?? '' !!}</a>
                    @endif
                    @if($detail->_table_name=="sales_accounts")
                 <a style="text-decoration: none;" target="__blank" href="{{ route('sales.edit',$detail->_id) }}">
                  SA-{!! $detail->_id ?? '' !!}</a>
                    @endif
                    @if($detail->_table_name=="sales_return")
                 <a style="text-decoration: none;" target="__blank" href="{{ route('sales-return.edit',$detail->_id) }}">
                  SR-{!! $detail->_id ?? '' !!}</a>
                    @endif
                    @if($detail->_table_name=="sales_return_accounts")
                 <a style="text-decoration: none;" target="__blank" href="{{ route('sales-return.edit',$detail->_id) }}">
                  SRA-{!! $detail->_id ?? '' !!}</a>
                    @endif
             </td>
                    <td style="text-align: left;">{{ $detail->_short_narration ?? '' }} </td>
                    <td style="text-align: left;">{{ $detail->_narration ?? '' }} </td>
                    <td style="text-align: right;">{{ _report_amount($detail->_dr_amount ?? 0) }} </td>
                    <td style="text-align: right;">{{ _report_amount($detail->_cr_amount ?? 0) }} </td>
                    <td style="text-align: right;">{{ _show_amount_dr_cr(_report_amount(  $runing_balance_total )) }} </td>

                  </tr>

                  @empty
                  @endforelse

                  <tr>
                    <td colspan="4" style="text-align: left;background: #f5f9f9;"><b>Sub Total of {{ $l_key ?? '' }}: </b> </td>
                    <td style="text-align: right;background: #f5f9f9;"><b>{{ _report_amount($running_sub_dr_total ?? 0) }}</b> </td>
                    <td style="text-align: right;background: #f5f9f9;"><b>{{ _report_amount($running_sub_cr_total ?? 0) }}</b> </td>
                    <td style="text-align: right;background: #f5f9f9;"><b></b> </td>
                </tr>
                

                @empty
                @endforelse



              
            <tr>
                  <td colspan="7"></td>
            </tr>

            @empty
            @endforelse
            <tr>
              
                <td colspan="4" style="text-align: left;background: #f5f9f9;"><b>Grand Total </b> </td>
                <td style="text-align: right;background: #f5f9f9;"> <b>{{_report_amount($_dr_grand_total) }}</b> </td>
                <td style="text-align: right;background: #f5f9f9;"> <b>{{_report_amount($_cr_grand_total) }}</b> </td>
                <td style="text-align: right;background: #f5f9f9;"> <b>{{_show_amount_dr_cr(_report_amount($_dr_grand_total-$_cr_grand_total)) }}</b> </td>
            </tr>
          
          </tbody>
          <tfoot>
            <tr>
              <td colspan="7">
                <div class="col-12 mt-5">
                  <div class="row">
                    <div class="col-3 text-center " style="margin-bottom: 50px;"><span style="border-bottom: 1px solid #f5f9f9;">Received By</span></div>
                    <div class="col-3 text-center " style="margin-bottom: 50px;"><span style="border-bottom: 1px solid #f5f9f9;">Prepared By</span></div>
                    <div class="col-3 text-center " style="margin-bottom: 50px;"><span style="border-bottom: 1px solid #f5f9f9;">Checked By</span></div>
                    <div class="col-3 text-center " style="margin-bottom: 50px;"><span style="border-bottom: 1px solid #f5f9f9;"> Approved By</span></div>
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



@endsection
