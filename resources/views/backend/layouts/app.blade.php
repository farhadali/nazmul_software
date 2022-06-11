<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>@yield('title')</title>
  <meta name="csrf-token" content="{{ csrf_token() }}" />
  <link rel="icon" type="image/x-icon" href="{{asset('/')}}{{$settings->logo ?? ''}}">

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  
  <!-- <link rel="stylesheet" href="{{asset('plugins/fontawesome-free/css/all.min.css')}}">
 
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  
  <link rel="stylesheet" href="{{asset('dist/css/adminlte.min.css')}}">
  <link rel="stylesheet" href="{{asset('plugins/summernote/summernote-bs4.min.css')}}">
  <link rel="stylesheet" href="{{asset('plugins/select2/css/select2.min.css')}}">
  <link rel="stylesheet" href="{{asset('backend/style.css')}}"> -->
  <link rel="stylesheet" href="{{asset('plugins/fontawesome-free/css/all.min.css')}}">
  <!-- daterange picker -->
  <link rel="stylesheet" href="{{asset('plugins/daterangepicker/daterangepicker.css')}}">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="{{asset('plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="{{asset('plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css')}}">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="{{asset('plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css')}}">
  <!-- Select2 -->
  <link rel="stylesheet" href="{{asset('plugins/select2/css/select2.min.css')}}">
  <link rel="stylesheet" href="{{asset('plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">
  <!-- Bootstrap4 Duallistbox -->
  <link rel="stylesheet" href="{{asset('plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css')}}">
  <!-- BS Stepper -->
  <link rel="stylesheet" href="{{asset('plugins/bs-stepper/css/bs-stepper.min.css')}}">
  <!-- dropzonejs -->
  <link rel="stylesheet" href="{{asset('plugins/dropzone/min/dropzone.min.css')}}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{asset('dist/css/adminlte.min.css')}}">
<link rel="stylesheet" href="{{asset('backend/style.css')}}">
<link rel="stylesheet" href="{{asset('backend/responsive.css')}}">





  @yield('css')
  <style type="text/css">
    .submit-button{
      min-width: 150px;
    }
    .multiple_select { resize: auto; }
  </style>
  
</head>

<body class="hold-transition sidebar-mini sidebar-collapse">
  @php
$currentURL = URL::full();
  @endphp

   
<div class="wrapper">
  <div class="ajax_loader"><h5 class="loading_text">Loading.....</span></div>
  <!-- Navbar -->
  @include('backend.layouts.navbar')
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  @include('backend.layouts.main_sidebar')

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="margin-top: 56px;">
    

    <!-- Main content -->
    @yield('content')
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
  @include('backend.layouts.footer')
  
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->





<!-- AdminLTE for demo purposes -->

<!-- AdminLTE dashboard demo (This is only for demo purposes) -->

<script src="{{asset('plugins/jquery/jquery.min.js')}}"></script>
<!-- Bootstrap 4 -->
<script src="{{asset('plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- Select2 -->
<script src="{{asset('plugins/select2/js/select2.full.min.js')}}"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="{{asset('plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js')}}"></script>
<!-- InputMask -->
<script src="{{asset('plugins/moment/moment.min.js')}}"></script>
<script src="{{asset('plugins/inputmask/jquery.inputmask.min.js')}}"></script>
<!-- date-range-picker -->
<script src="{{asset('plugins/daterangepicker/daterangepicker.js')}}"></script>
<!-- bootstrap color picker -->
<script src="{{asset('plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js')}}"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="{{asset('plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js')}}"></script>
<!-- Bootstrap Switch -->
<script src="{{asset('plugins/bootstrap-switch/js/bootstrap-switch.min.js')}}"></script>
<!-- BS-Stepper -->
<script src="{{asset('plugins/bs-stepper/js/bs-stepper.min.js')}}"></script>
<!-- dropzonejs -->
<script src="{{asset('plugins/dropzone/min/dropzone.min.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{asset('dist/js/adminlte.min.js')}}"></script>
<script src="{{asset('plugins/summernote/summernote-bs4.min.js')}}"></script>
<!-- AdminLTE for demo purposes -->
<script src="{{asset('dist/js/demo.js')}}"></script>


