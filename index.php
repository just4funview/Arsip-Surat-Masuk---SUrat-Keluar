<?php
session_start();
include "koneksi/ceksession.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>ARSIP SURAT BONANZA</title>
  <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
  <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:400,300|Raleway:300,400,900,700italic,700,300,600">
  <link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/animate.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="shortcut icon" href="img/icon.ico">
  <style>
    .carousel {
      position: relative;
      width: 100%;
      max-width: 100%;
      overflow: hidden;
    }

    .carousel-item {
      display: none;
      width: 100%;
      height: auto;
    }

    .carousel-item img {
      width: 100%;
      height: auto;
    }

    .carousel .active {
      display: block;
    }

    .carousel .prev,
    .carousel .next {
      position: absolute;
      top: 50%;
      font-size: 30px;
      color: white;
      padding: 16px;
      cursor: pointer;
      user-select: none;
      z-index: 1000;
    }

    .carousel .prev {
      left: 0;
      transform: translateY(-50%);
    }

    .carousel .next {
      right: 0;
      transform: translateY(-50%);
    }

    .carousel .prev:hover,
    .carousel .next:hover {
      background-color: rgba(0, 0, 0, 0.5);
      border-radius: 50%;
    }

    .carousel .logo img {
      width: 80%;
      max-width: 200px;
      height: auto;
    }
  </style>
</head>

