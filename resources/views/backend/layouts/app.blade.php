<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>@yield('title')</title>
  <meta name="csrf-token" content="{{ csrf_token() }}" />

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
<div class="wrapper">
  <div class="ajax_loader"><h5 class="loading_text">Loading.....</span></div>
  <!-- Navbar -->
  @include('backend.layouts.navbar')
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  @include('backend.layouts.main_sidebar')

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    

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


// Example usage:

$(document).on('keyup','._search_ledger_id',delay(function(e){
    $(document).find('._search_ledger_id').removeClass('required_border');
  var _gloabal_this = $(this);

  var _text_val = $(this).val().trim();
console.log($(this).val());

  var request = $.ajax({
      url: "{{url('ledger-search')}}",
      method: "GET",
      data: { _text_val : _text_val },
      dataType: "JSON"
    });
     
    request.done(function( result ) {

      var search_html =``;
      
      var data = result.data; 
      console.log(data)
      if(data.length > 0 ){
        
            search_html +=`<div class="card"><table style="width: 300px;">
                            <tbody>`;
                        for (var i = 0; i < data.length; i++) {
                         search_html += `<tr class="search_row" >
                                        <td>${data[i].id}
                                        <input type="hidden" name="_id_ledger" class="_id_ledger" value="${data[i].id}">
                                        </td><td>${data[i]._name}
                                        <input type="hidden" name="_name_leder" class="_name_leder" value="${data[i]._name}">
                                        </td></tr>`;
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

$(document).on('click',function(){
    var searach_show= $('.search_box').hasClass('search_box_show');
    if(searach_show ==true){
      $('.search_box').removeClass('search_box_show').hide();
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


</script>
@yield('script')
</body>
</html>
