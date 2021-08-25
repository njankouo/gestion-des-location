
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Starter</title>
  <!-- Google Font: Source Sans Pro -->
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{asset('css/adminlte.min.css')}}">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <x-sidebar/>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <x-menu/>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
          @yield("contenu")
        <div class="row">
          <div class="col-lg-6">
           

         
          </div>
          <!-- /.col-md-6 -->
          <div class="col-lg-6">
           

           
          </div>
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
   <div class="card-body box-profile bg-dark">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle" src="{{asset('img/user.jpg')}}" alt="User profile picture">
                </div>

                <h3 class="profile-username text-center">{{auth()->user()->nom}}</h3>

                

                <ul class="list-group list-group-unbordered mb-3">
                  <li class="list-group-item">
                    <b>mot de passe</b> 
                  </li>
                  <li class="list-group-item">
                    <b>profil</b> 
                  </li>
                 
                </ul>

                <a class="btn btn-primary btn-block" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        Deconnexion
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
              </div>
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
  
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="{{asset('js/jquery.min.js')}}"></script>
<!-- Bootstrap 4 -->
<script src="{{asset('js/bootstrap.bundle.min.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{asset('js/adminlte.min.js')}}"></script>
</body>
</html>
