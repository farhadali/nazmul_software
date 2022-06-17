@extends('backend.layouts.app')
@section('title',$page_name)

@section('content')
@php
$__user= Auth::user();
@endphp
<style type="text/css">
  ._main_item_search_box{
   width: 100%;
    position: absolute;
    z-index: 999;
  }
  ._barcode_search_div{

    margin: 0px auto;
    padding: 10px;
    background: #0986a2;
  }
</style>
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class=" col-sm-6 ">
            <h1 class="m-0 _page_name"> {{ $page_name ?? '' }} </h1>
          </div><!-- /.col -->
          
          <div class=" col-sm-6 ">
            <ol class="breadcrumb float-sm-right">
               @can('item-information-create')
             <li class="breadcrumb-item ">
                 <button type="button" class="btn btn-sm btn-default" data-toggle="modal" data-target="#exampleModalLong_item" title="Create New Item (Inventory) ">
                   <i class="nav-icon fas fa-ship"></i> 
                </button>
               </li>
               @endcan
               @can('account-ledger-create')
             <li class="breadcrumb-item ">
                 <button type="button" class="btn btn-sm btn-default" data-toggle="modal" data-target="#exampleModalLong" title="Create Ledger">
                   <i class="nav-icon fas fa-users"></i> 
                </button>
               </li>
               @endcan
                @can('sales-form-settings')
             <li class="breadcrumb-item ">
                 <button type="button" id="form_settings" class="btn btn-sm btn-default" data-toggle="modal" data-target="#exampleModal">
                   <i class="nav-icon fas fa-cog"></i> 
                </button>
               </li>
              @endcan
              <li class="breadcrumb-item ">
                 <a class="btn btn-sm btn-success" title="List" href="{{ route('sales.index') }}"> <i class="nav-icon fas fa-list"></i> </a>
               </li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>

    @php
    $_show_delivery_man = $form_settings->_show_delivery_man ?? 0;
    $_show_sales_man = $form_settings->_show_sales_man ?? 0;
    $_show_barcode = $form_settings->_show_barcode ?? 0;
    $_show_cost_rate =  $form_settings->_show_cost_rate ?? 0;
    $_show_vat =  $form_settings->_show_vat ?? 0;
   $_inline_discount = $form_settings->_inline_discount ?? 0;
    $_show_self = $form_settings->_show_self ?? 0;
    @endphp
  
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-header">
                @include('backend.message.message')
                    <div class="alert _required ">
                      <span class="_over_qty"></span> 
                    </div>

                    
              </div>
              <div class="card-body">
                <div class="row mb-2">
                  <div class="col-md-2"></div>
                 <div class="col-md-8">
                   <div class="_barcode_search_div mt-2" >
                                        <div class="form-group">
                                          <input required="" type="text" id="_serach_baorce" name="_serach_baorce" class="form-control _serach_baorce"  placeholder="Search with item name or Barcode"  >
                                            <div class="_main_item_search_box"></div>
                                        </div>
                            </div>
                    </div>
                    <div class="col-md-2">
                   <button class="btn btn-danger mt-2 _clear_icon" title="Clear Search"><i class=" fas fa-retweet "></i></button>
                 </div> 
                      
                                    
                  
                                      
                                     
                                </div>
               <form action="{{route('sales.store')}}" method="POST" class="purchase_form" >
                @csrf
                    <div class="row">
                       <div class="col-xs-12 col-sm-12 col-md-2">
                        <input type="hidden" name="_form_name" value="sales">
                            <div class="form-group">
                                <label>Date:</label>
                                  <div class="input-group date" id="reservationdate" data-target-input="nearest">
                                      <input type="text" name="_date" class="form-control datetimepicker-input" data-target="#reservationdate"/>
                                      <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
                                          <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                      </div>
                                  </div>
                              </div>
                        </div>
                        
                        <div class="col-xs-12 col-sm-12 col-md-2 ">
                            <div class="form-group">
                              <label class="mr-2" for="_order_number">Invoice Number:</label>
                              <input type="text" id="_order_number" name="_order_number" class="form-control _order_number" value="{{old('_order_number')}}" placeholder="Invoice Number" readonly >
                <input type="hidden" id="_search_form_value" name="_search_form_value" class="_search_form_value" value="2" >
                                
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-2 @if(sizeof($permited_branch) == 1) display_none @endif" >
                            <div class="form-group ">
                                <label>Branch:<span class="_required">*</span></label>
                               <select class="form-control" name="_branch_id" required >
                                  
                                  @forelse($permited_branch as $branch )
                                  <option value="{{$branch->id}}" @if(isset($request->_branch_id)) @if($request->_branch_id == $branch->id) selected @endif   @endif>{{ $branch->id ?? '' }} - {{ $branch->_name ?? '' }}</option>
                                  @empty
                                  @endforelse
                                </select>
                            </div>
                        </div>
                        
                        <div class="col-xs-12 col-sm-12 col-md-2 ">
                            <div class="form-group">
                              <label class="mr-2" for="_order_ref_id">Sales Order:</label>
                              <input type="text" id="_order_ref_id" name="_order_ref_id" class="form-control _order_ref_id" value="{{old('_order_ref_id')}}" placeholder="Sales Order" >
                                
                            </div>
                        </div>
                         @if($_show_sales_man ==1)
                        <div class="col-xs-12 col-sm-12 col-md-3 ">
                            <div class="form-group">
                              <label class="mr-2" for="_sales_man">Sales Man:</label>
                              <input type="text" id="_search_main_sales_man" name="_search_main_sales_man" class="form-control _search_main_sales_man" value="@if ($sales_man_name_leder = Session::get('sales_man_name_leder')) {{ $sales_man_name_leder}} @endif" placeholder="Sales Man" >

                            <input type="hidden" id="_sales_man" name="_sales_man_id" class="form-control _sales_man" value="@if ($_sales_man_id = Session::get('_sales_man_id')) {{ $_sales_man_id}} @endif" placeholder="Sales Man" >
                            <div class="search_box_sales_man"> </div>
                            </div>
                        </div>
                        @endif
                          @if($_show_delivery_man ==1)
                        <div class="col-xs-12 col-sm-12 col-md-3 ">
                            <div class="form-group">
                              <label class="mr-2" for="_delivery_man">Delivery Man:</label>
                              <input type="text" id="_search_main_delivery_man" name="_search_main_delivery_man" class="form-control _search_main_delivery_man" 
                              value="@if ($delivery_man_name_leder = Session::get('delivery_man_name_leder')) {{ $delivery_man_name_leder}} @endif" placeholder="Delivery Man" >

                            <input type="hidden" id="_delivery_man" name="_delivery_man_id" class="form-control _delivery_man" value="@if ($_delivery_man_id = Session::get('_delivery_man_id')) {{ $_delivery_man_id}} @endif" placeholder="Delivery Man" >
                            <div class="search_box_delivery_man"> </div>
                            </div>
                        </div>
                        @endif
                       
                        
                       <div class="col-xs-12 col-sm-12 col-md-3 ">
                            <div class="form-group">
                              <label class="mr-2" for="_main_ledger_id">Customer:<span class="_required">*</span></label>
                            <input type="text" id="_search_main_ledger_id" name="_search_main_ledger_id" class="form-control _search_main_ledger_id" value="{{old('_search_main_ledger_id')}}" placeholder="Customer" required>

                            <input type="hidden" id="_main_ledger_id" name="_main_ledger_id" class="form-control _main_ledger_id" value="{{old('_main_ledger_id')}}" placeholder="Customer" required>
                            <div class="search_box_main_ledger"> </div>

                                
                            </div>
                        </div>  
                        
                        <div class="col-xs-12 col-sm-12 col-md-3 ">
                            <div class="form-group">
                              <label class="mr-2" for="_phone">Phone:</label>
                              <input type="text" id="_phone" name="_phone" class="form-control _phone" value="{{old('_phone')}}" placeholder="Phone" >
                                
                            </div>
                        </div>
                        
                        <div class="col-xs-12 col-sm-12 col-md-3 ">
                            <div class="form-group">
                              <label class="mr-2" for="_address">Address:</label>
                              <input type="text" id="_address" name="_address" class="form-control _address" value="{{old('_address')}}" placeholder="Address" >
                                
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-3 ">
                            <div class="form-group">
                              <label class="mr-2" for="_referance">Referance:</label>
                              <input type="text" id="_referance" name="_referance" class="form-control _referance" value="{{old('_referance')}}" placeholder="Referance" >
                            </div>
                        </div>
                        
                        
                        <div class="col-md-12  ">
                             <div class="card">
                              <div class="card-header">
                                <strong>Item Details</strong>
                                
                               
                              </div>
                             
                              <div class="card-body">
                                <div class="table-responsive">
                                      <table class="table table-bordered" >
                                          <thead >
                                            <th class="text-left" >&nbsp;</th>
                                            <th class="text-left" >Item</th>
                                          
                                            <th class="text-left @if($_show_barcode  ==0) display_none @endif" >Barcode</th>
                                            
                                            <th class="text-left" >Qty</th>
                                            <th class="text-left @if($_show_cost_rate  ==0) display_none @endif" >Cost</th>
                                            <th class="text-left" >Sales Rate</th>
                                            
                                            <th class="text-left  @if($_show_vat  ==0) display_none @endif" >VAT%</th>
                                            <th class="text-left  @if($_show_vat  ==0) display_none @endif" >VAT Amount</th>
                                           
                                             
                                            <th class="text-left @if($_inline_discount  ==0) display_none @endif" >Dis%</th>
                                            <th class="text-left @if($_inline_discount  ==0) display_none @endif" >Discount</th>
                                            <th class="text-left" >Value</th>

                                            <th class="text-middle @if(isset($form_settings->_show_manufacture_date)) @if($form_settings->_show_manufacture_date==0) display_none @endif
                                            @endif" >Manu. Date</th>
                                             <th class="text-middle @if(isset($form_settings->_show_expire_date)) @if($form_settings->_show_expire_date==0) display_none @endif
                                            @endif"> Expired Date </th>
                                           
                                            <th class="text-left  @if(sizeof($permited_branch)  ==1) display_none @endif " >Branch</th>
                                            
                                            
                                             <th class="text-left  @if(sizeof($permited_costcenters)  ==1) display_none @endif " >Cost Center</th>
                                            
                                             
                                             <th class="text-left @if(sizeof($store_houses)  ==1) display_none @endif" >Store</th>
                                           
                                            
                                             <th class="text-left  @if($_show_self  ==0) display_none @endif " >Shelf</th>
                                           
                                           
                                          </thead>
                                          <tbody class="area__purchase_details" id="area__purchase_details">
                                            <tr class="_purchase_row _purchase_row__">
                                              <td>
                                                <a  href="#none" class="btn btn-default _purchase_row_remove" ><i class="fa fa-trash"></i></a>
                                              </td>
                                              <td>
                                                <input type="text" name="_search_item_id[]" class="form-control _search_item_id width_280_px" placeholder="Item">

                                                <input type="hidden" name="_item_id[]" class="form-control _item_id " >
                                                <input type="hidden" name="_p_p_l_id[]" class="form-control _p_p_l_id " >
                                                <input type="hidden" name="_purchase_invoice_no[]" class="form-control _purchase_invoice_no" >
                                                <input type="hidden" name="_purchase_detail_id[]" class="form-control _purchase_detail_id" >
                                                <div class="search_box_item">
                                                  
                                                </div>
                                              </td>
                                             
                                              <td class=" @if($_show_barcode  ==0) display_none @endif ">
                                                <input type="text" name="_barcode[]" class="form-control _barcode " >
                                              </td>
                                              
                                              <td>
                                                <input type="number" name="_qty[]" class="form-control _qty _common_keyup" >
                                              </td>
                                              <td class=" @if($_show_cost_rate ==0) display_none @endif " >
                                                <input type="number" name="_rate[]" class="form-control _rate  " readonly>
                                              </td>
                                              <td>
                                                <input type="number" name="_sales_rate[]" class="form-control _sales_rate _common_keyup " >
                                              </td>
                                              
                                              <td class=" @if($_show_vat == 0) display_none @endif ">
                                                <input type="number" name="_vat[]" class="form-control  _vat _common_keyup" placeholder="VAT%" >
                                              </td>
                                              <td class="@if($_show_vat ==0) display_none @endif " >
                                                <input type="number" name="_vat_amount[]" class="form-control  _vat_amount" placeholder="VAT Amount"  >
                                              </td>
                                              
                                              
                                              <td class="@if($_inline_discount ==0) display_none @endif " >
                                                <input type="number" name="_discount[]" class="form-control  _discount _common_keyup" >
                                              </td>
                                              <td class="@if($_inline_discount ==0) display_none @endif" >
                                                <input type="number" name="_discount_amount[]" class="form-control  _discount_amount" >
                                              </td>
                                              
                                              <td>
                                                <input type="number" name="_value[]" class="form-control _value " readonly >
                                              </td>
                                              <td class="@if(isset($form_settings->_show_manufacture_date)) @if($form_settings->_show_manufacture_date==0) display_none  @endif @endif">
                                                <input type="date" name="_manufacture_date[]" class="form-control _manufacture_date " >
                                              </td>
                                              <td class="@if(isset($form_settings->_show_expire_date)) @if($form_settings->_show_expire_date==0) display_none  @endif @endif">
                                                <input type="date" name="_expire_date[]" class="form-control _expire_date " >
                                              </td>
                                            
                                               <td class="@if(sizeof($permited_branch) == 1) display_none @endif ">
                                                <select class="form-control  _main_branch_id_detail" name="_main_branch_id_detail[]"  required>
                                                  @forelse($permited_branch as $branch )
                                                  <option value="{{$branch->id}}" @if(isset($request->_branch_id)) @if($request->_branch_id == $branch->id) selected @endif   @endif>{{ $branch->_name ?? '' }}</option>
                                                  @empty
                                                  @endforelse
                                                </select>
                                              </td>
                                             
                                             
                                               <td class=" @if(sizeof($permited_costcenters) == 1) display_none @endif " >
                                                 <select class="form-control  _main_cost_center" name="_main_cost_center[]" required >
                                            
                                                  @forelse($permited_costcenters as $costcenter )
                                                  <option value="{{$costcenter->id}}" @if(isset($request->_main_cost_center)) @if($request->_main_cost_center == $costcenter->id) selected @endif   @endif> {{ $costcenter->_name ?? '' }}</option>
                                                  @empty
                                                  @endforelse
                                                </select>
                                              </td>
                                            
                                              <td class=" @if(sizeof($store_houses) == 1) display_none @endif ">
                                                <select class="form-control  _main_store_id" name="_main_store_id[]">
                                                  @forelse($store_houses as $store)
                                                  <option value="{{$store->id}}">{{$store->_name ?? '' }}</option>
                                                  @empty
                                                  @endforelse
                                                </select>
                                                
                                              </td>
                                             
                                             
                                              <td class=" @if($_show_self==0) display_none @endif ">
                                                <input type="text" name="_store_salves_id[]" class="form-control _store_salves_id " >
                                              </td>
                                              
                                              
                                            </tr>
                                          </tbody>
                                          <tfoot>
                                            <tr>
                                              <td>
                                                <a href="#none"  class="btn btn-default btn-sm" onclick="purchase_row_add(event)"><i class="fa fa-plus"></i></a>
                                              </td>
                                              <td  class="text-right"><b>Total</b></td>
                                              
                                                <td  class="text-right @if($_show_barcode==0) display_none @endif"></td>
                                             
                                              <td>
                                                <input type="number" step="any" min="0" name="_total_qty_amount" class="form-control _total_qty_amount" value="0" readonly required>
                                              </td>
                                              <td class="@if($_show_cost_rate==0) display_none @endif"></td>
                                              <td></td>
                                              
                                              <td class="@if($_show_vat==0) display_none @endif"></td>
                                              <td class="@if($_show_vat==0) display_none @endif">
                                                <input type="number" step="any" min="0" name="_total_vat_amount" class="form-control _total_vat_amount" value="0" readonly required>
                                              </td>
                                              
                                              <td class="@if($_inline_discount==0) display_none @endif"></td>
                                              <td class="@if($_inline_discount==0) display_none @endif">
                                                <input type="number" step="any" min="0" name="_total_discount_amount" class="form-control _total_discount_amount" value="0" readonly required>
                                              </td>
                                             
                                              <td>
                                                <input type="number" step="any" min="0" name="_total_value_amount" class="form-control _total_value_amount" value="0" readonly required>
                                              </td>
                                              <td class="@if(isset($form_settings->_show_manufacture_date)) @if($form_settings->_show_manufacture_date==0) display_none  @endif @endif">
                                              </td>
                                              <td class="@if(isset($form_settings->_show_expire_date)) @if($form_settings->_show_expire_date==0) display_none  @endif @endif">
                                              </td>
                                             
                                               <td class="@if(sizeof($permited_branch) == 1) display_none @endif"></td>
                                              
                                              
                                               <td class="@if(sizeof($permited_costcenters) == 1) display_none @endif"></td>
                                             
                                               <td class="@if(sizeof($store_houses) == 1) display_none @endif"></td>
                                              
                                              <td class="@if($_show_self==0) display_none @endif"></td>
                                             
                                            </tr>
                                          </tfoot>
                                      </table>
                                </div>
                            </div>
                          </div>
                        </div>
                        
                      @if($__user->_ac_type==1)
                      @include('backend.sales.create_acc_cb')
                         
                      @else
                       @include('backend.sales.create_acc_detail')
                      @endif


                        <div class="col-xs-12 col-sm-12 col-md-12 mb-10">
                          <table class="table" style="border-collapse: collapse;margin: 0px auto;">
                            <tr>
                              <td style="border:0px;width: 20%;"><label for="_note">Note</label></td>
                              <td style="border:0px;width: 80%;">
                                @if ($_print = Session::get('_print_value'))
                                     <input type="hidden" name="_after_print" value="{{$_print}}" class="_after_print" >
                                    @else
                                    <input type="hidden" name="_after_print" value="0" class="_after_print" >
                                    @endif
                                    @if ($_master_id = Session::get('_master_id'))
                                     <input type="hidden" name="_master_id" value="{{url('sales/print')}}/{{$_master_id}}" class="_master_id">
                                    
                                    @endif
                                   
                                       <input type="hidden" name="_print" value="0" class="_save_and_print_value">

                                    <input type="text" id="_note"  name="_note" class="form-control _note" value="{{old('_note')}}" placeholder="Note" required >
                              </td>
                            </tr>
                            <tr>
                              <td style="border:0px;width: 20%;"><label for="_sub_total">Sub Total</label></td>
                              <td style="border:0px;width: 80%;">
                                <input type="text" name="_sub_total" class="form-control width_200_px" id="_sub_total" readonly value="0">
                              </td>
                            </tr>
                            <tr>
                              <td style="border:0px;width: 20%;"><label for="_discount_input">Invoice Discount</label></td>
                              <td style="border:0px;width: 80%;">
                                <input type="text" name="_discount_input" class="form-control width_200_px" id="_discount_input" value="0" >
                              </td>
                            </tr>
                            <tr>
                              <td style="border:0px;width: 20%;"><label for="_total_discount">Total Discount</label></td>
                              <td style="border:0px;width: 80%;">
                                <input type="text" name="_total_discount" class="form-control width_200_px" id="_total_discount" readonly value="0">
                              </td>
                            </tr>
                           
                            <tr class=" @if($_show_vat==0) display_none @endif">
                              <td style="border:0px;width: 20%;"><label for="_total_vat">Total VAT</label></td>
                              <td style="border:0px;width: 80%;">
                                <input type="text" name="_total_vat" class="form-control width_200_px" id="_total_vat" readonly value="0">
                              </td>
                            </tr>
                           
                            <tr>
                              <td style="border:0px;width: 20%;"><label for="_total">Net Total </label></td>
                              <td style="border:0px;width: 80%;">
                          <input type="text" name="_total" class="form-control width_200_px" id="_total" readonly value="0">
                              </td>
                            </tr>
                          </table>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 bottom_save_section text-middle">
                            <button type="submit" class="btn btn-success submit-button ml-5"><i class="fa fa-credit-card mr-2" aria-hidden="true"></i> Save</button>
                            <button type="submit" class="btn btn-warning submit-button _save_and_print"><i class="fa fa-print mr-2" aria-hidden="true"></i> Save & Print</button>
                        </div>
                        <br><br>
                        
                    </div>
                    {!! Form::close() !!}
                
              </div>
            </div>
            <!-- /.card -->

            
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </div>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog  modal-lg" role="document">
    <form action="{{ url('sales-settings')}}" method="POST">
        @csrf
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Sales Form Settings</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body display_form_setting_info">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
       </form>
    </div>
  </div>



