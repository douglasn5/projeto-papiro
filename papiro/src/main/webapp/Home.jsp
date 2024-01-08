<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="com.mysql.cj.jdbc.Driver"%>
<%@ page import="papiro.Conexao"%>
<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>PAPIRO</title>


  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <!--slick slider stylesheet -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick-theme.min.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700&display=swap" rel="stylesheet" />
  <!-- slick slider -->

  <link rel="stylesheet" href="css/slick-theme.css" />
  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

</head>

<body>

  <div class="main_body_content">

    <div class="hero_area">
      <!-- header section strats -->
      <header class="header_section">
        <div class="container-fluid">
          <nav class="navbar navbar-expand-lg custom_nav-container ">
            <a class="navbar-brand" href="index.html">
              <img src="images\papirologo-removebg-preview.png" height="150" class="d-inline-block align-top" alt="Logo">
            </a>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class=""> </span>
            </button>

            <div class="collapse navbar-collapse " id="navbarSupportedContent">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="about.html"> Sobre</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="produtos.html">Produtos</a>
                </li>
               <li class="nav-item">
                  <a class="nav-link" href="contact.html">Contato</a>
                </li>
              </ul>
              <div class="quote_btn-container">
                <form class="form-inline">
                  <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                    <i class="fa fa-search" aria-hidden="true"></i>
                  </button>
                </form>
                <a href="">
                  <i class="fa fa-user" aria-hidden="true"></i>
                </a>
              </div>
            </div>
          </nav>
        </div>
      </header>
      <!-- end header section -->
      <!-- slider section -->
      <section class="slider_section ">
        <div id="customCarousel1" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <div class="container">
                <div class="row">
                  <div class="col-md-6">
                    <div class="detail_box">
                      <h1>
                        Convites <br>
                        <span>
                          Personalizados
                        </span>
                      </h1>
                      <a href="#">
                        <span>
                          produtos
                        </span>
                        <img src="images/white-arrow.png" alt="">
                      </a>
                    </div>
                  </div>
                  <div class="col-md-4 ml-auto">
                    <div class="img-box">
                      <img src="images/slider-img.png" alt="">
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="carousel-item ">
              <div class="container">
                <div class="row">
                  <div class="col-md-6">
                    <div class="detail_box">
                      <h1>
                        Caixinhas <br>
                        <span>
                          
                        </span>
                      </h1>
                      <a href="#">
                        <span>
                          produtos
                        </span>
                        <img src="images/white-arrow.png" alt="">
                      </a>
                    </div>
                  </div>
                  <div class="col-md-4 ml-auto">
                    <div class="img-box">
                      <img src="images/slider-img2.png" alt="">
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="carousel-item ">
              <div class="container">
                <div class="row">
                  <div class="col-md-6">
                    <div class="detail_box">
                      <h1>
                        Bolsas <br>
                        <span>
                          
                        </span>
                      </h1>
                      <a href="#">
                        <span>
                          produtos
                        </span>
                        <img src="images/white-arrow.png" alt="">
                      </a>
                    </div>
                  </div>
                  <div class="col-md-4 ml-auto">
                    <div class="img-box">
                      <img src="images/slider-img3.png" alt="">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel_btn-box">
          <a class="carousel-control-prev" href="#customCarousel1" role="button" data-slide="prev">
            <i class="fa fa-arrow-left" aria-hidden="true"></i>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#customCarousel1" role="button" data-slide="next">
            <i class="fa fa-arrow-right" aria-hidden="true"></i>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </section>
      <!-- end slider section -->
    </div>

  

    <!-- produtos section -->
<br>
    <section class="produtos_section ">
      <div class="container">
        <div class="heading_container">
          <h2>
            Os nossos produtos
          </h2>
          <p>
            Vamos celebrar o basiquinho 
          </p>
        </div>
      </div>
      <div class="container">
        <div class="chocolate_container">
          <div class="box">
            <div class="img-box">
              <img src="images/slider-img.png" alt="">
            </div>
            <div class="detail-box">
              <h6>
                CONVITES <span>PERSONALIZADOS</span>
              </h6>
              <h5>
                BOX(UNI)$64,90
              </h5>
              <a href="">
                COMPRE AGORA
              </a>
            </div>
          </div>
          <div class="box">
            <div class="img-box">
              <img src="images/slider-img2.png" alt="">
            </div>
            <div class="detail-box">
              <h6>
                caixinha <span></span>
              </h6>
              <h5>
                $10,00
              </h5>
              <a href="">
                COMPRE AGORA
              </a>
            </div>
          </div>
          <div class="box">
            <div class="img-box">
              <img src="images/slider-imag4.png" alt="">
            </div>
            <div class="detail-box">
              <h6>
                Bolsa <span></span>
              </h6>
              <h5>
                $11.90
              </h5>
              <a href="">
                COMPRE AGORA
              </a>
            </div>
          </div>
          <div class="box">
            <div class="img-box">
              <img src="images/slide-img5.png" alt="">
            </div>
            <div class="detail-box">
              <h6>
                etiquetas  <span>Personalizadas</span>
              </h6>
              <h5>
                $5,00
              </h5>
              <a href="">
                COMPRE AGORA
              </a>
            </div>
          </div>
          <div class="box">
            <div class="img-box">
              <img src="images/slide-img6.png" alt="">
            </div>
            <div class="detail-box">
              <h6>
                Cartao <span>Personalizadas</span>
              </h6>
              <h5>
                $7,00
              </h5>
              <a href="">
                COMPRE AGORA
              </a>
            </div>
          </div>
         
    </section>

    <!-- end produtos section -->
  <!-- about section -->
