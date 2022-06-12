<nav class="main-header navbar navbar-expand navbar-white fixed-top  navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      
     
      <a href="{{url('home')}}" class="brand-link">
      <img src="{{asset('/')}}{{$settings->logo ?? ''}}" alt="{{$settings->name ?? '' }}" class="brand-image img-circle elevation-3" >
      <span  style="color:#000 !important;">{{$settings->title ?? '' }}</span>
    </a>
    <li class="nav-item">
        <a class="nav-link _pushmenu" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
     

      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown"> </li>
       @can('inventory-menu') 
      <li class="nav-item dropdown remove_from_header">
        <a class="nav-link" data-toggle="dropdown" href="#">
          
          Entry <i class="right fas fa-angle-down"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          @can('voucher-list')
          
        <div style="display: flex;">
         <a href="{{url('voucher')}}" class="dropdown-item">
            <i class="fa fa-fax mr-2" aria-hidden="true"></i> Voucher
          </a>
           <a  href="{{route('voucher.create')}}" class="dropdown-item text-right">
            <i class="nav-icon fas fa-plus"></i>
          </a>
        </div>
          
         @endcan 
          @can('purchase-order-list')
          
           <div style="display: flex;">
           <a href="{{url('purchase-order')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i> Purchase Order
          </a>
           <a  href="{{route('purchase-order.create')}}" class="dropdown-item text-right">
            <i class="nav-icon fas fa-plus"></i>
          </a>
        </div>
         @endcan
         <div class="dropdown-divider"></div>
        @can('purchase-list')
          
           <div style="display: flex;">
           <a href="{{url('purchase')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i> Purchase
          </a>
           <a  href="{{route('purchase.create')}}" class="dropdown-item text-right">
            <i class="nav-icon fas fa-plus"></i>
          </a>
        </div>
         @endcan
         <div class="dropdown-divider"></div>
          
        @can('purchase-return-list')
        <div style="display: flex;">
           <a href="{{url('purchase-return')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i> Purchase Return
          </a>
           <a  href="{{route('purchase-return.create')}}" class="dropdown-item text-right">
            <i class="nav-icon fas fa-plus"></i>
          </a>
        </div>
         @endcan
         <div class="dropdown-divider"></div>
          
       @can('sales-list')
          
        <div style="display: flex;">
           <a href="{{url('sales')}}" class="dropdown-item">
            <i class="fa fa-shopping-cart mr-2" aria-hidden="true"></i> Sales
          </a>
           <a  href="{{route('sales.create')}}" class="dropdown-item text-right">
            <i class="nav-icon fas fa-plus"></i>
          </a>
        </div>
         @endcan
         <div class="dropdown-divider"></div>  
       @can('sales-return-list')
          
        <div style="display: flex;">
           <a href="{{url('sales-return')}}" class="dropdown-item">
            <i class="fa fa-shopping-cart mr-2" aria-hidden="true"></i> Sales Return
          </a>
           <a  href="{{route('sales-return.create')}}" class="dropdown-item text-right">
            <i class="nav-icon fas fa-plus"></i>
          </a>
        </div>
         @endcan  
         <div class="dropdown-divider"></div>  
       @can('damage-list')
          
        <div style="display: flex;">
           <a href="{{url('damage')}}" class="dropdown-item">
            <i class="fa fa-recycle mr-2" aria-hidden="true"></i> Damage Adjustment
          </a>
           <a  href="{{route('damage.create')}}" class="dropdown-item text-right">
            <i class="nav-icon fas fa-plus"></i>
          </a>
        </div>
         @endcan   
      </li>
    @endcan
       @can('inventory-report') 
      <li class="nav-item dropdown remove_from_header">
        <a class="nav-link" data-toggle="dropdown" href="#">
          
          Inventory Report <i class="right fas fa-angle-down"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
         
        @can('bill-party-statement')
          
           <div style="display: flex;">
           <a href="{{url('bill-party-statement')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i> Bill of Party Statement
          </a>
        </div>
         @endcan
         <div class="dropdown-divider"></div>
          
        @can('date-wise-purchase')
        <div style="display: flex;">
           <a href="{{url('date-wise-purchase')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i> Date Wise Purchase
          </a>
        </div>
         
         @endcan
         
    
           
       @can('purchase-return-detail')
        <div style="display: flex;">
           <a href="{{url('purchase-return-detail')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i> Purchase Return Detail
          </a>
        </div>
         @endcan 
         <div class="dropdown-divider"></div>  
       @can('date-wise-sales')
        <div style="display: flex;">
           <a href="{{url('date-wise-sales')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i> Date Wise Sales
          </a>
        </div>
         @endcan 
          
      
          
       @can('sales-return-detail')
        <div style="display: flex;">
           <a href="{{url('sales-return-detail')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i> Sales Return Details
          </a>
        </div>
         @endcan 
         <div class="dropdown-divider"></div>  
       @can('stock-possition')
        <div style="display: flex;">
           <a href="{{url('stock-possition')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i>Stock Possition
          </a>
        </div>
         @endcan 
          
       @can('stock-ledger')
        <div style="display: flex;">
           <a href="{{url('stock-ledger')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i>Stock Ledger
          </a>
        </div>
         @endcan 
          
       @can('stock-value')
        <div style="display: flex;">
           <a href="{{url('stock-value')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i>Stock Value
          </a>
        </div>
         @endcan 
          
       @can('stock-value-register')
        <div style="display: flex;">
           <a href="{{url('stock-value-register')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i>Stock Value Register
          </a>
        </div>
         @endcan 
          <div class="dropdown-divider"></div>
       @can('gross-profit')
        <div style="display: flex;">
           <a href="{{url('gross-profit')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i>Gross Profit
          </a>
        </div>
         @endcan
         <div class="dropdown-divider"></div>  
       @can('expired-item')
        <div style="display: flex;">
           <a href="{{url('expired-item')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i>Expired Item
          </a>
        </div>
         @endcan   
       @can('shortage-item')
        <div style="display: flex;">
           <a href="{{url('shortage-item')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i>Shortage Item
          </a>
        </div>
         @endcan 


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
     @can('inventory-menu') 
      <li class="nav-item dropdown remove_from_header">
        <a class="nav-link" data-toggle="dropdown" href="#">
          
          Master <i class="right fas fa-angle-down"></i>
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
          
        <div style="display: flex;">
          <a href="{{url('account-ledger')}}" class="dropdown-item">
            <i class="fa fa-fax mr-2" aria-hidden="true"></i> Account Ledger
          </a>
           <a  href="{{route('account-ledger.create')}}" class="dropdown-item text-right">
            <i class="nav-icon fas fa-plus"></i>
          </a>
        </div>
          
         @endcan
          
        <div class="dropdown-divider"></div>
           @can('item-category-list')
          
        <div style="display: flex;">
          <a href="{{url('item-category')}}" class="dropdown-item">
            <i class="fa fa-laptop mr-2" aria-hidden="true"></i>Item Category
          </a>
           <a  href="{{route('item-category.create')}}" class="dropdown-item text-right">
            <i class="nav-icon fas fa-plus"></i>
          </a>
        </div>
          
         @endcan
          <div class="dropdown-divider"></div>
           @can('unit-list')
          
        <div style="display: flex;">
           <a href="{{url('unit')}}" class="dropdown-item">
            <i class="fa fa-laptop mr-2" aria-hidden="true"></i>Unit Of Measurment
          </a>
           <a  href="{{route('unit.create')}}" class="dropdown-item text-right">
            <i class="nav-icon fas fa-plus"></i>
          </a>
        </div>
          
         @endcan
         <div class="dropdown-divider"></div>
        @can('item-information-list')
        <div style="display: flex;">
           <a href="{{url('item-information')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i> Item Information
          </a>
           <a  href="{{route('item-information.create')}}" class="dropdown-item text-right">
            <i class="nav-icon fas fa-plus"></i>
          </a>
        </div>
          
         @endcan
         <div class="dropdown-divider"></div>
        @can('lot-item-information')
        <div style="display: flex;">
           <a href="{{url('lot-item-information')}}" class="dropdown-item">
            <i class="fa fa-list-alt mr-2" aria-hidden="true"></i>Lot Item Information
          </a>
           
        </div>
          
         @endcan
         <div class="dropdown-divider"></div>  
      </li>
    @endcan
      
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
          
        <div style="display: flex;">
         <a href="{{url('roles')}}" class="dropdown-item">
          <i class="fa fa-server  mr-2" aria-hidden="true"></i>Roles
          </a>
           <a  href="{{route('roles.create')}}" class="dropdown-item text-right">
            <i class="nav-icon fas fa-plus"></i>
          </a>
        </div>
          
         @endcan
         <div class="dropdown-divider"></div>
        @can('user-list')
        <div style="display: flex;">
         <a href="{{url('users')}}" class="dropdown-item">
            <i class="fas fa-users  mr-2"></i> Users
          </a>
           <a  href="{{route('users.create')}}" class="dropdown-item text-right">
            <i class="nav-icon fas fa-plus"></i>
          </a>
        </div>
          
         @endcan
         <div class="dropdown-divider"></div>
        @can('branch-list')
        <div style="display: flex;">
          <a href="{{url('branch')}}" class="dropdown-item">
            <i class="fa fa-share-alt mr-2" aria-hidden="true"></i>  Branch
          </a>
           <a  href="{{route('branch.create')}}" class="dropdown-item text-right">
            <i class="nav-icon fas fa-plus"></i>
          </a>
        </div>
         
         @endcan
         <div class="dropdown-divider"></div>
        @can('cost-center-list')
        <div style="display: flex;">
          <a href="{{url('cost-center')}}" class="dropdown-item">
           <i class="fa fa-adjust mr-2" aria-hidden="true"></i> Cost center
          </a>
           <a  href="{{route('cost-center.create')}}" class="dropdown-item text-right">
            <i class="nav-icon fas fa-plus"></i>
          </a>
        </div>
          
         @endcan
         <div class="dropdown-divider"></div>
        @can('store-house-list')
        <div style="display: flex;">
          <a href="{{url('store-house')}}" class="dropdown-item">
            <i class="fas fa-store   mr-2"></i>Store House
          </a>
           <a  href="{{route('store-house.create')}}" class="dropdown-item text-right">
            <i class="nav-icon fas fa-plus"></i>
          </a>
        </div>
         @endcan
         <div class="dropdown-divider"></div>
        @can('lock-permission')
        <div style="display: flex;">
          <a href="{{url('all-lock')}}" class="dropdown-item">
            <i class="fas fa-lock _required   mr-2"></i>Transection Lock System
          </a>
        </div>
         @endcan
        
              
              
      </li>
      <li class="nav-item">
        <a  class="nav-link full_screen_show" data-widget="fullscreen" href="#" role="button" >
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