</div>
@include('backend.common-modal.item_ledger_modal')

@php
      $_string_ids = $form_settings->_cash_customer ?? 0;
      if($_string_ids !=0){
        $_cash_customer = explode(",",$_string_ids);
      }else{
        $_cash_customer =[];
      }
      @endphp

@endsection

@section('script')

<script type="text/javascript">
  @if(empty($form_settings))
    $("#form_settings").click();
    setting_data_fetch();
  @endif
  var default_date_formate = `{{default_date_formate()}}`;
  var _after_print = $(document).find("._after_print").val();
  var _master_id = $(document).find("._master_id").val();
  if(_after_print ==1){
      var open_new = window.open(_master_id, '_blank');
      if (open_new) {
          //Browser has allowed it to be opened
          open_new.focus();
      } else {
          //Browser has blocked it
          alert('Please allow popups for this website');
      }
  }

var _text_val="";


  $(document).on("click","#form_settings",function(){
         setting_data_fetch();
  })

  function setting_data_fetch(){
      var request = $.ajax({
            url: "{{url('sales-setting-modal')}}",
            method: "GET",
            dataType: "html"
          });
         request.done(function( result ) {
              $(document).find(".display_form_setting_info").html(result);
         })
  }


$(document).on('keyup','#_serach_baorce',delay(function(event){
  event.preventDefault();
  
      _text_val = $(this).val().trim();
       _main_item_search(_text_val)
      if(event.keyCode ==13 || event.which==13){
        event.preventDefault();
         // console.log("Press Enter")
          $("._serach_baorce").val('');
          $("._serach_baorce").focus();
      }
  

}, 500));


