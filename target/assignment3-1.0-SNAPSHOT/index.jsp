<%--
  Created by IntelliJ IDEA.
  User: Мирас
  Date: 18.10.2020
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>CAR market</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.jpg">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
    <link href="https://fonts.googleapis.com/css?family=Kanit:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>

<body>

<nav>
    <div class="logo">
        <a href="index.jsp">CAR<em>market</em></a>
    </div>
    <div class="menu-icon">
        <span></span>
    </div>
</nav>

<div id="video-container">
    <div class="video-overlay"></div>
    <div class="video-content">
        <div class="inner">
            <h1>Welcome to <em>CAR market</em></h1>
            <p>Сar purchase service</p>
            <p>Hundreds of points around the world</p>
            <div class="scroll-icon">
                <a class="scrollTo" data-scrollTo="portfolio" href="#"><img src="img/scroll-icon.png" alt=""></a>
            </div>
        </div>
    </div>
    <video autoplay loop muted>
        <source src="highway-loop.mp4" type="video/mp4" />
    </video>
</div>

<%-- it`s our products to sale with photo --%>
<div class="full-screen-portfolio" id="portfolio">
    <div class="container-fluid">
        <div class="col-md-4 col-sm-6">
            <div class="portfolio-item">
                <div class="thumb">
                    <a href="<%=request.getContextPath()%> + /addToCart">
                        <div class="hover-effect">
                            <div class="hover-content">
                                <h1>Mercedes <em>AMG</em></h1>
                                <p>With Maybach design</p>
                            </div>
                        </div>
                        <div class="image">
                            <img src="img/1grid.jpg">
                        </div></a>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-sm-6">
            <div class="portfolio-item">
                <div class="thumb">
                    <a href="<%=request.getContextPath()%> + /addToCart">
                        <div class="hover-effect">
                            <div class="hover-content">
                                <h1>Porsche <em>911</em></h1>
                                <p>By Trinity Motorsports</p>
                            </div>
                        </div>
                        <div class="image">
                            <img src="img/3grid.jpg">
                        </div></a>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-sm-6">
            <div class="portfolio-item">
                <div class="thumb">
                    <a href="<%=request.getContextPath()%> + /addToCart">
                        <div class="hover-effect">
                            <div class="hover-content">
                                <h1>Ford <em>Mustang</em></h1>
                                <p>Bestseller</p>
                            </div>
                        </div>
                        <div class="image">
                            <img src="img/4grid.jpg">
                        </div></a>
                </div>
            </div>
        </div>

        <footer>
            <div class="container-fluid">
                <div class="col-md-12">
                    <p>Copyright &copy; 2020 </p>
                </div>
            </div>
        </footer>
<%--Menu options--%>
<section class="overlay-menu">
    <div class="container">
        <div class="row">
            <div class="main-menu">
                <ul>
                    <li>
                        <a href="index.jsp">Home</a>
                    </li>
                    <li>
                        <a href="startPage.html">Login</a>
                    </li>
                    <li>
                        <a href="startPage.html">Register</a>
                    </li>
                    <li>
                        <a href="LogoutServlet">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

<script src="js/vendor/bootstrap.min.js"></script>

<script src="js/plugins.js"></script>
<script src="js/main.js"></script>
</body>
</html>