<br>
  <section class="about_section layout_padding ">
    <div class="container  ">
      <div class="row">
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                Sobre nos
                <br>
               TODOS OS PRODUTOS SÃO HAND-MADE
              </h2>
            </div>
            <p>
              "Somos uma empresa que valoriza
Fazer parte dos sonhos das pessoas,
buscando trazer algo exclusivo e
único, tornando seu momento mais
inesquecível!"
Bem-vindo à nossa loja, onde você encontra
diversa opções de convites e papelaria de
eventos personalizadas com preços que
cabem no seu bolso. Confira nossa coleção
e compre online no papiro_eventoss.
Dúvidas? Entre em contato.
</p>
            <a href="contact.html">
              <span>
                CONTATO
              </span>
              <img src="images/color-arrow.png" alt="">
            </a>
          </div>
        </div>
        <div class="col-md-6">
          <div class="img-box">
            <img src="images/about-transformed.jpeg" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->
    <!-- offer section -->

    <section class="offer_section layout_padding">
      <div class="container">
        <div class="box">
          <div class="detail-box">
           
          </div>
          <div class="img-box">
            <img src="images/felicidades.jpeg" alt="">
          </div>
        </div>
       
    </section>

    <!-- end offer section -->

   


    <!-- contact section -->

    <section class="contact_section layout_padding">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-5 col-lg-4 offset-md-1 offset-lg-2">
            <div class="form_container">
              <div class="heading_container">
                <h2>
                  entre em contato
                </h2>
              </div>
              <form action="">
                <div>
                  <input type="text" placeholder="Nome Completo " />
                </div>
                <div>
                  <input type="text" placeholder="Celular" />
                </div>
                <div>
                  <input type="email" placeholder="Email" />
                </div>
                <div>
                  <input type="text" class="message-box" placeholder="Message" />
                </div>
                <div class="d-flex ">
                  <button>
                    ENVIAR
                  </button>
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

    <!-- end contact section -->


    <!-- info section -->
    <section class="info_section layout_padding2">
      <div class="container">
        <div class="row info_form_social_row">
          <div class="col-md-8 col-lg-9">
            <div class="info_form">
              <form action="">
                <input type="email" placeholder="Entre seu e-mail">
                <button>
                  <i class="fa fa-arrow-right" aria-hidden="true"></i>
                </button>
              </form>
            </div>
          </div>
          <div class="col-md-4 col-lg-3">

            <div class="social_box">
              
              </a>
              <a href="https://www.instagram.com/papiro_eventoss?igshid=MzRlODBiNWFlZA%3D%3D">
                <i class="fa fa-instagram" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="row info_main_row">
          <div class="col-md-6 col-lg-3">
            <div class="info_links">
              <h4>
                Menu
              </h4>
              <div class="info_links_menu">
                <a href="index.html">
                  Home
                </a>
                <a href="about.html">
                  Sobre
                </a>
                <a href="produtos.html">
                  Produtos
                </a>
                
               
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="info_insta">
              
              <h4>
                LEMBRETE
              </h4>
              <p class="mb-0">
             Do convite a lembrança final o papiro esta com você
              </p>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <h4>
              Entre em contato
            </h4>
            <div class="info_contact">
             
                </span>
              </a>
              <a href="">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  LIGAR +01 1234567890
                </span>
              </a>
              <a href="">
                <i class="fa fa-envelope"></i>
                <span>
                  demo@gmail.com
                </span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- end info_section -->

  </div>

  <!-- footer section -->
  <footer class="container-fluid footer_section">
    <div class="container">
      <div class="col-md-11 col-lg-8 mx-auto">
        <p>
          &copy; <span id="displayYear"></span> web site desing by
          Douglas Israel,Vinicius,Gabriel</a>
        </p>
      </div>
    </div>
  </footer>
  <!-- footer section -->

  <!-- jQery -->
  <script  src="js/jquery-3.4.1.min.js"></script>
  <!-- bootstrap js -->
  <script  src="js/bootstrap.js"></script>
  <!-- slick slider -->
  <script  src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick.min.js"></script>
  <!-- custom js -->
  <script  src="js/custom.js"></script>
  <!-- Google Map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"></script>
  <!-- End Google Map -->

</body>

</html>