$(document).on('click','._action_button',function(){
  $(this).closest('td').css({"background":"#fff"})
})

function _main_item_search(_text_val){
  var request = $.ajax({
      url: "{{url('item-sales-barcode-search')}}",
      method: "GET",
      data: { _text_val : _text_val },
      dataType: "JSON"
    });
  request.done(function( result ) {
// console.log("keyup call function and ger data")
console.log(result)
      var search_html =``;
      var data = result.datas.data; 
      if(data.length > 0 ){
            search_html +=`<div class="card"><table style="width: 70%;">
                            <tbody>`;
                        for (var i = 0; i < data.length; i++) {
                          var _barcode_array =[];
                      var __barcode = data[i]._barcode;
                      __barcode = isEmpty(__barcode);
                      if(__barcode !=''){
                         _barcode_array = __barcode.split(",");
                      } 

 search_html += `<tr class="_barcode_search_row_item" >
                <td>${data[i]._master_id}
                <input type="hidden" name="_id_item" class="_id_item" value="${data[i]._item_id}">
                </td><td>${data[i]._name} </td>
                                   
                                   <td>${data[i]._qty}</td>
                                    <td>${data[i]._sales_rate}</td>
                                    `;
                                    if(_barcode_array.length == 1){ //_barcode _array_means it's Model Barcode if item qty is 1 then unique barcode count as model barcode 
                              search_html +=`<td class="text-center">
                                          <table class="table">`;
                                      for (var j = 0; j < _barcode_array.length; j++) {
                                       search_html +=`<tr><td class="_cursor_pointer _barcode_single_item" 
                                       _attr__id_item="${data[i]._item_id}" 
                                       _attr__p_item_row_id="${data[i].id}"
                                       _attr__p_item__name="${data[i]._name}"
                                       _attr__p_item_item_id="${data[i]._item_id}"
                                       _attr__p_item__unit_id="${data[i]._unit_id}"
                                       _attr__p_item_barcode="${_barcode_array[j]}"
                                       _attr__p_item_manufacture_date="${data[i]._manufacture_date}"
                                       _attr__p_item_expire_date="${data[i]._expire_date}"
                                       _attr__p_item_sales_rate="${data[i]._sales_rate}"
                                       _attr__p_item_qty="${data[i]._qty}"
                                       _attr__p_item_pur_rate="${data[i]._pur_rate}"
                                       _attr__p_item_sales_discount="${data[i]._sales_discount}"
                                       _attr__p_item_sales_vat="${data[i]._sales_vat}"
                                       _attr__p_item_purchase_detail_id="${data[i]._purchase_detail_id}"
                                       _attr__p_item_master_id="${data[i]._master_id}"
                                       _attr__p_item_branch_id="${data[i]._branch_id}"
                                       _attr__p_item_cost_center_id="${data[i]._cost_center_id}"
                                       _attr__p_item_store_id="${data[i]._store_id}"
                                       _attr__p_item_store_salves_id="${data[i]._store_salves_id}"
                                        >${_barcode_array[j]} <i class="fas fa-plus"></i></td></tr>`;
                                      }
                                           
                             search_html +=` </table></td>`;
                                    }else if(_barcode_array.length > 1){ //_barcode _array_means more then 1 means  it's Unique Barcode and it's qty will be aa 
                              search_html +=`<td class="text-center"><a class="btn btn-sm btn-default _action_button" data-toggle="collapse" href="#collapseExample__${data[i].id}" role="button" aria-expanded="false" aria-controls="collapseExample">
                                      <i class=" fas fa-angle-down"></i></a>
                                      <div class="collapse" id="collapseExample__${data[i].id}" style="max-height:200px;overflow:scroll;">
                                          <table class="table">`;
                                      for (var j = 0; j < _barcode_array.length; j++) {
                                       search_html +=`<tr style="border:1px solid silver;"><td class="_cursor_pointer _barcode_single_item" 
                                       _attr__id_item="${data[i]._item_id}" 
                                       _attr__p_item_row_id="${data[i].id}"
                                       _attr__p_item__name="${data[i]._name}"
                                       _attr__p_item_item_id="${data[i]._item_id}"
                                       _attr__p_item__unit_id="${data[i]._unit_id}"
                                       _attr__p_item_barcode="${_barcode_array[j]}"
                                       _attr__p_item_manufacture_date="${data[i]._manufacture_date}"
                                       _attr__p_item_expire_date="${data[i]._expire_date}"
                                       _attr__p_item_sales_rate="${data[i]._sales_rate}"
                                       _attr__p_item_qty="1"
                                       _attr__p_item_pur_rate="${data[i]._pur_rate}"
                                       _attr__p_item_sales_discount="${data[i]._sales_discount}"
                                       _attr__p_item_sales_vat="${data[i]._sales_vat}"
                                       _attr__p_item_purchase_detail_id="${data[i]._purchase_detail_id}"
                                       _attr__p_item_master_id="${data[i]._master_id}"
                                       _attr__p_item_branch_id="${data[i]._branch_id}"
                                       _attr__p_item_cost_center_id="${data[i]._cost_center_id}"
                                       _attr__p_item_store_id="${data[i]._store_id}"
                                       _attr__p_item_store_salves_id="${data[i]._store_salves_id}"
                                        >${_barcode_array[j]} <i class="fas fa-plus"></i></td></tr>`;
                                      }
                                           
                             search_html +=` </table>
                                      <div></td>`;
                                    }else{
                              search_html +=`<td class="_cursor_pointer text-center _barcode_single_item" 
                                       _attr__id_item="${data[i]._item_id}" 
                                       _attr__p_item_row_id="${data[i].id}"
                                       _attr__p_item__name="${data[i]._name}"
                                       _attr__p_item_item_id="${data[i]._item_id}"
                                       _attr__p_item__unit_id="${data[i]._unit_id}"
                                       _attr__p_item_barcode="${_barcode_array[j]}"
                                       _attr__p_item_manufacture_date="${data[i]._manufacture_date}"
                                       _attr__p_item_expire_date="${data[i]._expire_date}"
                                       _attr__p_item_sales_rate="${data[i]._sales_rate}"
                                       _attr__p_item_qty="${data[i]._qty}"
                                       _attr__p_item_pur_rate="${data[i]._pur_rate}"
                                       _attr__p_item_sales_discount="${data[i]._sales_discount}"
                                       _attr__p_item_sales_vat="${data[i]._sales_vat}"
                                       _attr__p_item_purchase_detail_id="${data[i]._purchase_detail_id}"
                                       _attr__p_item_master_id="${data[i]._master_id}"
                                       _attr__p_item_branch_id="${data[i]._branch_id}"
                                       _attr__p_item_cost_center_id="${data[i]._cost_center_id}"
                                       _attr__p_item_store_id="${data[i]._store_id}"
                                       _attr__p_item_store_salves_id="${data[i]._store_salves_id}" >
                              <i class="fas fa-plus"></i>`;
                                    }
                              search_html +=` </td>
                                   </tr>`;
                        }                         
            search_html += ` </tbody> </table></div>`;
      }else{
        search_html +=`<div class="card"><table style="width: 300px;"> 
        <thead><th colspan="3">No Data Found</th></thead><tbody></tbody></table></div>`;
      }     
      $(document).find('._main_item_search_box').html(search_html);
      $(document).find('._main_item_search_box').addClass('search_box_show').show();
      
    });
     
    request.fail(function( jqXHR, textStatus ) {
      alert( "Request failed: " + textStatus );
    });


} 

