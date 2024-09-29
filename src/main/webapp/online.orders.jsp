<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>Foodies Admin</title>

  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper"> 
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="dashboard.jsp" class="nav-link">Home</a>
      </li>
    </ul>

    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>
  </nav>

  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <a href="dashboard.jsp" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">www.Foodies.com</span>
    </a>

    <div class="sidebar">
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="">
        </div>
      </div>

      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./online.orders.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Online Orders</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./table.reserverd.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Table Reserved</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./products.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Products</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./clients.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Clients</p>
                </a>
              </li>    
            </ul>
          </li>
        </ul>   
      </nav>
    </div>   
  </aside>

  <div class="content-wrapper" style="min-height: 242px;">
    <br>
    <section class="content">
      <div class="container-fluid">
        <div class="ms-content-wrapper">
          <div class="row">
            <div class="col-md-9">
              <nav aria-label="breadcrumb" style="color:red;">
                <ol class="breadcrumb pl-0">
                  <li class="breadcrumb-item"><a><i class="material-icons"></i> Home</a></li>
                  <li class="breadcrumb-item"><a>Online orders</a></li>
                  <li class="breadcrumb-item active" aria-current="page">All</li>
                </ol>
              </nav>
            </div>
          </div>
        </div>
        <div class="col-md-12">
          <div class="ms-panel">
            <div class="ms-panel-body">
              <div class="row">
                <div class="col-md-12">
                  <div class="card">
                    <div class="card-body">
                      <table id="myTable" class="table table-striped table-bordered">
                        <thead>
                          <tr>
                          <th style="text-align:center">Item</th>
                            <th style="text-align:center">Price</th>
                            <th style="text-align:center">Name</th>
                            <th style="text-align:center">Email</th>
                            <th style="text-align:center">Number</th>
                            <th style="text-align:center">Actions</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td style="text-align:center"></td>
                            <td style="text-align:center"></td>
                            <td style="text-align:center"></td>
                            <td style="text-align:center"></td>
                            <td style="text-align:center"></td>
                            <td style="text-align:center">
                              <a href="" class="btn btn-success">View</a>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

  <aside class="control-sidebar control-sidebar-dark">
  </aside>

  <footer class="main-footer">
    <strong>Copyright &copy; 2024-2025 <a href="">www.foodies.com</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 0.0.1
    </div>
  </footer>
</div>

<script src="plugins/jquery/jquery.min.js"></script>
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="dist/js/adminlte.js"></script>
<script src="dist/js/demo.js"></script>
<script src="plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
<script src="plugins/raphael/raphael.min.js"></script>
<script src="plugins/jquery-mapael/jquery.mapael.min.js"></script>
<script src="plugins/jquery-mapael/maps/usa_states.min.js"></script>
<script src="plugins/chart.js/Chart.min.js"></script>
<script src="dist/js/pages/dashboard2.js"></script>
</body>
</html>