<script>

  var loadFile = function(event,_id) {
    var ids = `output_${_id}`;
    var output = document.getElementById('output_'+_id);
    output.src = URL.createObjectURL(event.target.files[0]);
    console.log(event.target.files[0])
    output.onload = function() {
      URL.revokeObjectURL(output.src) // free memory
    }
  };

  $(function () {

    var default_date_formate = `{{default_date_formate()}}`
    // Summernote
    
    $('.select2').select2()
     $('#reservationdate').datetimepicker({
        format:default_date_formate

    });
     

  })

$("._account_head_id").on('change',function(){
  var _account_head_id = $(this).val();
  var request = $.ajax({
      url: "{{url('type_base_group')}}",
      method: "GET",
      data: { id : _account_head_id },
      dataType: "html"
    });
     
    request.done(function( msg ) {
      $( "._account_groups" ).html( msg );
    });
     
    request.fail(function( jqXHR, textStatus ) {
      alert( "Request failed: " + textStatus );
    });

})


function delay(callback, ms) {
  var timer = 0;
  return function() {
    var context = this, args = arguments;
    clearTimeout(timer);
    timer = setTimeout(function () {
      callback.apply(context, args);
    }, ms || 0);
  };
}


$(document).on('keyup','._search_main_delivery_man',delay(function(e){
    $(document).find('._search_main_delivery_man').removeClass('required_border');
  var _gloabal_this = $(this);
  var _text_val = $(this).val().trim();
  var request = $.ajax({
      url: "{{url('ledger-search')}}",
      method: "GET",
      data: { _text_val : _text_val },
      dataType: "JSON"
    });
     
    request.done(function( result ) {
      var search_html =``;
      var data = result.data; 
      if(data.length > 0 ){
            search_html +=`<div class="card"><table style="width: 300px;"> <tbody>`;
                        for (var i = 0; i < data.length; i++) {
                         search_html += `<tr class="search_row_delivery_man" >
                                        <td>${data[i].id}
                                        <input type="hidden" name="_delivery_man_ledger" class="_delivery_man_ledger" value="${data[i].id}">
                                        </td><td>${data[i]._name}
                                        <input type="hidden" name="delivery_man_name_leder" class="delivery_man_name_leder" value="${data[i]._name}">
                                        <input type="hidden" name="delivery_man_address" class="delivery_man_address" value="${data[i]._address}">
                                        <input type="hidden" name="delivery_man_phone" class="delivery_man_phone" value="${data[i]._phone}">
                                        </td>
                                       
                                        </tr>`;
                        }                         
            search_html += ` </tbody> </table></div>`;
      }else{
        search_html +=`<div class="card"><table style="width: 300px;"> 
        <thead><th colspan="3">No Data Found</th></thead><tbody></tbody></table></div>`;
      }     
      $(document).find('.search_box_delivery_man').html(search_html);
      $(document).find('.search_box_delivery_man').addClass('search_box_show').show();
      
    });
     
    request.fail(function( jqXHR, textStatus ) {
      alert( "Request failed: " + textStatus );
    });

  

}, 500));


$(document).on('click','.search_row_delivery_man',function(){
  var _id = $(document).find('._delivery_man_ledger').val();
  var _name = $(document).find('.delivery_man_name_leder').val();
  var _id_name = `${_id} ${_name}`
  $(document).find('._delivery_man').val(_id);
  $(document).find('._search_main_delivery_man').val(_id_name);


  $('.search_box_delivery_man').hide();
  $('.search_box_delivery_man').removeClass('search_box_show').hide();
})


