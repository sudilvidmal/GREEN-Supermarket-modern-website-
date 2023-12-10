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
    <link rel="stylesheet" type="text/css" href="css/navstyle.css">

</head>

<body>

<nav class="navbar navbar-expand-lg bg-light shadow fixed-top" aria-label="Tenth navbar example">

    <div class="container">

        <a class="navbar-brand" href="#">
            <img src="assets/logogreen.png" alt="" width="220" height="35">
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

                    <a class="nav-link" href="#mailModal" data-bs-toggle="modal" data-bs-target="#mailModal">Search <i
                            class="fa-solid fa-magnifying-glass"></i></a>

                </li>
            </ul>

            <div class="header__cart">
                <ul>
                    <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                    <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                </ul>
                <div class="header__cart__price">Total: <span>Rs. 1500.00</span></div>
            </div>

            <div class="loginbtn">
                <div> <jsp:include page="modalreglog.jsp"/> </div>
                <button class="glow-on-hover" data-bs-toggle="modal" data-bs-target="#staticBackdropLogReg" type="button">Sign up</button>
            </div>
        </div>
    </div>
</nav>

<div class="modal fade" tabindex="-1" role="dialog" id="mailModal">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content borer-top border-warning">
            <div class="modal-body text-center">
                <div class="mt-4 py-2">
                    <h4 class="h5">What are you looking for?</h4>
                    <p class="px-4 pb-0 mb-1 text-secondary">We have the finest and freshest!</p>
                </div>
                <div class="p-3">
                    <div class="d-flex justify-content-evenly">

                        <div class="flex-grow-1 mx-1">
                            <select class="form-select rounded-2 searchboxselect" aria-label="Select category">
                                <option value="fruits">Fruits</option>
                                <option value="veges">Vegetables</option>
                                <option value="herbs">Herbs</option>
                                <option value="meats">Meats</option>
                            </select>
                        </div>
                        <div class="flex-grow-1 mx-1 searchtextinput">
                            <input type="search" placeholder="Green apple" class="form-control rounded-2 ">
                        </div>
                        <div class="flex-grow-1 mx-1">
                            <button type="button" class="btn btn-warning text-white rounded-2 w-100">Search</button>
                        </div>
                    </div>
                </div>
                <a type="button" class="text-secondary rounded-2 w-100" data-bs-dismiss="modal"><small>I don't want to
                    search, just explore</small></a>
            </div>
        </div>
    </div>
</div>

</body>
</html>