$(document).on('click','._clear_icon',function(){
  $("._serach_baorce").val('');
  $(document).find('._main_item_search_box').removeClass('search_box_show').hide();
}) 

$(document).on('click','._barcode_single_item',function(){
  var _vat_amount =0;
  var row_id = $(this).attr('_attr__p_item_row_id');
  var _name = $(this).attr('_attr__p_item__name');
  var _p_item_item_id = $(this).attr('_attr__p_item_item_id');
  var _unit_id = $(this).attr('_attr__p_item__unit_id');
  var _barcode = $(this).attr('_attr__p_item_barcode');
  var _manufacture_date = $(this).attr('_attr__p_item_manufacture_date');
  var _expire_date = $(this).attr('_attr__p_item_expire_date');
  var _sales_rate = parseFloat($(this).attr('_attr__p_item_sales_rate'));
  var _qty = parseFloat($(this).attr('_attr__p_item_qty'));
  var _pur_rate = parseFloat($(this).attr('_attr__p_item_pur_rate'));
  var _sales_discount = parseFloat($(this).attr('_attr__p_item_sales_discount'));
  var _sales_vat = parseFloat($(this).attr('_attr__p_item_sales_vat'));
  var _purchase_detail_id = $(this).attr('_attr__p_item_purchase_detail_id');
  var _master_id = $(this).attr('_attr__p_item_master_id');
  var _branch_id = $(this).attr('_attr__p_item_branch_id');
  var _cost_center_id = $(this).attr('_attr__p_item_cost_center_id');
  var _store_id = $(this).attr('_attr__p_item_store_id');
  var _store_salves_id = $(this).attr('_attr__p_item_store_salves_id');
  
 _barcode = isEmpty(_barcode);
 _manufacture_date = isEmpty(_manufacture_date);
 _expire_date = isEmpty(_expire_date);
 _store_salves_id = isEmpty(_store_salves_id);

  


  var _search_item_id_s = $("._search_item_id");
  var _item_id_s = $("._item_id");
  var _p_p_l_id_s = $("._p_p_l_id");
  var _purchase_invoice_no_s = $("._purchase_invoice_no");
  var _purchase_detail_id_s = $("._purchase_detail_id");
  var _barcode_s = $("._barcode");
  var _rate_s = $("._rate");
  var _sales_rate_s = $("._sales_rate");
  var _vat_s = $("._vat");
  var _discount_s = $("._discount");
  var _vat_amount_s = $("._vat_amount");
  var _discount_amount_s = $("._discount_amount");
  var _qty_s = $("._qty");
  var _value_s = $("._value");
  var _store_salves_id_s = $("._store_salves_id");
  var _manufacture_date_s = $("._manufacture_date");
  var _expire_date_s = $("._expire_date");
  var _add_row_or_not = 0;

 //console.log("this row id "+row_id)
    for(var i = 0; i < _p_p_l_id_s.length; i++){
      var _p_p_l_id_s_val = $(_p_p_l_id_s[i]).val();
      //console.log("_p_p_l_id_s_val "+_p_p_l_id_s_val)
  //Remove all extra row where information is not available
      if(_p_p_l_id_s_val ==""){
        _add_row_or_not = 0;
        $(_p_p_l_id_s[i]).closest('tr').remove();
       
      }
    }
  //First check added this row is available yes or not if yes then increase the item qty amount or create new row
      var _has_item_row= $('._p_p_l_id').hasClass('_p_p_l_id__'+row_id); 
      // console.log("__new_qty  "+__new_qty);
       //  console.log("row_id  "+row_id);

      if(_has_item_row ==true){
         var _old_qty = parseFloat($("._qty__"+row_id).val());
        if(isNaN(_old_qty)){ _old_qty =1 }

        
//Check unique Barcode add
      // _qty = parseFloat($(this).attr('_attr__p_item_qty'));
        var _barcode__ = $("._barcode__"+row_id).val();
        var old_barcode =    isEmpty(_barcode__);
        /*console.log("old_barcode "+old_barcode)
        console.log('current_barcode '+_barcode)*/
        if(old_barcode !=''){
         var  _attr__p_item_qty = parseFloat($(this).attr('_attr__p_item_qty'));
         var _check_duplicate_barcode = [];
         var  _old_barcode_array = old_barcode.split(",");
           for (var i = 0; i < _old_barcode_array.length; i++) {
                if(_old_barcode_array[i] ==_barcode && _attr__p_item_qty ==1){
                    var yes_no =   confirm("Do You Want to Remove This Item !");
                    if(yes_no ==true){
                      $("._barcode__"+row_id).val(old_barcode.replace(","+_barcode,"").replace(_barcode+",","").replace(_barcode,""));
                      var __new_qty = (_old_qty-1);
                      console.log(" After remove barcode "+$("._barcode__"+row_id).val())
                     
                    }
                } 
                if(!_old_barcode_array.includes(_barcode)  && _attr__p_item_qty == 1){
                //if(_old_barcode_array[i] !=_barcode && _attr__p_item_qty == 1){
                  console.log("added new barcode ");
                    var _added_new_barcode = old_barcode+","+_barcode;
                    $("._barcode__"+row_id).val(old_barcode+","+_barcode);
                    var __new_qty = (_old_qty+1);
                     console.log(" After added barcode "+ $("._barcode__"+row_id).val())
                }
                if(_old_barcode_array.includes(_barcode)  && _attr__p_item_qty > 1){
                //if(_old_barcode_array[i] !=_barcode && _attr__p_item_qty == 1){
                  console.log("added model barcode ");
                    var __new_qty = (_old_qty+1);
                     console.log(" After added barcode "+ $("._barcode__"+row_id).val())
                }
           }
        }else{
          __new_qty =(_old_qty+1);
          $("._barcode__"+row_id).val(_barcode);
        } 

        var _sales_rate__ = parseFloat($("._sales_rate__"+row_id).val());
        var _rate__ = parseFloat($("._rate__"+row_id).val());
        var _vat__ = parseFloat($("._vat__"+row_id).val());
        var _vat_amount__ = parseFloat($("._vat_amount__"+row_id).val());
        var _discount__ = parseFloat($("._discount__"+row_id).val());
        var _discount_amount__ = parseFloat($("._discount_amount__"+row_id).val());
        var _value__ = parseFloat($("._value__"+row_id).val());
          
          if(isNaN(_sales_rate__)){ _sales_rate__=0 }
          if(isNaN(_rate__)){ _rate__=0 }
          if(isNaN(_vat__)){ _vat__=0 }
          if(isNaN(_discount__)){ _discount__=0 }
        
       var __value_ = (parseFloat(__new_qty)*parseFloat(_sales_rate__));

          _vat_amount = ((__value_*_vat__)/100)
          if(isNaN(_sales_discount)){ _sales_discount=0 }
          _discount_amount = parseFloat((__value_*_discount__)/100);



       
         
        


        
        $("._qty__"+row_id).val(__new_qty);
        $("._sales_rate__"+row_id).val(_sales_rate__);
        $("._rate__"+row_id).val(_rate__);
        $("._vat__"+row_id).val(_vat__);
        $("._discount__"+row_id).val(_discount__);
        $("._discount_amount__"+row_id).val(_discount_amount);
        $("._vat_amount__"+row_id).val(_vat_amount);
        $("._value__"+row_id).val(__value_);
         _purchase_total_calculation();
        //Update this row information 
      }else{
        //Add new row for new data entry with all new data
          var  _qty=1; 
          if(isNaN(_sales_rate)){ _sales_rate=0 }
          if(isNaN(_pur_rate)){ _pur_rate=0 }
          if(isNaN(_sales_vat)){ _sales_vat=0 }

          _vat_amount = ((_sales_rate*_sales_vat)/100)
          if(isNaN(_sales_discount)){ _sales_discount=0 }
          _discount_amount = ((_sales_rate*_sales_discount)/100);
          var _value = (parseFloat(_qty)*parseFloat(_sales_rate));

        _add_new_row_for_barcode(row_id,_name,_p_item_item_id,_unit_id,_barcode,_manufacture_date,_expire_date,_sales_rate,_qty,_pur_rate,_sales_discount,_sales_vat,_purchase_detail_id,_master_id,_branch_id,_cost_center_id,_store_id,_store_salves_id,_sales_vat,_discount_amount,_vat_amount,_value);
        _purchase_total_calculation();
      }
     
      
  
   
  //$(document).find('._main_item_search_box').removeClass('search_box_show').hide();
})

