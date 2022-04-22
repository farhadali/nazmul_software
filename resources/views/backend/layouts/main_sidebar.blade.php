<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{url('home')}}" class="brand-link">
      <img src="{{asset('/')}}{{$settings->logo ?? ''}}" alt="{{$settings->name ?? '' }}" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">{{$settings->name ?? '' }}</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item {{ Route::is('roles.*') || Route::is('users.*') || Route::is('admin-settings') || Route::is('branch.*') || Route::is('social_media.*') || Route::is('cost-center.*') || Route::is('store-house.*')  ? 'menu-is-opening menu-open' : '' }}">
            <a href="#" class="nav-link {{ Route::is('roles.*') || Route::is('users.*') || Route::is('admin-settings') || Route::is('branch.*')  || Route::is('cost-center.*')  || Route::is('store-house.*')   ? 'active' : '' }}">
            
               <i class="fas fa-cog nav-icon"></i> 
              <p>
                Settings
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
               @can('admin-settings')
              <li class="nav-item">

                <a href="{{url('admin-settings')}}" class="nav-link {{Route::is('admin-settings')   ? 'active' : '' }}">
                  <i class="fa fa-asterisk nav-icon"></i> 
                  <p>General Settings</p>
                </a>
              </li>
              @endcan
              @can('social_media-list')
              <li class="nav-item">

                <a href="{{url('social_media')}}" class="nav-link {{Route::is('social_media.*')   ? 'active' : '' }}">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Social Media</p>
                </a>
              </li>
              @endcan
               @can('role-list')
              <li class="nav-item">
                <a href="{{url('roles')}}" class="nav-link {{Route::is('roles.*')   ? 'active' : '' }}">
                  <i class="fa fa-server nav-icon"></i>
                  <p>Role</p>
                </a>
              </li>
              @endcan
              @can('user-list')
              <li class="nav-item">
                <a href="{{url('users')}}" class="nav-link {{Route::is('users.*')   ? 'active' : '' }}">
                  <i class="fas fa-users nav-icon"></i>
                  <p>Users</p>
                </a>
              </li>
              @endcan
              @can('branch-list')
              <li class="nav-item">
                <a href="{{url('branch')}}" class="nav-link {{Route::is('branch.*')   ? 'active' : '' }}">
                 <i class="fa fa-share-alt nav-icon"></i>
                  <p>Branch</p>
                </a>
              </li>
              @endcan
              @can('cost-center-list')
              <li class="nav-item">
                <a href="{{url('cost-center')}}" class="nav-link {{Route::is('cost-center.*')   ? 'active' : '' }}">
                  <i class="fa fa-adjust nav-icon"></i>
                  <p>Cost Center</p>
                </a>
              </li>
              @endcan
              @can('store-house-list')
              <li class="nav-item">
                <a href="{{url('store-house')}}" class="nav-link {{Route::is('store-house.*')   ? 'active' : '' }}">
                  <i class="fas fa-store  nav-icon"></i>
                  <p>Store House</p>
                </a>
              </li>
              @endcan
            </ul>
          </li>

          <li class="nav-item {{ Route::is('account-type.*') || Route::is('account-group.*')|| Route::is('voucher.*')  || Route::is('account-ledger.*')   ? 'menu-is-opening menu-open' : '' }}">
            <a href="#" class="nav-link {{ Route::is('account-type.*') || Route::is('account-group.*') || Route::is('account-ledger.*') || Route::is('voucher.*')    ? 'active' : '' }}">
              <i class="fa fa-credit-card nav-icon" aria-hidden="true"></i>
              <p>
                Account
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
             @can('account-type-list')
              <li class="nav-item">
                <a href="{{url('account-type')}}" class="nav-link {{Route::is('account-type.*')   ? 'active' : '' }}" >
                  <i class="fa fa-sitemap nav-icon"></i>
                  <p>Account Type</p>
                </a>
              </li>
              @endcan
            @can('account-group-list')  
              <li class="nav-item">
                <a href="{{url('account-group')}}" class="nav-link {{Route::is('account-group.*')   ? 'active' : '' }}" >
                  <i class="fa fa-fax nav-icon"></i>
                  <p>Account Group</p>
                </a>
              </li>
            @endcan  
            @can('account-ledger-list')  
              <li class="nav-item">
                <a href="{{url('account-ledger')}}" class="nav-link {{Route::is('account-ledger.*')   ? 'active' : '' }}" >
                  <i class="fa fa-fax nav-icon"></i>
                  <p>Account Ledger</p>
                </a>
              </li>
            @endcan  
            @can('voucher-list')  
              <li class="nav-item">
                <a href="{{url('voucher')}}" class="nav-link {{Route::is('voucher.*')   ? 'active' : '' }}" >
                  <i class="fa fa-fax nav-icon"></i>
                  <p>Voucher</p>
                </a>
              </li>
            @endcan  
              
            </ul>
          </li>
            @can('account-report-menu') 
          <li class="nav-item {{ Route::is('ledger-report.*') || Route::is('group-ledger.*') || Route::is('income-statement.*') || Route::is('trail-balance.*') || Route::is('work-sheet.*') || Route::is('balance-sheet.*') ? 'menu-is-opening menu-open' : '' }}">
            <a href="#" class="nav-link {{ Route::is('ledger-report.*') || Route::is('group-ledger.*') || Route::is('income-statement.*') || Route::is('trail-balance.*') || Route::is('work-sheet.*') || Route::is('balance-sheet.*')    ? 'active' : '' }}">
              <i class="fa fa-file nav-icon" aria-hidden="true"></i>
              <p>
                Accounts Report
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
             @can('ledger-report')
              <li class="nav-item">
                <a href="{{url('ledger-report')}}" class="nav-link {{Route::is('ledger-report.*')   ? 'active' : '' }}" >
                  <i class="fa fa-id-card nav-icon"></i>
                  <p>Ledger Report</p>
                </a>
              </li>
              @endcan
             @can('group-ledger')
              <li class="nav-item">
                <a href="{{url('group-ledger')}}" class="nav-link {{Route::is('group-ledger.*')   ? 'active' : '' }}" >
                  <i class="fa fa-id-card nav-icon"></i>
                  <p>Group Ledger Report</p>
                </a>
              </li>
              @endcan
             @can('income-statement')
              <li class="nav-item">
                <a href="{{url('income-statement')}}" class="nav-link {{Route::is('income-statement.*')   ? 'active' : '' }}" >
                  <i class="fa fa-id-card nav-icon"></i>
                  <p>Income Statement</p>
                </a>
              </li>
              @endcan
             @can('trail-balance')
              <li class="nav-item">
                <a href="{{url('trail-balance')}}" class="nav-link {{Route::is('trail-balance.*')   ? 'active' : '' }}" >
                  <i class="fa fa-id-card nav-icon"></i>
                  <p>Trail Balance</p>
                </a>
              </li>
              @endcan
             @can('work-sheet')
              <li class="nav-item">
                <a href="{{url('work-sheet')}}" class="nav-link {{Route::is('work-sheet.*')   ? 'active' : '' }}" >
                  <i class="fa fa-id-card nav-icon"></i>
                  <p>Work Sheet</p>
                </a>
              </li>
              @endcan
             @can('balance-sheet')
              <li class="nav-item">
                <a href="{{url('balance-sheet')}}" class="nav-link {{Route::is('balance-sheet.*')   ? 'active' : '' }}" >
                  <i class="fa fa-id-card nav-icon"></i>
                  <p>Balance Sheet</p>
                </a>
              </li>
              @endcan
            </ul>
          </li>
          @endcan

           @can('inventory-menu') 
          <li class="nav-item {{ Route::is('item-category.*') || Route::is('item-information.*')  ? 'menu-is-opening menu-open' : '' }}">
            <a href="#" class="nav-link  Route::is('item-category.*') || Route::is('item-information.*')   ? 'active' : '' }}">
              <i class="fa fa-file nav-icon" aria-hidden="true"></i>
              <p>
                Inventory
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
             @can('item-category-list')
              <li class="nav-item">
                <a href="{{url('item-category')}}" class="nav-link {{Route::is('item-category.*')   ? 'active' : '' }}" >
                  <i class="fa fa-id-card nav-icon"></i>
                  <p>Inventory Category</p>
                </a>
              </li>
              @endcan
             @can('item-information-list')
              <li class="nav-item">
                <a href="{{url('item-information')}}" class="nav-link {{Route::is('item-information.*')   ? 'active' : '' }}" >
                  <i class="fa fa-id-card nav-icon"></i>
                  <p>Item Information</p>
                </a>
              </li>
              @endcan
             @can('sales-list')
              <li class="nav-item">
                <a href="{{url('item-information')}}" class="nav-link {{Route::is('sales.*')   ? 'active' : '' }}" >
                  <i class="fa fa-id-card nav-icon"></i>
                    <p>Sales</p>
                </a>
              </li>
              @endcan
            </ul>
          </li>
          @endcan
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>