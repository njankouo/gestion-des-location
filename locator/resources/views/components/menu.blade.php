<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="{{asset('img/user.jpg')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">{{Auth()->user()->nom}}</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{asset('img/user.jpg')}}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">{{getRolesName()}}</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
     
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        @can("manager")
            <li class="nav-item">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
               Tableau De Bord
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Vue Globale</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Locations</p>
                </a>
              </li>
            </ul>
          </li>
          @endcan
              @can("admin")
           <li class="nav-item">
            <a href="#" class="nav-link active">
             <i class="fab fa-affiliatetheme"></i>
               <p>
               Habilitations
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="{{ route('admin.habilitations.users.index') }}" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Utilisateur</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Role et permission</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
             <i class="fab fa-apple"></i>
              <p>
                Gestion Des Articles
             
              </p>
            </a>
          </li>
           <li class="nav-item">
            <a href="#" class="nav-link">
             <i class="fab fa-angellist"></i>
              <p>
              Types D'Articles
               
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="fab fa-app-store-ios"></i>
              <p>
              Articles
              
              </p>
            </a>
          </li>
           <li class="nav-item">
            <a href="#" class="nav-link">
            <i class="fab fa-angular"></i>
              <p>
              Tarifications
               
              </p>
            </a>
          </li>
          @endcan
          @can("employe")
          <li class="nav-header">LOCATION</li>
        <li class="nav-item">
            <a href="" class="nav-link ">
                <i class="nav-icon fas fa-users"></i>
                <p>
                Gestion des clients
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link">
                <i class="nav-icon fas fa-exchange-alt"></i>
                <p>
                Gestion des locations
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link">
                <i class="nav-icon fas fa-exchange-alt"></i>
                <p>
                Gestion des locations
                </p>
            </a>
        </li>

        <li class="nav-header">CAISSE</li>
        <li class="nav-item">
            <a href="#" class="nav-link">
                <i class="nav-icon fas fa-coins"></i>
                <p>
                Gestion des paiements
                </p>
            </a>
        </li>
            @endcan
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