function isEmpty(value){
  if ( value === 'undefined' || value =="" || value =="null" || value ==null || value ==undefined) {
        return  value = "";
    }else{
      return value;
    }
}

function _add_new_row_for_barcode(row_id,_name,_p_item_item_id,_unit_id,_barcode,_manufacture_date,_expire_date,_sales_rate,_qty,_pur_rate,_sales_discount,_sales_vat,_purchase_detail_id,_master_id,_branch_id,_cost_center_id,_store_id,_store_salves_id,_discount_amount,_vat_amount,_value){
  // console.log("_value "+_value)
  // console.log("_qty "+_qty)
  // console.log("_sales_rate "+_sales_rate)
  var _value_line = parseFloat(parseFloat(_qty)*parseFloat(_sales_rate));

 $("#area__purchase_details").append( `<tr class="_purchase_row">
                                              <td>
                                                <a  href="#none" class="btn btn-default _purchase_row_remove" ><i class="fa fa-trash"></i></a>
                                              </td>
                                              <td>
                                                <input type="text" name="_search_item_id[]" class="form-control _search_item_id _search_item_id__${row_id} width_280_px" placeholder="Item" value="${_name}">
                                                <input type="hidden" name="_item_id[]" class="form-control _item_id _item_id__${row_id} width_200_px" value="${_p_item_item_id}">
                                                <input type="hidden" name="_p_p_l_id[]" class="form-control _p_p_l_id _p_p_l_id__${row_id} " value="${row_id}">
                                                <input type="hidden" name="_purchase_invoice_no[]" class="form-control _purchase_invoice_no _purchase_invoice_no__${row_id}" value="${_master_id}" >
                                                <input type="hidden" name="_purchase_detail_id[]" class="form-control _purchase_detail_id _purchase_detail_id__${row_id}" value=${_purchase_detail_id} >
                                                
                                                <div class="search_box_item">
                                                  
                                                </div>
                                              </td>
                                             
                                              <td class="@if($_show_barcode==0) display_none @endif">
                                                <input type="text" readonly name="_barcode[]" class="form-control _barcode _barcode__${row_id} " value="${_barcode}" >
                                              </td>
                                              <td>
                                                <input type="number" name="_qty[]" class="form-control _qty _qty__${row_id} _common_keyup" value="${_qty}" >
                                              </td>
                                              <td class="@if($_show_cost_rate==0) display_none @endif">
                                                <input type="number" name="_rate[]" class="form-control _rate _rate__${row_id} " readonly value="${_pur_rate}" >
                                              </td>
                                              <td>
                                                <input type="number" name="_sales_rate[]" class="form-control _sales_rate _sales_rate__${row_id} _common_keyup" value="${_sales_rate}" >
                                              </td>
                                               
                                                <td class="@if($_show_vat==0) display_none @endif">
                                                <input type="number" name="_vat[]" class="form-control  _vat _vat__${row_id} _common_keyup" value="${_sales_vat}" >
                                              </td>
                                              <td class="@if($_show_vat==0) display_none @endif">
                                                <input type="number" name="_vat_amount[]" class="form-control  _vat_amount _vat_amount__${row_id}" value="${_vat_amount}" >
                                              </td>
                                                <td class="@if($_inline_discount==0) display_none @endif">
                                                <input type="number" name="_discount[]" class="form-control  _discount _discount__${row_id} _common_keyup" value="${_sales_discount}" >
                                              </td>
                                              <td class="@if($_inline_discount==0) display_none @endif">
                                                <input type="number" name="_discount_amount[]" class="form-control  _discount_amount _discount_amount__${row_id}" value="${_discount_amount}" >
                                              </td>
                                             
                                              <td>
                                                <input type="number" name="_value[]" class="form-control _value _value__${row_id} " readonly value="${_value_line}" >
                                              </td>
                                              <td class="@if(isset($form_settings->_show_manufacture_date)) @if($form_settings->_show_manufacture_date==0) display_none  @endif @endif">
                                                <input type="date" name="_manufacture_date[]" class="form-control _manufacture_date__${row_id} _manufacture_date " value="${_manufacture_date}" >
                                              </td>
                                              <td class="@if(isset($form_settings->_show_expire_date)) @if($form_settings->_show_expire_date==0) display_none  @endif @endif">
                                                <input type="date" name="_expire_date[]" class="form-control _expire_date__${row_id} _expire_date " value="${_expire_date}" >
                                              </td>
                                              
                                              <td class="@if(sizeof($permited_branch)==1) display_none @endif">
                                                <select class="form-control  _main_branch_id_detail__${row_id} _main_branch_id_detail" name="_main_branch_id_detail[]"  required>
                                                  @forelse($permited_branch as $branch )
                                                  <option value="{{$branch->id}}" @if(isset($request->_branch_id)) @if($request->_branch_id == $branch->id) selected @endif   @endif>{{ $branch->_name ?? '' }}</option>
                                                  @empty
                                                  @endforelse
                                                </select>
                                              </td>
                                              
                                               <td class="@if(sizeof($permited_costcenters)==1) display_none @endif">
                                                 <select class="form-control  _main_cost_center__${row_id} _main_cost_center" name="_main_cost_center[]" required >
                                            
                                                  @forelse($permited_costcenters as $costcenter )
                                                  <option value="{{$costcenter->id}}" @if(isset($request->_main_cost_center)) @if($request->_main_cost_center == $costcenter->id) selected @endif   @endif> {{ $costcenter->_name ?? '' }}</option>
                                                  @empty
                                                  @endforelse
                                                </select>
                                              </td>
                                              
                                             
                                              <td class="@if(sizeof($store_houses)==1) display_none @endif">
                                                <select class="form-control  _main_store_id__${row_id} _main_store_id" name="_main_store_id[]">
                                                  @forelse($store_houses as $store)
                                                  <option value="{{$store->id}}" >{{$store->_name ?? '' }}</option>
                                                  @empty
                                                  @endforelse
                                                </select>
                                                
                                              </td>
                                              
                                              <td class="@if($_show_self==0) display_none @endif">
                                                <input type="text" name="_store_salves_id[]" class="form-control _store_salves_id _store_salves_id__${row_id} " value="${_store_salves_id}" >
                                              </td>
                                              
                                              
                                            </tr>`);

_purchase_total_calculation();

}

  

  $(document).on('keyup','._search_item_id',delay(function(e){
    $(document).find('._search_item_id').removeClass('required_border');
    var _gloabal_this = $(this);
    var _text_val = $(this).val().trim();


  var request = $.ajax({
      url: "{{url('item-sales-search')}}",
      method: "GET",
      data: { _text_val : _text_val },
      dataType: "JSON"
    });
     
    request.done(function( result ) {

      var search_html =``;
      var data = result.data; 
      if(data.length > 0 ){
            search_html +=`<div class="card"><table style="width: 300px;">
                            <tbody>`;
                        for (var i = 0; i < data.length; i++) {
                         search_html += `<tr class="search_row_item" >
                                        <td>${data[i]._master_id}
                                        <input type="hidden" name="_id_item" class="_id_item" value="${data[i]._item_id}">
                                        </td><td>${data[i]._name}
                      <input type="hidden" name="_p_item_row_id" class="_p_item_row_id" value="${data[i].id}">
                      <input type="hidden" name="_p_item_name" class="_p_item__name" value="${data[i]._name}">
                      <input type="hidden" name="_p_item_item_id" class="_p_item_item_id" value="${data[i]._item_id}">
                      <input type="hidden" name="_p_item__unit_id" class="_p_item__unit_id" value="${data[i]._unit_id}">
                      <input type="hidden" name="_p_item_barcode" class="_p_item_barcode" value="${data[i]._barcode}">
  <input type="hidden" name="_p_item_manufacture_date" class="_p_item_manufacture_date" value="${data[i]._manufacture_date}">
  <input type="hidden" name="_p_item_expire_date" class="_p_item_expire_date" value="${data[i]._expire_date}">
  <input type="hidden" name="_p_item_sales_rate" class="_p_item_sales_rate" value="${data[i]._sales_rate}">
  <input type="hidden" name="_p_item_qty" class="_p_item_qty" value="${data[i]._qty}">
  <input type="hidden" name="_p_item_pur_rate" class="_p_item_pur_rate" value="${data[i]._pur_rate}">
  <input type="hidden" name="_p_item_sales_discount" class="_p_item_sales_discount" value="${data[i]._sales_discount}">
  <input type="hidden" name="_p_item_sales_vat" class="_p_item_sales_vat" value="${data[i]._sales_vat}">
  <input type="hidden" name="_p_item_purchase_detail_id" class="_p_item_purchase_detail_id" value="${data[i]._purchase_detail_id}">
  <input type="hidden" name="_p_item_master_id" class="_p_item_master_id" value="${data[i]._master_id}">
  <input type="hidden" name="_p_item_branch_id" class="_p_item_branch_id" value="${data[i]._branch_id}">
  <input type="hidden" name="_p_item_cost_center_id" class="_p_item_cost_center_id" value="${data[i]._cost_center_id}">
  <input type="hidden" name="_p_item_store_id" class="_p_item_store_id" value="${data[i]._store_id}">
  <input type="hidden" name="_p_item_store_salves_id" class="_p_item_store_salves_id" value="${data[i]._store_salves_id}">
                                   </td>
                                   
                                   <td>${data[i]._qty}</td>
                                    <td>${data[i]._sales_rate}</td>
                                   </tr>`;
                        }                         
            search_html += ` </tbody> </table></div>`;
      }else{
        search_html +=`<div class="card"><table style="width: 300px;"> 
        <thead><th colspan="3">No Data Found</th></thead><tbody></tbody></table></div>`;
      }     
      _gloabal_this.parent('td').find('.search_box_item').html(search_html);
      _gloabal_this.parent('td').find('.search_box_item').addClass('search_box_show').show();
      
    });
     
    request.fail(function( jqXHR, textStatus ) {
      alert( "Request failed: " + textStatus );
    });

  

}, 500));

