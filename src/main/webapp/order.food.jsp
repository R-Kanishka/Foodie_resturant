<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <link rel="shortcut icon" href="images/favicon.png" type="">

  <title> Foodies </title>

  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ==" crossorigin="anonymous" />

  <link href="css/font-awesome.min.css" rel="stylesheet" />

  <link href="css/style.css" rel="stylesheet" />

  <link href="css/responsive.css" rel="stylesheet" />

</head>

<body class="sub_page">

  <div class="hero_area">
    <div class="bg-box">
      <img src="images/hero-bg.jpg" alt="">
    </div>
  
	<header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.jsp">
            <span>
              Foodies
            </span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav  mx-auto ">
              <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="menu.jsp">Menu</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.jsp">About <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="book.jsp">Book Table</a>
              </li>
            </ul>
              <form class="form-inline">
                <div class="input-group input-group-sm">
                  <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                  <div class="input-group-append">
                    <button class="btn btn-navbar" type="submit">
                      <i class="fa fa-search"aria-hidden="true"></i>
                    </button>
                  </div>
                </div>
              </form>
              <a href="signup.jsp" class="btn btn-warning ml-2">login/signup</a>
          </div>
        </nav>
      </div>
    </header>
  </div>

  <section class="about_section layout_padding" >
    <div class="container">
      <div class="heading_container heading_center">
            <div class="container">
              <div class="row gy-4 align-items-center justify-content-center">
                <div class="col-12 col-md-6 col-xl-5">
                  <div class="card border-0 rounded-4">
                    <div class="card-body p-3 p-md-4 p-xl-5">
                      <div class="row">
                        <div class="col-16">
                          <div class="mb-4">
                            <h3 class="fs-6 fw-normal text-dark m-0">Your Details to Order !</h3>
                          </div>
                        </div>
                      </div>
                      <form action="#!">
                        <div class="row gy-3 overflow-hidden">
                          <div class="col-md-6">
                            <div class="form-floating mb-3">
                              <input type="text" class="form-control" name="item" id="item" placeholder="item" required>
                            </div>
                          </div>
                          <div class="col-md-6">
                            <div class="form-floating mb-3">
                              <input type="text" class="form-control" name="price" id="price" placeholder="$45" required>
                            </div>
                          </div>
                          <div class="col-md-12">
                            <div class="form-floating mb-3">
                              <input type="text" class="form-control" name="name" id="name" placeholder="Name" required>
                            </div>
                          </div>
                          
                          <div class="col-12">
                            <div class="form-floating mb-3">
                              <input type="email" class="form-control" name="email" id="email" placeholder="name@example.com" required>
                            </div>
                          </div>
                          <div class="col-12">
                            <div class="form-floating mb-3">
                              <input type="tel" pattern="[0-9]{10}" class="form-control" name="mobileno" id="mobileno" placeholder="0772669138" required>
                            </div>
                          </div>
                          <div class="col-12">
                            <div class="d-grid">
                              <button class="btn btn-success btn-lg" type="submit">Order Now</button>
                            </div>
                          </div>
                        </div>
                      </form>
                      
                    </div>
                  </div>
                </div>
              </div>
            </div>     
      </div>
    </div>
  </section>

  <footer class="footer_section">
    <div class="container">
      <div class="row">
        <div class="col-md-4 footer-col">
          <div class="footer_contact">
            <h4>
              Contact Us
            </h4>
            <div class="contact_link_box">
              
              <a href="">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  Call 0112 729 729
                </span>
              </a>
              <a href="">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <span>
                  contactus@foodies.com
                </span>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-4 footer-col">
          <div class="footer_detail">
          </div>
        </div>
        <div class="col-md-4 footer-col">
          <h4>
            Opening Hours
          </h4>
          <p>
            Everyday
          </p>
          <p>
            10.00 Am -10.00 Pm
          </p>
        </div>
      </div>
    </div>
  </footer>
  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
  </script>
  <script src="js/bootstrap.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <script src="https://unpkg.com/isotope-layout@3.0.4/dist/isotope.pkgd.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
  <script src="js/custom.js"></script>

</body>

</html>