$(document).on('keyup','._search_main_sales_man',delay(function(e){
    $(document).find('._search_main_sales_man').removeClass('required_border');
  var _gloabal_this = $(this);
  var _text_val = $(this).val().trim();
  var request = $.ajax({
      url: "{{url('ledger-search')}}",
      method: "GET",
      data: { _text_val : _text_val },
      dataType: "JSON"
    });
     
    request.done(function( result ) {
      var search_html =``;
      var data = result.data; 
      if(data.length > 0 ){
            search_html +=`<div class="card"><table style="width: 300px;"> <tbody>`;
                        for (var i = 0; i < data.length; i++) {
                         search_html += `<tr class="search_row_sales_man" >
                                        <td>${data[i].id}
                                        <input type="hidden" name="_sales_man_ledger" class="_sales_man_ledger" value="${data[i].id}">
                                        </td><td>${data[i]._name}
                                        <input type="hidden" name="sales_man_name_leder" class="sales_man_name_leder" value="${data[i]._name}">
                                        <input type="hidden" name="sales_man_address" class="sales_man_address" value="${data[i]._address}">
                                        <input type="hidden" name="sales_man_phone" class="sales_man_phone" value="${data[i]._phone}">
                                        </td>
                                       
                                        </tr>`;
                        }                         
            search_html += ` </tbody> </table></div>`;
      }else{
        search_html +=`<div class="card"><table style="width: 300px;"> 
        <thead><th colspan="3">No Data Found</th></thead><tbody></tbody></table></div>`;
      }     
      $(document).find('.search_box_sales_man').html(search_html);
      $(document).find('.search_box_sales_man').addClass('search_box_show').show();
      
    });
     
    request.fail(function( jqXHR, textStatus ) {
      alert( "Request failed: " + textStatus );
    });

  

}, 500));


$(document).on('click','.search_row_sales_man',function(){
  var _id = $(document).find('._sales_man_ledger').val();
  var _name = $(document).find('.sales_man_name_leder').val();
  var _id_name = `${_id} ${_name}`
  $(document).find('._sales_man').val(_id);
  $(document).find('._search_main_sales_man').val(_id_name);


  $('.search_box_sales_man').hide();
  $('.search_box_sales_man').removeClass('search_box_show').hide();
})


// Example usage:

$(document).on('keyup','._search_ledger_id',delay(function(e){
    $(document).find('._search_ledger_id').removeClass('required_border');
  var _gloabal_this = $(this);
  var _text_val = $(this).val().trim();
  var _head_no = $(this).attr('attr_account_head_no');
  if(isNaN(_head_no)){ _head_no=0 }
    console.log("_text_val "+_text_val)
    console.log("_head_no "+_head_no)
  var request = $.ajax({
      url: "{{url('ledger-search')}}",
      method: "GET",
      data: { _text_val,_head_no },
      dataType: "JSON"
    });
     
    request.done(function( result ) {
      var search_html =``;
      var data = result.data; 
      if(data.length > 0 ){
            search_html +=`<div class="card"><table style="width: 300px;"> <tbody>`;
                        for (var i = 0; i < data.length; i++) {
                         search_html += `<tr class="search_row" >
                                        <td>${data[i].id}
                                        <input type="hidden" name="_id_ledger" class="_id_ledger" value="${data[i].id}">
                                        </td><td>${data[i]._name}
                                        <input type="hidden" name="_name_leder" class="_name_leder" value="${data[i]._name}">
                                        <input type="hidden" name="_s_l_address" class="_s_l_address" value="${data[i]._address}">
                                        <input type="hidden" name="_s_l_phone" class="_s_l_phone" value="${data[i]._phone}">
                                        </td>
                                        <td>${data[i]._balance}</td>
                                        </tr>`;
                        }                         
            search_html += ` </tbody> </table></div>`;
      }else{
        search_html +=`<div class="card"><table style="width: 300px;"> 
        <thead><th colspan="3">No Data Found</th></thead><tbody></tbody></table></div>`;
      }     
      _gloabal_this.parent('td').find('.search_box').html(search_html);
      _gloabal_this.parent('td').find('.search_box').addClass('search_box_show').show();
      
    });
     
    request.fail(function( jqXHR, textStatus ) {
      alert( "Request failed: " + textStatus );
    });

  

}, 500));


$(document).on('click','.search_row',function(){
  var _id = $(this).children('td').find('._id_ledger').val();
  var _name = $(this).find('._name_leder').val();
  $(this).parent().parent().parent().parent().parent().parent().find('._ledger_id').val(_id);
  var _id_name = `${_name} `;
  $(this).parent().parent().parent().parent().parent().parent().find('._search_ledger_id').val(_id_name);


  $('.search_box').hide();
  $('.search_box').removeClass('search_box_show').hide();
})