$(document).on('click','.search_row_item',function(){
  var _vat_amount =0;
  var row_id = $(this).find('._p_item_row_id').val();
  var _name = $(this).find('._p_item__name').val();
  var _p_item_item_id = $(this).find('._p_item_item_id').val();
  var _unit_id = $(this).find('._p_item__unit_id').val();
  var _barcode = $(this).find('._p_item_barcode').val();
  var _manufacture_date = $(this).find('._p_item_manufacture_date').val();
  var _expire_date = $(this).find('._p_item_expire_date').val();
  var _sales_rate = parseFloat($(this).find('._p_item_sales_rate').val());
  var _qty = $(this).find('._p_item_qty').val();
  var _pur_rate = $(this).find('._p_item_pur_rate').val();
  var _sales_discount = $(this).find('._p_item_sales_discount').val();
  var _sales_vat = $(this).find('._p_item_sales_vat').val();
  var _purchase_detail_id = $(this).find('._p_item_purchase_detail_id').val();
  var _master_id = $(this).find('._p_item_master_id').val();
  var _branch_id = $(this).find('._p_item_branch_id').val();
  var _cost_center_id = $(this).find('._p_item_cost_center_id').val();
  var _store_id = $(this).find('._p_item_store_id').val();
  var _store_salves_id = $(this).find('._p_item_store_salves_id').val();


  if(_barcode=='null'){ _barcode='' } 
  if(_store_salves_id=='null'){ _store_salves_id='' } 
  if(isNaN(_sales_rate)){ _sales_rate=0 }
  if(isNaN(_pur_rate)){ _pur_rate=0 }
  if(isNaN(_sales_vat)){ _sales_vat=0 }
  _vat_amount = ((_sales_rate*_sales_vat)/100)
  if(isNaN(_sales_discount)){ _sales_discount=0 }
  _discount_amount = ((_sales_rate*_sales_discount)/100);
  

  $(this).parent().parent().parent().parent().parent().parent().find('._item_id').val(_p_item_item_id);
  var _id_name = `${_master_id} ,${_name}, ${_qty}`;
  $(this).parent().parent().parent().parent().parent().parent().find('._search_item_id').val(_id_name);
  $(this).parent().parent().parent().parent().parent().parent().find('._p_p_l_id').val(row_id);
  $(this).parent().parent().parent().parent().parent().parent().find('._purchase_invoice_no').val(_master_id);
  $(this).parent().parent().parent().parent().parent().parent().find('._purchase_detail_id').val(_purchase_detail_id);
  $(this).parent().parent().parent().parent().parent().parent().find('._barcode').val(_barcode);
  $(this).parent().parent().parent().parent().parent().parent().find('._rate').val(_pur_rate);
  $(this).parent().parent().parent().parent().parent().parent().find('._sales_rate').val(_sales_rate);
  $(this).parent().parent().parent().parent().parent().parent().find('._vat').val(_sales_vat);
  $(this).parent().parent().parent().parent().parent().parent().find('._vat_amount').val(_vat_amount);
  $(this).parent().parent().parent().parent().parent().parent().find('._discount').val(_sales_discount);
  $(this).parent().parent().parent().parent().parent().parent().find('._discount_amount').val(_discount_amount);
  $(this).parent().parent().parent().parent().parent().parent().find('._qty').val(1);
  $(this).parent().parent().parent().parent().parent().parent().find('._value').val(_sales_rate);
  $(this).parent().parent().parent().parent().parent().parent().find('._store_salves_id').val(_store_salves_id);
  $(this).parent().parent().parent().parent().parent().parent().find('._manufacture_date').val(_manufacture_date);
  $(this).parent().parent().parent().parent().parent().parent().find('._expire_date').val(_expire_date);
var _search_item_id="_search_item_id__"+row_id;
  $(this).parent().parent().parent().parent().parent().parent().find('._search_item_id').addClass(_search_item_id)


  _purchase_total_calculation();
  $('.search_box_item').hide();
  $('.search_box_item').removeClass('search_box_show').hide();
})



$(document).on('keyup','._common_keyup',function(){
  var _vat_amount =0;
  var _qty = parseFloat($(this).closest('tr').find('._qty').val());
  var _rate =parseFloat( $(this).closest('tr').find('._rate').val());
  var _sales_rate =parseFloat( $(this).closest('tr').find('._sales_rate').val());
  var _item_vat = parseFloat($(this).closest('tr').find('._vat').val());
  var _item_discount = parseFloat($(this).closest('tr').find('._discount').val());

   if(isNaN(_item_vat)){ _item_vat   = 0 }
   if(isNaN(_qty)){ _qty   = 0 }
   if(isNaN(_rate)){ _rate =0 }
   if(isNaN(_sales_rate)){ _sales_rate =0 }
   if(isNaN(_item_discount)){ _item_discount =0 }
   _vat_amount = Math.ceil(((_qty*_sales_rate)*_item_vat)/100)
   _discount_amount = Math.ceil(((_qty*_sales_rate)*_item_discount)/100)

  $(this).closest('tr').find('._value').val((_qty*_sales_rate));
  $(this).closest('tr').find('._vat_amount').val(_vat_amount);
  $(this).closest('tr').find('._discount_amount').val(_discount_amount);
    _purchase_total_calculation();
})