<body>

  <div class="loader"></div>
  <div id="myDiv">
    <!--HEADER-->
    <div class="header">
      <div class="bg-color">
        <header id="main-header">
          <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">ARSIP SURAT <span class="logo-dec">BONANZA</span></a>
              </div>
              <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                  <li class="active"><a href="#main-header">Beranda</a></li>
                  <li><a href="#feature">Profile</a></li>
                  <ul class="nav navbar-nav navbar-right">
                    <li><a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <img src="" alt="">Masuk
                        <span class=" fa fa-angle-down"></span>
                      </a>
                      <ul class="dropdown-menu dropdown-usermenu pull-right">
                        <li><a href="admin/login"><i class="fa fa-sign-out pull-right"></i> Admin</a></li>
                        <li><a href="bagian/login"><i class="fa fa-sign-out pull-right"></i> Bagian</a></li>
                      </ul>
                    </li>
                  </ul>
                </ul>
              </div>
            </div>
          </nav>
        </header>
        <div class="wrapper">
          <div class="container">
            <div class="carousel">
              <div class="carousel-item active">
                <div class="row">
                  <div class="banner-info text-center wow fadeIn delay-05s">
                    <h2 class="bnr-sub-title"></h2>
                    <div class="logo">
                      <img src="img/logo_bonanza1.png" alt="" />
                    </div>
                    <h3 class="bnr-sub-title">SISTEM INFORMASI PENGARSIPAN SURAT</h3>
                    <h3 class="bnr-sub-title"><span class="logo-dec">CV. Bonanza</span></h3>   
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="banner-info text-center wow fadeIn delay-05s">
                    <h2 class="bnr-sub-title"></h2>
                    <div class="logo">
                      <img src="img/logo_bonanza1.png" alt="" />
                    </div>
                    <h3 class="bnr-sub-title">SISTEM INFORMASI PENGARSIPAN SURAT</h3>
                    <h3 class="bnr-sub-title"><span class="logo-dec">CV. Bonanza</span></h3>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="banner-info text-center wow fadeIn delay-05s">
                    <h2 class="bnr-sub-title"></h2>
                    <div class="logo">
                      <img src="img/logo_bonanza1.png" alt="" />
                    </div>
                    <h3 class="bnr-sub-title">SISTEM INFORMASI PENGARSIPAN SURAT</h3>
                    <h3 class="bnr-sub-title"><span class="logo-dec">CV. Bonanza</span></h3>
                  </div>
                </div>
              </div>
              <!-- Carousel Controls -->
              <a href="javascript:void(0);" class="prev" onclick="moveSlide(-1)">&#10094;</a>
              <a href="javascript:void(0);" class="next" onclick="moveSlide(1)">&#10095;</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--/ HEADER-->
    <!---->
    <section id="feature" class="section-padding wow fadeIn delay-05s">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <h2 class="service-title pad-bt15">Profile</h2>
            <p class="sub-title pad-bt15">CV. Bonanza adalah perusahaan yang bergerak di bidang bengkel konstruksi yang berkomitmen memberikan layanan terbaik dalam perencanaan, pembuatan, dan perbaikan struktur bangunan serta berbagai kebutuhan konstruksi lainnya. Dengan tim yang profesional dan berpengalaman, kami telah menangani berbagai proyek mulai dari skala kecil hingga besar, baik untuk sektor pemerintahan, swasta, maupun individu.
            </p>
            <p class="sub-title pad-bt15">Kami mengedepankan kualitas, ketepatan waktu, dan keamanan kerja dalam setiap proyek yang kami tangani. Layanan kami mencakup pembuatan rangka baja, kanopi, pagar, tangga, hingga konstruksi gedung dan infrastruktur lainnya. Dalam setiap pekerjaan, CV. Bonanza selalu mengutamakan kepuasan pelanggan dan hasil akhir yang sesuai dengan standar teknis yang berlaku.</p>

            <p class="sub-title pad-bt15">Website ini berguna untuk pengarsipan Surat Masuk dan Surat Keluar di CV. Bonanza</p>
            <p>Surat diarsipkan dalam format PDF lalu disesuaikan nomor urutnya.</p>
            <hr class="bottom-line">
            <p class="sub-title pad-bt15">Pengarsipan Surat itu<strong> PENTING</strong></p>
            <hr class="bottom-line">
          </div>
          <div class="col-md-4">
          </div>
          <div class="col-md-2 col-sm-6 col-xs-12">
            <div class="wrap-item text-center">
              <div class="item-img">
                <img src="img/inbox.png">
              </div>
              <h3 class="pad-bt15">Surat Masuk</h3>
            </div>
          </div>
          <div class="col-md-2 col-sm-6 col-xs-12">
            <div class="wrap-item text-center">
              <div class="item-img">
                <img src="img/outbox.png">
              </div>
              <h3 class="pad-bt15">Surat Keluar</h3>
            </div>
          </div>
          <div class="col-md-4">
          </div>
        </div>
      </div>
    </section>
    <!---->
    <!---->
    <footer id="footer">
      <div class="container">
        <div class="row text-center">
          <div class="credits">
            <!-- 
                All the links in the footer should remain intact. 
                You can delete the links only if you purchased the pro version.
                Licensing information: https://bootstrapmade.com/license/
                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Baker
            -->
            Designed by <a href="https://bootstrapmade.com/">Bootstrap Themes</a>
          </div>
        </div>
      </div>
    </footer>
    <!---->
  </div>
  <script>
    let slideIndex = 0;

    function showSlides() {
      let slides = document.querySelectorAll('.carousel-item');
      slides.forEach((slide, index) => {
        slide.classList.remove('active');
        if (index === slideIndex) {
          slide.classList.add('active');
        }
      });
    }

    function moveSlide(n) {
      slideIndex += n;
      if (slideIndex < 0) slideIndex = 2; // Adjust for 3 slides (0, 1, 2)
      if (slideIndex > 2) slideIndex = 0; // Adjust for 3 slides (0, 1, 2)
      showSlides();
    }

    // Initial setup
    showSlides();

    // Optional: Auto slide
    setInterval(() => {
      moveSlide(1);
    }, 5000); // 5 seconds interval
  </script>
  <script src="js/jquery.min.js"></script>
  <script src="js/jquery.easing.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/wow.js"></script>
  <script src="js/jquery.bxslider.min.js"></script>
  <script src="js/custom.js"></script>
  <script src="contactform/contactform.js"></script>

</body>

</html>