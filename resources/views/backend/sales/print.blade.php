
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
    .display_none{
    display: none;
}
  </style>
  <style type="text/css">
    .table td, .table th {
        padding: .15rem !important;
        vertical-align: top;
        border: 1px solid #CCCCCC;
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
           <img src="{{asset('/')}}{{$settings->logo ?? ''}}" alt="{{$settings->name ?? '' }}"  style="width: 50px;height: 50px;"> {{$settings->name ?? '' }}
          <small class="float-right">Date: {{ _view_date_formate($data->_date ?? '') }}</small>
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
        <h3 class="text-center"><b>{{$page_name}} Invoice</b></h3>
      </div>
      <!-- /.col -->
      <div class="col-sm-4 invoice-col text-right">
        
        <b>Time:</b> {{$data->_time ?? ''}}<br>
        <b>Created By:</b> {{$data->_user_name ?? ''}}<br>
        <b>Branch:</b> {{$data->_master_branch->_name ?? ''}}
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
    <div class="row">
      <div class="col-12">
        <div style="text-align: left;">
          <b>INVOICE NO: {{ $data->id ?? '' }}</b><br>
          <span><b> Customer:</b>  {{$data->_ledger->_name ?? '' }}</span><br>
          <span><b> Phone:</b>  {{$data->_ledger->_phone ?? '' }}</span><br>
          <span><b> Address:</b> {{$data->_ledger->_address ?? '' }}</span><br>
        </div>
        </div>
      </div>
      <div class="row">
        <div class="col-12 table-responsive">
         
            @if(sizeof($data->_master_details) > 0)
                        
                              <table class="table">
                                <thead >
                                            <th class="text-middle " >SL</th>
                                            <th class="text-middle " >Item</th>
                                           @if(isset($form_settings->_show_barcode)) @if($form_settings->_show_barcode==1)
                                            <th class="text-middle " >Barcode</th>
                                            @else
                                            <th class="text-middle  display_none" >Barcode</th>
                                            @endif
                                            @endif
                                            <th class="text-right " >Qty</th>
                                            <th class="text-right " >Sales Rate</th>
                                            @if(isset($form_settings->_show_vat)) @if($form_settings->_show_vat==1)
                                            <th class="text-right " >VAT%</th>
                                            <th class="text-right " >VAT</th>
                                             @else
                                            <th class="text-right  display_none" >VAT%</th>
                                            <th class="text-right  display_none" >VAT Amount</th>
                                            @endif
                                            @endif
                                            @if(isset($form_settings->_inline_discount)) @if($form_settings->_inline_discount==1)
                                            <th class="text-right " >Dis%</th>
                                            <th class="text-right " >Discount</th>
                                             @else
                                            <th class="text-middle  display_none" >Dis%</th>
                                            <th class="text-middle  display_none" >Discount</th>
                                            @endif
                                            @endif

                                            <th class="text-right " >Value</th>
                                             @if(sizeof($permited_branch) > 1)
                                            <th class="text-middle " >Branch</th>
                                            @else
                                            <th class="text-middle  display_none" >Branch</th>
                                            @endif
                                             @if(sizeof($permited_costcenters) > 1)
                                            <th class="text-middle " >Cost Center</th>
                                            @else
                                             <th class="text-middle  display_none" >Cost Center</th>
                                            @endif
                                             @if(sizeof($store_houses) > 1)
                                            <th class="text-middle " >Store</th>
                                            @else
                                             <th class="text-middle  display_none" >Store</th>
                                            @endif
                                            @if(isset($form_settings->_show_self)) @if($form_settings->_show_self==1)
                                            <th class="text-middle " >Shelf</th>
                                            @else
                                             <th class="text-middle  display_none" >Shelf</th>
                                            @endif
                                            @endif
                                           
                                          </thead>
                                <tbody>
                                  @php
                                    $_value_total = 0;
                                    $_vat_total = 0;
                                    $_qty_total = 0;
                                    $_total_discount_amount = 0;
                                  @endphp
                                  @forelse($data->_master_details AS $item_key=>$_item )
                                  <tr>
                                     <td class="" >{{($item_key+1)}}</td>
                                     @php
                                      $_value_total +=$_item->_value ?? 0;
                                      $_vat_total += $_item->_vat_amount ?? 0;
                                      $_qty_total += $_item->_qty ?? 0;
                                      $_total_discount_amount += $_item->_discount_amount ?? 0;
                                     @endphp
                                            <td class="  " >{!! $_item->_items->_name ?? '' !!}</td>
                                           @if(isset($form_settings->_show_barcode)) @if($form_settings->_show_barcode==1)
                                            <td class="  " >{!! $_item->_barcode ?? '' !!}</td>
                                            @else
                                            <td class="   display_none" >{!! $_item->_barcode ?? '' !!}</td>
                                            @endif
                                            @endif
                                            <td class="text-right  " >{!! $_item->_qty ?? 0 !!}</td>
                                            <td class="text-right  " >{!! _report_amount($_item->_sales_rate ?? 0) !!}</td>
                                            @if(isset($form_settings->_show_vat)) @if($form_settings->_show_vat==1)
                                            <td class="text-right  " >{!! $_item->_vat ?? 0 !!}</td>
                                            <td class="text-right  " >{!! _report_amount($_item->_vat_amount ?? 0) !!}</td>
                                             @else
                                            <td class="text-right   display_none" >{!! $_item->_vat ?? 0 !!}</td>
                                            <td class="text-right   display_none" >{!! _report_amount($_item->_vat_amount ?? 0) !!}</td>
                                            @endif
                                            @endif
                                            @if(isset($form_settings->_inline_discount)) @if($form_settings->_inline_discount==1)
                                            <td class="text-right  " >{!! $_item->_discount ?? 0 !!}</td>
                                            <td class="text-right  " >{!! $_item->_discount_amount ?? 0 !!}</td>
                                             @else
                                            <td class="text-right   display_none" >{!! $_item->_discount ?? 0 !!}</td>
                                            <td class="text-right   display_none" >{!! $_item->_discount_amount ?? 0 !!}</td>
                                            @endif
                                            @endif

                                            <td class="text-right  " >{!! _report_amount($_item->_value ?? 0) !!}</td>
                                             @if(sizeof($permited_branch) > 1)
                                            <td class="" >{!! $_item->_detail_branch->_name ?? '' !!}</td>
                                            @else
                                            <td class="   display_none" >{!! $_item->_detail_branch->_name ?? '' !!}</td>
                                            @endif
                                             @if(sizeof($permited_costcenters) > 1)
                                            <td class="  " >{!! $_item->_detail_cost_center->_name ?? '' !!}</td>
                                            @else
                                             <td class="   display_none" >{!! $_item->_detail_cost_center->_name ?? '' !!}</td>
                                            @endif
                                             @if(sizeof($store_houses) > 1)
                                            <td class="  " >{!! $_item->_store->_name ?? '' !!}</td>
                                            @else
                                             <td class="   display_none" >{!! $_item->_store->_name ?? '' !!}</td>
                                            @endif
                                            @if(isset($form_settings->_show_self)) @if($form_settings->_show_self==1)
                                            <td class="  " >{!! $_item->_store_salves_id ?? '' !!}</td>
                                            @else
                                             <td class="   display_none" >{!! $_item->_store_salves_id ?? '' !!}</td>
                                            @endif
                                            @endif
                                           
                                          </thead>
                                  </tr>
                                  @empty
                                  @endforelse
                                </tbody>
                                <tfoot>
                                  <tr>
                                              <td class="">
                                                
                                              </td>
                                              <td  class="text-right "><b>Total</b></td>
                                              @if(isset($form_settings->_show_barcode)) @if($form_settings->_show_barcode==1)
                                              <td  class="text-right"></td>
                                              @else
                                                <td  class="text-right  display_none"></td>
                                             @endif
                                            @endif
                                              <td class="text-right ">
                                                <b>{{ $_qty_total ?? 0}}</b>
                                                


                                              </td>
                                              <td class="display_none"></td>
                                              <td class=""></td>
                                              @if(isset($form_settings->_show_vat)) @if($form_settings->_show_vat==1)
                                              <td></td>
                                              <td class="text-right ">
                                                <b>{{_report_amount($_vat_total ?? 0)}}</b>
                                              </td>
                                              @else
                                              <td class="display_none"></td>
                                              <td class=" text-right display_none">
                                                 <b>{{ _report_amount($_vat_total ?? 0) }}</b>
                                              </td>
                                              @endif
                                              @endif
                                            @if(isset($form_settings->_inline_discount)) @if($form_settings->_inline_discount==1)
                                            <td class=" text-right" ></td>
                                            <td class=" text-right" ><b>{!! $_total_discount_amount ?? 0 !!}</b></td>
                                             @else
                                            <td class=" text-right display_none" ></td>
                                            <td class=" text-right display_none" ><b>{!! $_total_discount_amount ?? 0 !!}</b></td>
                                            @endif
                                            @endif
                                              <td class=" text-right">
                                               <b> {{ _report_amount($_value_total ?? 0) }}</b>
                                              </td>
                                              @if(sizeof($permited_branch) > 1)
                                              <td class=""></td>
                                              @else
                                               <td class=" display_none"></td>
                                              @endif
                                              @if(sizeof($permited_costcenters) > 1)
                                              <td class=""></td>
                                              @else
                                               <td class=" display_none"></td>
                                              @endif
                                              @if(sizeof($store_houses) > 1)
                                              <td class=""></td>
                                              @else
                                               <td class=" display_none"></td>
                                              @endif

                                              @if(isset($form_settings->_show_self)) @if($form_settings->_show_self==1)
                                              <td class=""></td>
                                              @else
                                              @endif
                                              <td class=" display_none"></td>
                                              @endif
                                            </tr>
                                </tfoot>
                              </table>
                           
                          </div>
                        </td>
                        </tr>
                        @endif
         
      </div>

    <!-- Table row -->
    @if(sizeof($data->s_account) > 0)
    <div class="row">
      <div class="col-12 table-responsive">
        <table class="table">
          <thead>
          <tr>
            <th>ID</th>
            <th>Ledger</th>
            <th>Branch</th>
            <th>Cost Center</th>
            <th>Short Narr.</th>
            <th class="text-right" >Dr. Amount</th>
            <th class="text-right" >Cr. Amount</th>
          </tr>
          </thead>
          <tbody>
            @php
            $_total_dr_amount =0;
            $_total_cr_amount =0;
            @endphp
            @forelse($data->s_account as $detail_key=>$detail)
          <tr>
            <td>{!! $detail->id ?? '' !!}</td>
            <td>{!! $detail->_ledger->_name ?? '' !!}</td>
            <td>{!! $detail->_detail_branch->_name ?? '' !!}</td>
            <td>{!! $detail->_detail_cost_center->_name ?? '' !!}</td>
            <td>{!! $detail->_short_narr ?? '' !!}</td>
            <td class="text-right" >{!! _report_amount( $detail->_dr_amount ?? 0 ) !!}</td>
            <td class="text-right" >{!! _report_amount($detail->_cr_amount ?? 0 )!!}</td>
              @php
            $_total_dr_amount +=$detail->_dr_amount ?? 0;
            $_total_cr_amount +=$detail->_cr_amount ?? 0;
            @endphp
          </tr>
          @empty
          @endforelse
          
          </tbody>
          <tfoot>
            <tr>
              <th  colspan="5" class="text-right">Total:</th>
              <th  class="text-right" >{!! _report_amount($_total_dr_amount ?? 0) !!}</th>
              <th  class="text-right" >{!! _report_amount($_total_cr_amount ?? 0) !!}</th>
            </tr>
          </tfoot>
        </table>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
    @endif

    <div class="row">
    
      
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
  window.addEventListener("load", window.print());
</script>
</body>
</html>