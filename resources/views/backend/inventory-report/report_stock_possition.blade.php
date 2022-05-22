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
    <a class="nav-link"  href="{{url('stock-possition')}}" role="button">
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
             @if(sizeof($_branch_ids) > 1 )
            <th style="width: 10%;">Branch</th>
             @endif
             @if(sizeof($_cost_center_ids) > 1 )
            <th style="width: 10%;">Cost Center</th>
             @endif
             @if(sizeof($_stores) > 1 )
            <th style="width: 10%;">Store</th>
             @endif
             @if(sizeof($category_ids) > 1 )
            <th style="width: 10%;">Category</th>
             @endif

            <th >Item Name </th>
            <th style="width: 10%;">Unit</th>
            <th style="width: 10%;" class="text-right">Opening</th>
            <th style="width: 10%;" class="text-right">Stock In</th>
            <th style="width: 10%;" class="text-right">Stock Out</th>
            <th style="width: 10%;" class="text-right">Closing</th>
          </tr>
          
          
          </thead>
          <tbody>
            @php
              $_total_opening = 0;
              $_total_stockin = 0;
              $_total_stockout = 0;
              $_total_balance = 0;
            @endphp
            @forelse($group_array_values as $g_value)

            @php
              $_total_opening += $g_value->_opening;
              $_total_stockin += $g_value->_stockin;
              $_total_stockout += $g_value->_stockout;
              $_total_balance += ($g_value->_opening+$g_value->_stockin+$g_value->_stockout);
            @endphp
            <tr>
             @if(sizeof($_branch_ids) > 1 )
            <td style="width: 10%;">{!! $g_value->_branch_name ?? '' !!}</td>
             @endif
             @if(sizeof($_cost_center_ids) > 1 )
            <td style="width: 10%;">{!! $g_value->_cost_name ?? '' !!}</td>
             @endif
             @if(sizeof($_stores) > 1 )
            <td style="width: 10%;">{!! $g_value->_store_name ?? '' !!}</td>
             @endif
             @if(sizeof($category_ids) > 1 )
            <td style="width: 10%;">{!! $g_value->_cat_name ?? '' !!}</td>
             @endif

            <td>{!! $g_value->_name ?? '' !!} </td>
            <td style="width: 10%;">{!! $g_value->_unit ?? '' !!}</td>
            <td style="width: 10%;" class="text-right">{!! _report_amount($g_value->_opening) !!}</td>
            <td style="width: 10%;" class="text-right">{!! _report_amount($g_value->_stockin) !!}</td>
            <td style="width: 10%;" class="text-right">{!! _report_amount($g_value->_stockout) !!}</td>
            <td style="width: 10%;" class="text-right">{{ _report_amount($g_value->_opening+$g_value->_stockin+$g_value->_stockout) }}</td>
          </tr>
          @empty
          @endforelse
          <tr>
             @if(sizeof($_branch_ids) > 1 )
            <th style="width: 10%;"></th>
             @endif
             @if(sizeof($_cost_center_ids) > 1 )
            <th style="width: 10%;"></th>
             @endif
             @if(sizeof($_stores) > 1 )
            <th style="width: 10%;"></th>
             @endif
             @if(sizeof($category_ids) > 1 )
            <th style="width: 10%;"></th>
             @endif

            <th colspan="2" class="text-right" >Total </th>
            <th style="width: 10%;" class="text-right">{!! _report_amount($_total_opening) !!}</th>
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
