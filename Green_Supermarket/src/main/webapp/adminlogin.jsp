<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/12/2023
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" data-bs-theme="auto">
<head>
    <script src="dashboardassets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

    <link href="dashboardassets/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/sign-in.css">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            width: 100%;
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }

        .btn-bd-primary {
            --bd-violet-bg: #712cf9;
            --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

            --bs-btn-font-weight: 600;
            --bs-btn-color: var(--bs-white);
            --bs-btn-bg: var(--bd-violet-bg);
            --bs-btn-border-color: var(--bd-violet-bg);
            --bs-btn-hover-color: var(--bs-white);
            --bs-btn-hover-bg: #6528e0;
            --bs-btn-hover-border-color: #6528e0;
            --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
            --bs-btn-active-color: var(--bs-btn-hover-color);
            --bs-btn-active-bg: #5a23c8;
            --bs-btn-active-border-color: #5a23c8;
        }

        .bd-mode-toggle {
            z-index: 1500;
        }

        .bd-mode-toggle .dropdown-menu .active .bi {
            display: block !important;
        }
    </style>


    <link href="css/sign-in.css" rel="stylesheet">
</head>
<body class="d-flex align-items-center py-4 bg-body-tertiary">

<main class="form-signin w-100 m-auto">
    <form>
        <img class="mb- w-100" src="images/green-supermarket-high-resolution-logo-black-transparent.png" alt="">
        <h3 class="h3 mt-5 mb-3 fw-normal">Sign In</h3>

        <div class="form-floating mb-1">
            <input type="email" class="form-control" id="adminmail" placeholder="name@example.com">
            <label for="adminmail">Email address</label>
        </div>
        <div class="form-floating mb-1">
            <input type="password" class="form-control" id="adminpass" placeholder="Password">
            <label for="adminpass">Password</label>
        </div>

        <div class="form-check text-start my-3">
            <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
            <label class="form-check-label" for="flexCheckDefault">
                Remember me
            </label>
        </div>
        <button class="btn btn-success w-100 py-2" id="btnlogin" type="submit" onclick="logadmin()">Sign in</button>
        <p class="mt-5 mb-3 text-body-secondary">&copy; lollipop</p>
    </form>
</main>

<script>

    document.getElementById('btnlogin').addEventListener("click", function () {
        logadmin();
    }, false);

    function logadmin() {
        var admail = document.getElementById('adminmail').value;
        var password = document.getElementById('adminpass').value;

        if (admail == "admin" && password == "123") {
            document.location.href = "sample.jsp";
        }
    }
</script>
<script src="dashboardassets/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

