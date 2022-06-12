<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">{{$settings->title ?? '' }}</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/">{{$settings->title ?? '' }}</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
     
      
    <ul class="nav navbar-nav navbar-right">
       <li><a href="{{url('continent-room')}}">Continent Room</a></li>
       <li><a href="{{url('seminar-hall')}}">Seminar Hall</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Exhibitor <span class="caret"></span></a>
          @php
          $exhibitor_types = \DB::table('exhibitor_types')->select('name','_slug')->where('status',1)->orderBy('position','asc')->get();
          @endphp
          <ul class="dropdown-menu">
            @foreach($exhibitor_types as $exhibitor)
            <li><a href="{{url('/')}}/{{$exhibitor->_slug ?? '' }}">{{$exhibitor->name ?? '' }}</a></li>
            @endforeach
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>