$(document).on('keyup','._search_main_ledger_id',delay(function(e){
    $(document).find('._search_main_ledger_id').removeClass('required_border');
    var _gloabal_this = $(this);
    var _text_val = $(this).val().trim();
    var _form = $("._search_form_value").val();
  var request = $.ajax({
      url: "{{url('main-ledger-search')}}",
      method: "GET",
      data: { _text_val,_form },
      dataType: "JSON"
    });
     
    request.done(function( result ) {

      var search_html =``;
      var data = result.data; 
      if(data.length > 0 ){
            search_html +=`<div class="card"><table style="width: 300px;">
                            <tbody>`;
                        for (var i = 0; i < data.length; i++) {
                         search_html += `<tr class="search_row_ledger" >
                                        <td>${data[i].id}
                                        <input type="hidden" name="_id_main_ledger" class="_id_main_ledger" value="${data[i].id}">
                                        </td><td>${data[i]._name}
                                        <input type="hidden" name="_name_main_ledger" class="_name_main_ledger" value="${data[i]._name}">
                                        <input type="hidden" name="_address_main_ledger" class="_address_main_ledger" value="${data[i]._address}">
                                        <input type="hidden" name="_phone_main_ledger" class="_phone_main_ledger" value="${data[i]._phone}">
                                  
                                   </td>
                                   <td>${data[i]._balance}</td>
                                   </tr>`;
                        }                         
            search_html += ` </tbody> </table></div>`;
      }else{
        search_html +=`<div class="card"><table style="width: 300px;"> 
        <thead><th colspan="3">No Data Found</th></thead><tbody></tbody></table></div>`;
      }     
      _gloabal_this.parent('div').find('.search_box_main_ledger').html(search_html);
      _gloabal_this.parent('div').find('.search_box_main_ledger').addClass('search_box_show').show();
      
    });
     
    request.fail(function( jqXHR, textStatus ) {
      alert( "Request failed: " + textStatus );
    });

  

}, 500));


  $(document).on("click",'.search_row_ledger',function(){
    var _id = $(this).children('td').find('._id_main_ledger').val();
    var _name = $(this).find('._name_main_ledger').val();
    var _address_main_ledger = $(this).find('._address_main_ledger').val();
    var _phone_main_ledger = $(this).find('._phone_main_ledger').val();
    $("._main_ledger_id").val(_id);
    $("._search_main_ledger_id").val(_name);
    $("._phone").val(_phone_main_ledger);
    $("._address").val(_address_main_ledger);

    $('.search_box_main_ledger').hide();
    $('.search_box_main_ledger').removeClass('search_box_show').hide();
  })


  $(document).on('click','._voucher_row_remove',function(event){
      event.preventDefault();
      var ledger_id = $(this).parent().parent('tr').find('._ledger_id').val();
      if(ledger_id ==""){
          $(this).parent().parent('tr').remove();
      }else{
        if(confirm('Are you sure your want to delete?')){
          $(this).parent().parent('tr').remove();
        } 
      }
      _voucher_total_calculation();
  })

  function _voucher_total_calculation(){
    var _total_dr_amount = 0;
    var _total_cr_amount = 0;
      $(document).find("._cr_amount").each(function() {
          _total_cr_amount +=parseFloat($(this).val());
      });
      $(document).find("._dr_amount").each(function() {
          _total_dr_amount +=parseFloat($(this).val());
      });
      $("._total_dr_amount").val(_math_round(_total_dr_amount));
      $("._total_cr_amount").val(_math_round(_total_cr_amount));
  }


  $(document).on('keyup','._dr_amount',function(){
    $(this).parent().parent('tr').find('._cr_amount').val(0);
    $(document).find("._total_dr_amount").removeClass('required_border');
    $(document).find("._total_cr_amount").removeClass('required_border');
    _voucher_total_calculation();
  })



  $(document).on('keyup','._cr_amount',function(){
     $(this).parent().parent('tr').find('._dr_amount').val(0);
     $(document).find("._total_dr_amount").removeClass('required_border');
      $(document).find("._total_cr_amount").removeClass('required_border');
    _voucher_total_calculation();
  })


  function _math_round(_amount,_param=1){
    return Math.round(_amount);
      
  }


  
  $(document).on('change','._voucher_type',function(){
    $(document).find('._voucher_type').removeClass('required_border');
  })

  $(document).on('keyup','._note',function(){
    $(document).find('._note').removeClass('required_border');
  })

  $(document).on('click','._save_and_print',function(){
    $(document).find('._save_and_print_value').val(1);
  })

