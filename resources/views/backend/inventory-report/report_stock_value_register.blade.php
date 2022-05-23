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
    <a class="nav-link"  href="{{url('stock-value-register')}}" role="button">
          <i class="fas fa-search"></i>
        </a>
         <a style="cursor: pointer;" class="nav-link"  title="" data-caption="Print"  onclick="javascript:printDiv('printablediv')"
    data-original-title="Print"><i class="fas fa-print"></i></a>
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
                 <tr style="line-height: 16px;" > <td class="text-center" style="border:none;"><strong>As on Date:{{ $previous_filter["_datex"] ?? '' }} </strong></td> </tr>
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
             

            <th>Inventory </th>
            <th style="width: 10%;">ID</th>
            <th style="width: 10%;">Date</th>
            <th style="width: 10%;" class="text-right">Stock In</th>
            <th style="width: 10%;" class="text-right">Stock Out</th>
            <th style="width: 10%;" class="text-right">Balance</th>
          </tr>
          
          
          </thead>
          <tbody>
            @php
             
              $_total_stockin = 0;
              $_total_stockout = 0;
              $_total_balance = 0;
               $remove_duplicate_branch=array();
            @endphp
            @forelse($group_array_values as $key=>$_detail)
            @php
              $key_arrays = explode("__",$key);
             $_branch_id =  $key_arrays[0];
             $_cost_center_id =  $key_arrays[1];
             $_store_id =  $key_arrays[2];
             $_category_id =  $key_arrays[3];
             $_item_id =  $key_arrays[4];
              @endphp
             @if(!in_array($key,$remove_duplicate_branch))
            <tr>
              @php
                array_push($remove_duplicate_branch,$key);
              @endphp
              <th colspan="7">





            @if(sizeof($_branch_ids) > 1 )
              {{ _branch_name($_branch_id) }} |
             @endif
             @if(sizeof($_cost_center_ids) > 1 )
                {{ _cost_center_name($_cost_center_id) }} |
             @endif
             @if(sizeof($_stores) > 1 )
                {{ _store_name($_store_id) }} |
             @endif
             @if(sizeof($category_ids) > 1 )
                {{ _category_name($_category_id) }} |
             @endif
              {{ _item_name($_item_id) }}
              </th>
            </tr>
            @endif

            @php
              $_sub_total_stockin = 0;
              $_sub_total_stockout = 0;
              $_sub_total_balance = 0;
              $row_counter =0;
            @endphp
            @forelse($_detail as $g_value)

            @php
              $row_counter +=1;
              $_total_stockin += $g_value->_stockin;
              $_total_stockout += $g_value->_stockout;
              $_total_balance += ($g_value->_balance);

              $_sub_total_stockin += $g_value->_stockin;
              $_sub_total_stockout += $g_value->_stockout;
              $_sub_total_balance += ($g_value->_balance);
            @endphp
            <tr>
             

            <td>{!! $g_value->_transection ?? '' !!} </td>
            <td style="width: 10%;">
              @if($g_value->_transection=="Purchase")
                 <a style="text-decoration: none;" target="__blank" href="{{ route('purchase.edit',$g_value->_transection_ref) }}">
                  P-{!! $g_value->_transection_ref ?? '' !!}</a>
                    @endif
                   
                    @if($g_value->_transection=="Purchase Return")
                 <a style="text-decoration: none;" target="__blank" href="{{ route('purchase-return.edit',$g_value->_transection_ref) }}">
                  PR-{!! $g_value->_transection_ref ?? '' !!}</a>
                    @endif
                    
                    @if($g_value->_transection=="Sales")
                 <a style="text-decoration: none;" target="__blank" href="{{ route('sales.edit',$g_value->_transection_ref) }}">
                  S-{!! $g_value->_transection_ref ?? '' !!}</a>
                    @endif
                    @if($g_value->_transection=="Sales Return")
                 <a style="text-decoration: none;" target="__blank" href="{{ route('sales-return.edit',$g_value->_transection_ref) }}">
                  SR-{!! $g_value->_transection_ref ?? '' !!}</a>
                    @endif

              </td>
            <td style="width: 10%;">{!! _view_date_formate($g_value->_date ?? '') !!}</td>
            <td style="width: 10%;" class="text-right">{!! _report_amount($g_value->_stockin) !!}</td>
            <td style="width: 10%;" class="text-right">{!! _report_amount($g_value->_stockout) !!}</td>
            <td style="width: 10%;" class="text-right">{{ _report_amount( $_sub_total_balance) }}</td>
          </tr>
          @empty
          @endforelse
@if($row_counter > 1)
          <tr>
           

            <th colspan="3" class="text-left" >Sub Total </th>
            <th style="width: 10%;" class="text-right">{!! _report_amount($_sub_total_stockin) !!}</th>
            <th style="width: 10%;" class="text-right">{!! _report_amount($_sub_total_stockout) !!}</th>
            <th style="width: 10%;" class="text-right">{!! _report_amount($_sub_total_balance) !!}</th>
          </tr>
@endif
          @empty
          @endforelse
          <tr>
           

            <th colspan="3" class="text-left">Grand Total </th>
            <th style="width: 10%;" class="text-right">{!! _report_amount($_total_stockin) !!}</th>
            <th style="width: 10%;" class="text-right">{!! _report_amount($_total_stockout) !!}</th>
            <th style="width: 10%;" class="text-right">{!! _report_amount($_total_balance) !!}</th>
          </tr>
            
            
          </tbody>
          <tfoot>
            <tr>
              <td colspan="9">
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