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
    <a class="nav-link"  href="{{url('shortage-item')}}" role="button">
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
                 <tr style="line-height: 16px;" > <td class="text-center" style="border:none;"><strong>Date:{!! _view_date_formate(date('Y-m-d')) !!} </strong></td> </tr>
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
            
            <th class="text-left">Manufacture Company </th>
            <th class="text-left">Item Name </th>
            <th style="width: 10%;">Unit</th>
            <th style="width: 10%;" class="text-right">Stock </th>
            <th style="width: 10%;" class="text-right">Re order Level </th>
            <th style="width: 10%;" class="text-right">Re order Qty</th>
          </tr>
          
          
          </thead>
          <tbody>
            @php
             
              $_total_qty = 0;
              $_total_cost_value = 0;
               $remove_duplicate_branch=array();
            @endphp
            @forelse($group_array_values as $key=>$_detail)
            @php
              $key_arrays = explode("__",$key);
             $_branch_id =  $key_arrays[0];
             $_cost_center_id =  $key_arrays[1];
             $_store_id =  $key_arrays[2];
             $_category_id =  $key_arrays[3];
           
              @endphp
             @if(!in_array($key,$remove_duplicate_branch))
            <tr>
              @php
                array_push($remove_duplicate_branch,$key);
              @endphp
              <th colspan="6">





            @if(sizeof($_branch_ids) > 1 )
             Branch: {{ _branch_name($_branch_id) }} |
             @endif
             @if(sizeof($_cost_center_ids) > 1 )
               Cost Center: {{ _cost_center_name($_cost_center_id) }} |
             @endif
             @if(sizeof($_stores) > 1 )
               Store: {{ _store_name($_store_id) }} |
             @endif
            
              Category:  {{ _category_name($_category_id) }} 
            
              
              </th>
            </tr>
            @endif

            @php
              $_sub_total_qty = 0;
              $_sub_total_cost_value = 0;
              $row_counter =0;
            @endphp
            @forelse($_detail as $g_value)

            @php
              $row_counter +=1;

              $_total_qty += $g_value->_qty;
              

              $_sub_total_qty += $g_value->_qty;
             
            @endphp
            <tr>
             
              
            <td class="text-left">{!! $g_value->_manufacture_company ?? '' !!} </td>
            <td class="text-left">{!! $g_value->_item_name ?? '' !!} </td>
            <td class="text-left" style="width: 10%;">{!! $g_value->_unit_name ?? '' !!}</td>
            <td style="width: 10%;" class="text-right">{!! _report_amount($g_value->_qty) !!}</td>
            <td style="width: 10%;" class="text-right">{!! _report_amount($g_value->_reorder) !!}</td>
            <td style="width: 10%;" class="text-right">{!! _report_amount($g_value->_order_qty) !!}</td>



          </tr>
          @empty
          @endforelse
@if($row_counter > 1)
          <tr>
           

            <th colspan="3" class="text-left" >Sub Total </th>
            <th style="width: 10%;" class="text-right">{!! _report_amount($_sub_total_qty) !!}</th>
            <th style="width: 10%;" class="text-right"></th>
            <th style="width: 10%;" class="text-right"></th>
          </tr>
@endif
          @empty
          @endforelse
           <tr>
           

            <th colspan="3" class="text-left" >Grand Total </th>
            <th style="width: 10%;" class="text-right">{!! _report_amount($_total_qty) !!}</th>
            <th style="width: 10%;" class="text-right"></th>
            <th style="width: 10%;" class="text-right"></th>
          </tr>
            
            
          </tbody>
          <tfoot>
            <tr>
              <td colspan="6">
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