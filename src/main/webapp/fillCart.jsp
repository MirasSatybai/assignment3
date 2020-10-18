<%--
  Created by IntelliJ IDEA.
  User: Мирас
  Date: 18.10.2020
  Time: 21:33
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
<div class="text-content">
    <form action="<%=request.getContextPath()%> + /addToCart" method="post">
        <h2>You can fill your cart here</h2>
        <p> To add car to your cart select options</p>
        <select name="carN">
            <option>Mercedes</option>
            <option>Porshe</option>
            <option>Mustang</option>
        </select><br><br>

        <input type="text" name="quan"></input><br><br>
        <input type="submit">
    </form>
</div>

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
