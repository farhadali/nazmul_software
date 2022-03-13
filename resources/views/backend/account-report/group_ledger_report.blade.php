
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
    .table td, .table th {
    padding: 0.25rem;
    vertical-align: top;
    border-top: 1px solid #dee2e6;
}
  </style>
</head>
<body>
<div class="wrapper">

<section class="invoice">
    
    <!-- info row -->
    <div class="row invoice-info">
      <div class="col-sm-4 invoice-col">
        
        
      </div>
      <!-- /.col -->
      <div class="col-sm-4 invoice-col">
        <h2 class="page-header text-center">
           <!-- <img src="{{asset('/')}}{{$settings->logo ?? ''}}" alt="{{$settings->name ?? '' }}"  style="width: 60px;height: 60px;"> --> {{$settings->name ?? '' }}
          <small class="float-right"></small>
        </h2>
        <address class="text-center">
          <strong>{{$settings->_address ?? '' }}</strong><br>
          {{$settings->_phone ?? '' }}<br>
          {{$settings->_email ?? '' }}<br>
        </address>
        <h3 class="text-center"><b>Ledger Report</b></h3>
      </div>
      <!-- /.col -->
      <div class="col-sm-4 invoice-col text-right">
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
            <th style="width: 15%;">Date</th>
            <th style="width: 15%;">ID</th>
            <th style="width: 20%;">Narration</th>
            <th style="width: 20%;">Short Narration</th>
            <th style="width: 10%;" class="text-right" >Dr. Amount</th>
            <th style="width: 10%;" class="text-right" >Cr. Amount</th>
            <th style="width: 10%;" class="text-right" >Balance</th>
          </tr>
          
          
          </thead>
          <tbody>
            @forelse($group_array_values as $key=>$value)
            <tr>
              
                <td colspan="7" style="text-align: left;background: #f5f9f9;">
                  
                     <b> {{ $key ?? '' }} </b>
                    
                
              
              </td>
            </tr>
                @forelse($value as $l_key=>$l_val)

               
                  <tr>
                    <td colspan="7" style="text-align: left;background: #f5f9f9;">&nbsp; &nbsp;
                     
                        <b>  {{ $l_key ?? '' }} </b>
                        
                     </td>
                  </tr>

                  @forelse($l_val as $_dkey=>$detail)
                  
                    <tr>
                    <td style="text-align: left;">
                      
                      {{ _view_date_formate($detail->_date ?? $_datex) }} </td>
                    <td style="text-align: left;">{{ $detail->_id ?? '' }} </td>
                    <td style="text-align: left;">{{ $detail->_narration ?? '' }} </td>
                    <td style="text-align: left;">{{ $detail->_short_narration ?? '' }} </td>
                    <td style="text-align: right;">{{ $detail->_dr_amount ?? '' }} </td>
                    <td style="text-align: right;">{{ $detail->_cr_amount ?? '' }} </td>
                    <td style="text-align: right;">{{ $detail->_balance ?? '' }} </td>
                  </tr>

                  @empty
                  @endforelse

                  <tr>
                    <td colspan="4" style="text-align: left;background: #f5f9f9;"> <b>Sub Total of {{ $l_key ?? '' }}: </b> </td>
                    <td style="text-align: right;background: #f5f9f9;"> </td>
                    <td style="text-align: right;background: #f5f9f9;"> </td>
                    <td style="text-align: right;background: #f5f9f9;"> </td>
                </tr>
                <tr>
                  <td colspan="7"></td>
                </tr>

                @empty
                @endforelse



              <tr>
              
                <td colspan="4" style="text-align: left;background: #f5f9f9;"> <b>Summary of {{ $key ?? '' }}: </b> </td>
                <td style="text-align: right;background: #f5f9f9;"> </td>
                <td style="text-align: right;background: #f5f9f9;"> </td>
                <td style="text-align: right;background: #f5f9f9;"> </td>
            </tr>

            @empty
            @endforelse
          
          </tbody>
          <tfoot>
            <tr>
              
                <td colspan="4" style="text-align: left;background: #f5f9f9;"> <b>Grand Total </b> </td>
                <td style="text-align: right;background: #f5f9f9;"> </td>
                <td style="text-align: right;background: #f5f9f9;"> </td>
                <td style="text-align: right;background: #f5f9f9;"> </td>
            </tr>
          </tfoot>
        </table>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->

    <div class="row">
      <!-- accepted payments column -->
      <div class="col-12">
        
        <p> In Words:  </p>
        
      </div>
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
  //window.addEventListener("load", window.print());
</script>
</body>
</html>