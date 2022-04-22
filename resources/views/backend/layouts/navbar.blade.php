<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link _pushmenu" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <!-- <li class="nav-item d-none d-sm-inline-block">
        <a href="index3.html" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li> -->
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
        <div class="navbar-search-block">
          <form class="form-inline">
            <div class="input-group input-group-sm">
              <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>

      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="{{asset('dist/img/user1-128x128.jpg')}}" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">Call me whenever you can...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="{{asset('dist/img/user8-128x128.jpg')}}" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">I got your message bro</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="{{asset('dist/img/user3-128x128.jpg')}}" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">The subject goes here</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
        </div>
      </li>
       @can('inventory-menu') 
      <li class="nav-item dropdown remove_from_header">
        <a class="nav-link" data-toggle="dropdown" href="#">
          
          Inventory <i class="right fas fa-angle-down"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
         
          <div class="dropdown-divider"></div>
           @can('item-category-list')
          <a href="{{url('item-category')}}" class="dropdown-item">
            <i class="fa fa-laptop mr-2" aria-hidden="true"></i>Item Category
          </a>
         @endcan
          <div class="dropdown-divider"></div>
           @can('unit-list')
          <a href="{{url('unit')}}" class="dropdown-item">
            <i class="fa fa-laptop mr-2" aria-hidden="true"></i>Unit Of Measurment
          </a>
         @endcan
         <div class="dropdown-divider"></div>
        @can('item-information-list')
          <a href="{{url('item-information')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i> Item Information
          </a>
         @endcan
         <div class="dropdown-divider"></div>
          
        @can('purchase-list')
          <a href="{{url('purchase')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i> Purchase
          </a>
         @endcan
         <div class="dropdown-divider"></div>
          
        @can('purchase-return-list')
          <a href="{{url('purchase-return')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i> Purchase Return
          </a>
         @endcan
         <div class="dropdown-divider"></div>
          
       @can('sales-list')
          <a href="{{url('sales')}}" class="dropdown-item">
            <i class="fa fa-shopping-cart mr-2" aria-hidden="true"></i> Sales
          </a>
         @endcan
         <div class="dropdown-divider"></div>
        
             
      </li>
    @endcan
      <!-- Notifications Dropdown Menu -->
       @can('account-report-menu') 
      <li class="nav-item dropdown remove_from_header">
        <a class="nav-link" data-toggle="dropdown" href="#">
          
          Accounts Report <i class="right fas fa-angle-down"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
         
          <div class="dropdown-divider"></div>
           @can('ledger-report')
          <a href="{{url('ledger-report')}}" class="dropdown-item">
            <i class="fa fa-sitemap mr-2" aria-hidden="true"></i>Ledger Report
          </a>
         @endcan
         <div class="dropdown-divider"></div>
        @can('group-ledger')
          <a href="{{url('group-ledger')}}" class="dropdown-item">
            <i class="fa fa-fax mr-2" aria-hidden="true"></i> Group Ledger Report
          </a>
         @endcan
         <div class="dropdown-divider"></div>
        @can('income-statement')
          <a href="{{url('income-statement')}}" class="dropdown-item">
            <i class="fa fa-fax mr-2" aria-hidden="true"></i> Income Statement
          </a>
         @endcan
         <div class="dropdown-divider"></div>
        @can('trail-balance')
          <a href="{{url('trail-balance')}}" class="dropdown-item">
            <i class="fa fa-fax mr-2" aria-hidden="true"></i>Trail Balance
          </a>
         @endcan
         <div class="dropdown-divider"></div>
        @can('work-sheet')
          <a href="{{url('work-sheet')}}" class="dropdown-item">
            <i class="fa fa-fax mr-2" aria-hidden="true"></i> Work Sheet
          </a>
         @endcan
         <div class="dropdown-divider"></div>
        @can('balance-sheet')
          <a href="{{url('balance-sheet')}}" class="dropdown-item">
            <i class="fa fa-fax mr-2" aria-hidden="true"></i> Balance Sheet
          </a>
         @endcan  
              
      </li>
    @endcan

      <li class="nav-item dropdown remove_from_header">
        <a class="nav-link" data-toggle="dropdown" href="#">
          
          Accounts <i class="right fas fa-angle-down"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
         
          <div class="dropdown-divider"></div>
           @can('account-type-list')
          <a href="{{url('account-type')}}" class="dropdown-item">
            <i class="fa fa-sitemap mr-2" aria-hidden="true"></i>Account Type
          </a>
         @endcan
         <div class="dropdown-divider"></div>
        @can('account-group-list')
          <a href="{{url('account-group')}}" class="dropdown-item">
            <i class="fa fa-fax mr-2" aria-hidden="true"></i> Account Group
          </a>
         @endcan
         <div class="dropdown-divider"></div>
        @can('account-ledger-list')
          <a href="{{url('account-ledger')}}" class="dropdown-item">
            <i class="fa fa-fax mr-2" aria-hidden="true"></i> Account Ledger
          </a>
         @endcan
         <div class="dropdown-divider"></div>
        @can('voucher-list')
          <a href="{{url('voucher')}}" class="dropdown-item">
            <i class="fa fa-fax mr-2" aria-hidden="true"></i> Voucher
          </a>
         @endcan  
              
      </li>
      
      <li class="nav-item dropdown remove_from_header">
        <a class="nav-link" data-toggle="dropdown" href="#">
          
          Settings <i class="right fas fa-angle-down"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
         
          <div class="dropdown-divider"></div>
           @can('admin-settings')
          <a href="{{url('admin-settings')}}" class="dropdown-item">
            <i class="fas fa-cog mr-2"></i> General Settings
          </a>
         @endcan
         <div class="dropdown-divider"></div>
        @can('role-list')
          <a href="{{url('roles')}}" class="dropdown-item">
          <i class="fa fa-server  mr-2" aria-hidden="true"></i>   Roles
          </a>
         @endcan
         <div class="dropdown-divider"></div>
        @can('user-list')
          <a href="{{url('users')}}" class="dropdown-item">
            <i class="fas fa-users  mr-2"></i> Users
          </a>
         @endcan
         <div class="dropdown-divider"></div>
        @can('branch-list')
          <a href="{{url('branch')}}" class="dropdown-item">
            <i class="fa fa-share-alt mr-2" aria-hidden="true"></i>  Branch
          </a>
         @endcan
         <div class="dropdown-divider"></div>
        @can('cost-center-list')
          <a href="{{url('cost-center')}}" class="dropdown-item">
           <i class="fa fa-adjust mr-2" aria-hidden="true"></i> Cost center
          </a>
         @endcan
         <div class="dropdown-divider"></div>
        @can('store-house-list')
          <a href="{{url('store-house')}}" class="dropdown-item">
            <i class="fas fa-store   mr-2"></i>Store House
          </a>
         @endcan
        
              
              
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-user"></i>
          
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">User Name :  <b>{{Auth::user()->name ?? '' }}</b></span>
          <div class="dropdown-divider"></div>
          @if(Auth::user()->ref_id ==0)
           <a class="dropdown-item text-center" 
                        href="{{ url('users') }}/{{Auth::user()->id}}/edit"
                        >
                  {{ __('Profile') }}
                </a>
          @else
            <a class="dropdown-item text-center" 
                        href="{{ url('branch_user') }}/{{Auth::user()->id}}/edit"
                        >
                  {{ __('Profile') }}
            </a>
          @endif
        <div class="dropdown-divider"></div>
                <a class="dropdown-item text-center" 
                        href="{{ route('logout') }}"
                        onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                  {{ __('Logout') }}
                </a>


                  <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                  </form>
             
          <div class="dropdown-divider"></div>
          
        </div>
      </li>
    </ul>
  </nav>