$(document).on('keyup','._vat_amount',function(){
 var _item_vat =0;
  var _qty = $(this).closest('tr').find('._qty').val();
  var _rate = $(this).closest('tr').find('._rate').val();
  var _sales_rate = $(this).closest('tr').find('._sales_rate').val();
  var _vat_amount =  $(this).closest('tr').find('._vat_amount').val();
  
   if(isNaN(_vat_amount)){ _vat_amount = 0 }
   if(isNaN(_qty)){ _qty   = 0 }
   if(isNaN(_rate)){ _rate =0 }
   if(isNaN(_sales_rate)){ _sales_rate =0 }
   var _vat = parseFloat((_vat_amount/(_sales_rate*_qty))*100).toFixed(2);
    $(this).closest('tr').find('._vat').val(_vat);

    $(this).closest('tr').find('._value').val((_qty*_sales_rate));
 
    _purchase_total_calculation();
})


$(document).on('keyup','._discount_amount',function(){
 var _item_vat =0;
  var _qty = $(this).closest('tr').find('._qty').val();
  var _rate = $(this).closest('tr').find('._rate').val();
  var _sales_rate = $(this).closest('tr').find('._sales_rate').val();
  var _discount_amount =  $(this).closest('tr').find('._discount_amount').val();
  
   if(isNaN(_discount_amount)){ _discount_amount = 0 }
   if(isNaN(_qty)){ _qty   = 0 }
   if(isNaN(_rate)){ _rate =0 }
   if(isNaN(_sales_rate)){ _sales_rate =0 }
   var _discount = parseFloat((_discount_amount/(_sales_rate*_qty))*100).toFixed(2);
    $(this).closest('tr').find('._discount').val(_discount);

    $(this).closest('tr').find('._value').val((_qty*_sales_rate));
 
    _purchase_total_calculation();
})

$(document).on("change","#_discount_input",function(){
  var _discount_input = $(this).val();
  var res = _discount_input.match(/%/gi);
  if(res){
     res = _discount_input.split("%");
    res= parseFloat(res);
    on_invoice_discount = ($("#_sub_total").val()*res)/100
    $("#_discount_input").val(on_invoice_discount)

  }else{
    on_invoice_discount = _discount_input;
  }

   $("#_discount_input").val(on_invoice_discount);
    _purchase_total_calculation()
})



 function _purchase_total_calculation(){
    var _total_qty = 0;
    var _total__value = 0;
    var _total__vat =0;
    var _total_discount_amount = 0;
      $(document).find("._value").each(function() {
            var _s_value =parseFloat($(this).val());
            if(isNaN(_s_value)){_s_value = 0}
          _total__value +=parseFloat(_s_value);
      });
      $(document).find("._qty").each(function() {
            var _s_qty =parseFloat($(this).val());
            if(isNaN(_s_qty)){_s_qty = 0}
          _total_qty +=parseFloat(_s_qty);
      });
      $(document).find("._vat_amount").each(function() {
            var _s_vat =parseFloat($(this).val());
            if(isNaN(_s_vat)){_s_vat = 0}
          _total__vat +=parseFloat(_s_vat);
      });
      $(document).find("._discount_amount").each(function() {
            var _s_discount_amount =parseFloat($(this).val());
            if(isNaN(_s_discount_amount)){_s_discount_amount = 0}
          _total_discount_amount +=parseFloat(_s_discount_amount);
      });
      $("._total_qty_amount").val(_total_qty);
      $("._total_value_amount").val(_total__value);
      $("._total_vat_amount").val(_total__vat);
      $("._total_discount_amount").val(_total_discount_amount);

      var _discount_input = parseFloat($("#_discount_input").val());
      if(isNaN(_discount_input)){ _discount_input =0 }
      var _total_discount = parseFloat(_discount_input)+parseFloat(_total_discount_amount);
      $("#_sub_total").val(_math_round(_total__value));
      $("#_total_vat").val(_total__vat);
      $("#_total_discount").val(parseFloat(_discount_input)+parseFloat(_total_discount_amount));
      var _total = _math_round((parseFloat(_total__value)+parseFloat(_total__vat))-parseFloat(_total_discount));
      $("#_total").val(_total);
  }


 var single_row =  `<tr class="_voucher_row">
                      <td><a  href="" class="btn btn-default _voucher_row_remove" ><i class="fa fa-trash"></i></a></td>
                      <td><input type="text" name="_search_ledger_id[]" @if($__user->_ac_type==1) attr_account_head_no="1" @endif  class="form-control _search_ledger_id width_280_px" placeholder="Ledger"   >
                      <input type="hidden" name="_ledger_id[]" class="form-control _ledger_id" >
                      <div class="search_box">
                      </div>
                      </td>
                       @if(sizeof($permited_branch)>1)
                      <td>
                      <select class="form-control width_150_px _branch_id_detail" name="_branch_id_detail[]"  required >
                        @forelse($permited_branch as $branch )
                            <option value="{{$branch->id}}" @if(isset($request->_branch_id)) @if($request->_branch_id == $branch->id) selected @endif   @endif>{{ $branch->_name ?? '' }}</option>
                        @empty
                        @endforelse
                        </select>
                        </td>
                        @else
                          <td class="display_none">
                      <select class="form-control width_150_px _branch_id_detail" name="_branch_id_detail[]"  required >
                        @forelse($permited_branch as $branch )
                            <option value="{{$branch->id}}" @if(isset($request->_branch_id)) @if($request->_branch_id == $branch->id) selected @endif   @endif>{{ $branch->_name ?? '' }}</option>
                        @empty
                        @endforelse
                        </select>
                        </td>
                        @endif

                         @if(sizeof($permited_costcenters)>1)
                        <td>
                          <select class="form-control width_150_px _cost_center" name="_cost_center[]" required >
                            @forelse($permited_costcenters as $costcenter )
                              <option value="{{$costcenter->id}}" @if(isset($request->_cost_center)) @if($request->_cost_center == $costcenter->id) selected @endif   @endif> {{ $costcenter->_name ?? '' }}</option>
                            @empty
                            @endforelse
                            </select>
                            </td>
                        @else
                        <td class="display_none">
                          <select class="form-control width_150_px _cost_center" name="_cost_center[]" required >
                            @forelse($permited_costcenters as $costcenter )
                              <option value="{{$costcenter->id}}" @if(isset($request->_cost_center)) @if($request->_cost_center == $costcenter->id) selected @endif   @endif> {{ $costcenter->_name ?? '' }}</option>
                            @empty
                            @endforelse
                            </select>
                            </td>
                        @endif
                            <td><input type="text" name="_short_narr[]" class="form-control width_250_px" placeholder="Short Narr"></td>
                            <td>
                              <input type="number" name="_dr_amount[]" class="form-control  _dr_amount" placeholder="Dr. Amount" value="{{old('_dr_amount',0)}}">
                            </td>
                            <td class=" @if($__user->_ac_type==1) display_none @endif ">
                              <input type="number" name="_cr_amount[]" class="form-control  _cr_amount" placeholder="Cr. Amount" value="{{old('_cr_amount',0)}}">
                              </td>
                            </tr>`;

  function voucher_row_add(event) {
      event.preventDefault();
      $("#area__voucher_details").append(single_row);
  }