$(document).on('click',function(){
   

    var searach_show= $('.search_box_item').hasClass('search_box_show');
    var search_box_main_ledger= $('.search_box_main_ledger').hasClass('search_box_show');
    var search_box_delivery_man= $('.search_box_delivery_man').hasClass('search_box_show');
    var search_box_sales_man= $('.search_box_sales_man').hasClass('search_box_show');
    if(searach_show ==true){
      $('.search_box_item').removeClass('search_box_show').hide();
    }

    if(search_box_main_ledger ==true){
      $('.search_box_main_ledger').removeClass('search_box_show').hide();
    }
    if(search_box_delivery_man ==true){
      $('.search_box_delivery_man').removeClass('search_box_show').hide();
    }
    if(search_box_sales_man ==true){
      $('.search_box_sales_man').removeClass('search_box_show').hide();
    }
})


$(document).on('click','._pushmenu',function(){

if($("._pushmenu").hasClass("_left_menu_show")){
  $(document).find('._pushmenu').removeClass('_left_menu_show');
  $(document).find('.main-sidebar').hide();
}else{
  $(document).find('._pushmenu').addClass('_left_menu_show');
  $(document).find('.main-sidebar').show();
}
  

  
 

})


$(document).on('click','.save_item',function(){
    var _category_id = $("._category_id").val();
    var _item_item = $("._item_item").val();
    var _item_code = $("._item_code").val();
    var _item_unit_id = $("._item_unit_id").val();
    var _item_barcode = $("._item_barcode").val();
    var _item_discount = $("._item_discount").val();
    var _item_vat = $("._item_vat").val();
    var _item_pur_rate = $("._item_pur_rate").val();
    var _item_sale_rate = $("._item_sale_rate").val();
    var _item_manufacture_company = $("._item_manufacture_company").val();
    var _item_status = $("._item_status").val();
    
    var reqired_fields = 0;
    if(_category_id ==""){
       $(document).find('._category_id').addClass('required_border');
       reqired_fields =1;
    }else{
      $(document).find('._category_id').removeClass('required_border');
    }
    if(_item_item ==""){
       $(document).find('._item_item').addClass('required_border');
       reqired_fields =1;
    }else{
      $(document).find('._item_item').removeClass('required_border');
    }
    if(_item_unit_id ==""){
       $(document).find('._item_unit_id').addClass('required_border');
       reqired_fields =1;
    }else{
      $(document).find('._item_unit_id').removeClass('required_border');
    }
    
    if(reqired_fields ==1){
      return false;
    }

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

        $.ajax({
           type:'POST',
           url:"{{ url('ajax-item-save') }}",
           data:{_category_id,_item_item,_item_code,_item_unit_id,_item_barcode,_item_discount,_item_vat,_item_pur_rate,_item_sale_rate,_item_manufacture_company,_item_status
           },
           success:function(data){
              if(data !=""){
                alert("Information Save Successfully");
                $(document).find("._item_modal_form").trigger('reset');
                $(document).find(".modal_close").click();
                
              }else{
                alert("Information Not Save");
              }

           }

        });

  })

  $(document).on('click','.save_ledger',function(){
    var _account_head_id = $("._account_head_id").val();
    var _account_groups = $("._account_groups").val();
    var _ledger_branch_id = $("._ledger_branch_id").val();
    var _ledger_name = $("._ledger_name").val();
    var _ledger_address = $("._ledger_address").val();
    var _ledger_code = $("._ledger_code").val();
    var _ledger_short = $("._ledger_short").val();
    var _ledger_nid = $("._ledger_nid").val();
    var _ledger_phone = $("._ledger_phone").val();
    var _ledger_email = $("._ledger_email").val();
    var _ledger_credit_limit = $("._ledger_credit_limit").val();
    var _ledger_is_user = $("._ledger_is_user").val();
    var _ledger_is_sales_form = $("._ledger_is_sales_form").val();
    var _ledger_is_purchase_form = $("._ledger_is_purchase_form").val();
    var _ledger_is_all_branch = $("._ledger_is_all_branch").val();
    var _ledger_status = $("._ledger_status").val();
    var reqired_fields = 0;
    if(_account_head_id ==""){
       $(document).find('._account_head_id').addClass('required_border');
       reqired_fields =1;
    }else{
      $(document).find('._account_head_id').removeClass('required_border');
    }
    if(_account_groups ==""){
       $(document).find('._account_groups').addClass('required_border');
       reqired_fields =1;
    }else{
      $(document).find('._account_groups').removeClass('required_border');
    }
    if(_ledger_name ==""){
       $(document).find('._ledger_name').addClass('required_border');
       reqired_fields =1;
    }else{
      $(document).find('._ledger_name').removeClass('required_border');
    }
    if(reqired_fields ==1){
      return false;
    }

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

        $.ajax({
           type:'POST',
           url:"{{ url('ajax-ledger-save') }}",
           data:{_account_head_id,_account_groups,_ledger_branch_id,_ledger_name,_ledger_address,_ledger_code,_ledger_short,_ledger_nid,_ledger_phone,_ledger_email,_ledger_credit_limit,_ledger_is_user,_ledger_is_sales_form,_ledger_is_purchase_form,_ledger_is_all_branch,_ledger_status
           },
           success:function(data){
              if(data !=""){
                alert("Information Save Successfully");
                $(document).find("._ledger_modal_form").trigger('reset');
                $(document).find(".modal_close").click();
                
              }else{
                alert("Information Not Save");
              }

           }

        });

  })

