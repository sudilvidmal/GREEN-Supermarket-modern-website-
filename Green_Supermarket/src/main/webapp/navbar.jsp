<%--
  Created by IntelliJ IDEA.
  User: neeth
  Date: 12/3/2023
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>navbar</title>


</head>

<body>

<div class="header__top">
    <div class="container">
        <div class="row">
            <div class="col-8">
                <div class="header__top__left">
                    <ul>
                        <li><i class="fa fa-envelope"></i> hello@lolipop.com</li>
                        <li>Christmas Sale🎁 - Upto 50% Off!</li>
                    </ul>
                </div>
            </div>

            <div class="col-4">
                <div class="header__top__right ">
                    <div class="header__top__right__auth">
                        <a href="#"><i class="fa fa-user"></i> Login</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<nav class="navbar navbar-expand-lg nav-bgcolor shadow " aria-label="Tenth navbar example">

    <div class="container">

        <a class="navbar-brand" href="#">
            <img src="assets/logowhite.png" alt="" width="220" height="35">
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample08"
                aria-controls="navbarsExample08" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse nav-text" id="navbarsExample08">
            <ul class="navbar-nav mx-auto ">

                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Shop All</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact us</a>
                </li>

            </ul>
        </div>

        <div class="header__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">total: <span>Rs. 1500.00</span></div>
        </div>
    </div>
</nav>


</body>

</html>