var _purchase_row_single =`<tr class="_purchase_row">
                                              <td>
                                                <a  href="#none" class="btn btn-default _purchase_row_remove" ><i class="fa fa-trash"></i></a>
                                              </td>
                                              <td>
                                                <input type="text" name="_search_item_id[]" class="form-control _search_item_id width_280_px" placeholder="Item">
                                                <input type="hidden" name="_item_id[]" class="form-control _item_id width_200_px" >
                                                <input type="hidden" name="_p_p_l_id[]" class="form-control _p_p_l_id " >
                                                <input type="hidden" name="_purchase_invoice_no[]" class="form-control _purchase_invoice_no" >
                                                <input type="hidden" name="_purchase_detail_id[]" class="form-control _purchase_detail_id" >
                                                <div class="search_box_item">
                                                <div class="search_box_item">
                                                  
                                                </div>
                                              </td>
                                             
                                              <td class="@if($_show_barcode==0) display_none @endif">
                                                <input type="text" name="_barcode[]" class="form-control _barcode " >
                                              </td>
                                              <td>
                                                <input type="number" name="_qty[]" class="form-control _qty _common_keyup" >
                                              </td>
                                              <td class="@if($_show_cost_rate==0) display_none @endif">
                                                <input type="number" name="_rate[]" class="form-control _rate " readonly >
                                              </td>
                                              <td>
                                                <input type="number" name="_sales_rate[]" class="form-control _sales_rate _common_keyup" >
                                              </td>
                                               
                                                <td class="@if($_show_vat==0) display_none @endif">
                                                <input type="number" name="_vat[]" class="form-control  _vat _common_keyup" >
                                              </td>
                                              <td class="@if($_show_vat==0) display_none @endif">
                                                <input type="number" name="_vat_amount[]" class="form-control  _vat_amount" >
                                              </td>
                                                <td class="@if($_inline_discount==0) display_none @endif">
                                                <input type="number" name="_discount[]" class="form-control  _discount _common_keyup" >
                                              </td>
                                              <td class="@if($_inline_discount==0) display_none @endif">
                                                <input type="number" name="_discount_amount[]" class="form-control  _discount_amount" >
                                              </td>
                                             
                                              <td>
                                                <input type="number" name="_value[]" class="form-control _value " readonly >
                                              </td>
                                              <td class="@if(isset($form_settings->_show_manufacture_date)) @if($form_settings->_show_manufacture_date==0) display_none  @endif @endif">
                                                <input type="date" name="_manufacture_date[]" class="form-control _manufacture_date " >
                                              </td>
                                              <td class="@if(isset($form_settings->_show_expire_date)) @if($form_settings->_show_expire_date==0) display_none  @endif @endif">
                                                <input type="date" name="_expire_date[]" class="form-control _expire_date " >
                                              </td>
                                              
                                              <td class="@if(sizeof($permited_branch)==1) display_none @endif">
                                                <select class="form-control  _main_branch_id_detail" name="_main_branch_id_detail[]"  required>
                                                  @forelse($permited_branch as $branch )
                                                  <option value="{{$branch->id}}" @if(isset($request->_branch_id)) @if($request->_branch_id == $branch->id) selected @endif   @endif>{{ $branch->_name ?? '' }}</option>
                                                  @empty
                                                  @endforelse
                                                </select>
                                              </td>
                                              
                                               <td class="@if(sizeof($permited_costcenters)==1) display_none @endif">
                                                 <select class="form-control  _main_cost_center" name="_main_cost_center[]" required >
                                            
                                                  @forelse($permited_costcenters as $costcenter )
                                                  <option value="{{$costcenter->id}}" @if(isset($request->_main_cost_center)) @if($request->_main_cost_center == $costcenter->id) selected @endif   @endif> {{ $costcenter->_name ?? '' }}</option>
                                                  @empty
                                                  @endforelse
                                                </select>
                                              </td>
                                              
                                             
                                              <td class="@if(sizeof($store_houses)==1) display_none @endif">
                                                <select class="form-control  _main_store_id" name="_main_store_id[]">
                                                  @forelse($store_houses as $store)
                                                  <option value="{{$store->id}}">{{$store->_name ?? '' }}</option>
                                                  @empty
                                                  @endforelse
                                                </select>
                                                
                                              </td>
                                              
                                              <td class="@if($_show_self==0) display_none @endif">
                                                <input type="text" name="_store_salves_id[]" class="form-control _store_salves_id " >
                                              </td>
                                              
                                              
                                            </tr>`;
function purchase_row_add(event){
   event.preventDefault();
      $("#area__purchase_details").append(_purchase_row_single);
}
 $(document).on('click','._purchase_row_remove',function(event){
      event.preventDefault();
      var ledger_id = $(this).parent().parent('tr').find('._item_id').val();
      if(ledger_id ==""){
          $(this).parent().parent('tr').remove();
      }else{
        if(confirm('Are you sure your want to delete?')){
          $(this).parent().parent('tr').remove();
        } 
      }
      _purchase_total_calculation();
  })

 


  $(document).on('click','.submit-button',function(event){
    event.preventDefault();

     var _serach_baorce = $("#_serach_baorce").val()
    if(_serach_baorce){
      return false;
    }

    var _p_p_l_ids_qtys = new Array();
     var _only_p_ids = [];
     var empty_qty = [];
      var _id_and_qtys = [];

    $(document).find('._p_p_l_id').each(function(index){
     var _p_id =  $(this).val();
     var _p_qty = $(document).find('._qty').eq(index).val();
     if(isNaN(_p_qty)){
        empty_qty.push(_p_id);
     }
     _only_p_ids.push(_p_id);
      _p_p_l_ids_qtys.push( {_p_id: _p_id, _p_qty: _p_qty});
     

    })
     var unique_p_ids = [...new Set(_only_p_ids)];
     var _stop_sales =0;
    if(_p_p_l_ids_qtys.length > 0){
        var request = $.ajax({
                url: "{{url('check-available-qty')}}",
                method: "GET",
                async:false,
                data: { _p_p_l_ids_qtys,unique_p_ids },
                dataType: "JSON"
              });
               
              request.done(function( result ) {
                console.log(result);
                $("._search_item_id").removeClass('_required');
                  if(result.length > 0){
                     for (var i = 0; i < result.length; i++) {
                      $("._search_item_id__"+result[i]).addClass('_required'); 
                     }
                   _stop_sales=1;
                  }else{
                    $("._search_item_id__"+result[i]).removeClass('_required') 
                     $(document).find("._over_qty").text('');
                  }
              })
    }
    if(_stop_sales ==1){
        alert(" You Can not Sales More then Available Qty  ");
       var _message =" You Can not Sales More then Available Qty";
        $(document).find("._over_qty").text(_message);
        $(".remove_area").hide();
      return false;
    }

 
    
   
    var _total_dr_amount = $(document).find("._total_dr_amount").val();
    var _total_cr_amount = $(document).find("._total_cr_amount").val();
    var _voucher_type = $(document).find('._voucher_type').val();
    var _note = $(document).find('._note').val();
    var _main_ledger_id = $(document).find('._main_ledger_id').val();



    if(_main_ledger_id  ==""){
       alert(" Please Add Ledger  ");
        $(document).find('._search_main_ledger_id').addClass('required_border').focus();
        return false;
    }

    if(empty_qty.length > 0){
       alert(" You Can not sale empty qty !");
      return false;

    }


    var empty_ledger = [];
    $(document).find("._search_item_id").each(function(){
        if($(this).val() ==""){
          alert(" Please Add Item  ");
          $(this).addClass('required_border');
          empty_ledger.push(1);
        }  
    })



    if(empty_ledger.length > 0){
      return false;
    }
   



@if($__user->_ac_type==0)
    if( parseFloat(_total_dr_amount) !=parseFloat(_total_cr_amount)){
      $(document).find("._total_dr_amount").addClass('required_border').focus();
      $(document).find("._total_cr_amount").addClass('required_border').focus();
       alert("Account Details Dr. And Cr. Amount Not Equal");
      return false;

    }
@endif

//Cash Customer Can not Sale without payment Start
var _cash_customers = <?php echo json_encode($_cash_customer); ?>;
if(_cash_customers.length > 0){
  var _total_dr_amount = $(document).find('._total_dr_amount').val();
  var _total = $(document).find('#_total').val();
  var _main_ledger_id = $(document).find('#_main_ledger_id').val();
  var check_cash_customer = 0;
  for (var i = 0; i < _cash_customers.length; i++) {
      if(_main_ledger_id ==_cash_customers[i]){
        check_cash_customer =1;
          break;
      }
  }
  if(check_cash_customer ==1){
    if(Math.round(_total_dr_amount) !=Math.round(_total)){
        $(document).find("._total_dr_amount").addClass('required_border').focus();
        alert(" You have to pay full Amount  ");
        return false;
    }
  }

} //Cash Customer Can not Sale without payment End

   if(_note ==""){
       $(document).find('._note').focus().addClass('required_border');
      return false;
    }else if(_main_ledger_id ==""){
       
      $(document).find('._search_main_ledger_id').focus().addClass('required_border');
      return false;
    }else{
      $(document).find('.purchase_form').submit();
    }
  })




 

$(".datetimepicker-input").val(date__today())

          function date__today(){
              var d = new Date();
            var yyyy = d.getFullYear().toString();
            var mm = (d.getMonth()+1).toString(); // getMonth() is zero-based
            var dd  = d.getDate().toString();
            if(default_date_formate=='DD-MM-YYYY'){
              return (dd[1]?dd:"0"+dd[0]) +"-"+ (mm[1]?mm:"0"+mm[0])+"-"+ yyyy ;
            }
            if(default_date_formate=='MM-DD-YYYY'){
              return (mm[1]?mm:"0"+mm[0])+"-" + (dd[1]?dd:"0"+dd[0]) +"-"+  yyyy ;
            }
            

            
          }

</script>
@endsection

