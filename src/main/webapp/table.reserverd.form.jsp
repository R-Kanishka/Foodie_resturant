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
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Alexander Pierce</a>
        </div>
      </div>
    </div>   
  </aside>

  <div class="content-wrapper" style="min-height: 242px;">
    <br>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Table Reserved</h3>
              </div>  
              
              <form action="BookTableServlet" method="post">
                <input type="hidden" name="id" value="${booking.id}" />
                
                <div class="card-body">
                  <div class="form-group">
                    <label for="Inputname">Name</label>
                    <input type="text" class="form-control" id="name" name="name" value="${booking.name}" placeholder="" required>
                  </div>
                  <div class="form-group">
                    <label for="phonenumber">Contact Number</label>
                    <input type="text" class="form-control" id="phone_number" name="phone_number" value="${booking.phoneNumber}" pattern="\d{10}" title="Phone number must be exactly 10 digits" required />
                  </div>
                   <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" value="${booking.email}" required />
                  </div>
                  <div class="form-group">
                    <label for="Inputname">Persons</label>
                    <input type="text" class="form-control" id="count" name="count" value="${booking.count}" placeholder="" required>
                  </div>
                  <div class="form-group">
                    <label for="Inputname">Date</label>
                    <input type="text" class="form-control" id="date" name="date" value="${booking.date}" placeholder="" required>
                  </div>
                </div>
                
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Update</button>
                </div>
              </form>
            </div>
           </div>
         </div>
      </div>
    </section>
  </div>

  <aside class="control-sidebar control-sidebar-dark"></aside>

  <footer class="main-footer">
    <strong>Copyright &copy; 2024-2025 <a href="">www.foodies.com</a>.</strong> All rights reserved.
    <div class="float-right d-none d-sm-inline-block"><b>Version</b> 0.0.1</div>
  </footer>
</div>

<script>
  $(document).ready(function(){
  
    const urlParams = new URLSearchParams(window.location.search);
    if (urlParams.get('success') === 'true') {
      alert("Record successfully updated!");
    } else if (urlParams.get('success') === 'false') {
      alert("Update failed! Please try again.");
    }
  });
</script>

<script src="plugins/jquery/jquery.min.js"></script>
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="dist/js/adminlte.js"></script>
<script src="dist/js/demo.js"></script>
</body>
</html>