function after_request_date__today(_date){
            var data = _date.split('-');
            var yyyy =data[0];
            var mm =data[1];
            var dd =data[2];
            if(default_date_formate=='DD-MM-YYYY'){
              return (dd[1]?dd:"0"+dd[0]) +"-"+ (mm[1]?mm:"0"+mm[0])+"-"+ yyyy ;
            }
            if(default_date_formate=='MM-DD-YYYY'){
              return (mm[1]?mm:"0"+mm[0])+"-" + (dd[1]?dd:"0"+dd[0]) +"-"+  yyyy ;
            }
            

            
          }


   $(document).on("click","._action_button_detail",function(){
      var _id = $(this).attr('attr_id');
       var _show_detils= $(document).find('._action_button__'+_id).hasClass('_show_detils');
       var _type=$(this).attr('attr_type');
      if(_show_detils ==false){
        $(document).find('._action_button__'+_id).addClass('_show_detils');
            $.ajaxSetup({  headers: {  'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')  } });

            $.ajax({
               type:'POST',
               url:"{{ url('master-base-detils') }}",
               data:{_id, _type},
               dataType:'HTML',
               success:function(data){
                  $(document).find("._details_show__"+_id).html(data);

               }

            });
      }
    })

</script>

<script type="text/javascript">

 function printDiv(divID) {
            var divElements = document.getElementById(divID).innerHTML;
            var oldPage = document.body.innerHTML;
            document.body.innerHTML ="<html><head><title></title></head><body>" +
                divElements + "</body>";
            window.print();
            document.body.innerHTML = oldPage;
        }
     function fnExcelReport() {
      var tab_text= $("#printablediv").html();
      var ua = window.navigator.userAgent;
      var msie = ua.indexOf("MSIE "); 
      if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer
      {
        document.open("txt/html","replace");
        document.write(tab_text);
        document.close(); 
        sa=document.execCommand("SaveAs",true,"Say Thanks to Sumit.xls");
      }  
      else                 //other browser not tested on IE 11
        sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));  

      return (sa);
    }  


    function _lock_action(_id,_action,_table_name){
       $.ajaxSetup({headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')} });
        $.ajax({
           type:'POST',
           url:"{{ url('_lock_action') }}",
           data:{_id,_action,_table_name},
           success:function(data){
              console.log(data);
           }
        });
    }   

</script>



@yield('script')
</body>
</html>
