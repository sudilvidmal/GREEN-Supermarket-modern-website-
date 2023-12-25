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
    <title>Admin Login</title>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

    <link href="dashboardassets/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/sign-in.css">
    <link rel="icon" type="image/x-icon" href="assets/faviconcirc.png">
    <style>

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


        .bd-mode-toggle .dropdown-menu .active .bi {
            display: block !important;
        }
    </style>

    <link href="css/sign-in.css" rel="stylesheet">
</head>
<body class="d-flex align-items-center py-4 bg-body-tertiary">


<main class="form-signin w-100 m-auto">
    <form action="adminonlyloginservlet" method="post">
        <h3 class="h3 mt-5 mb-3 fw-normal">Sign In</h3>

        <div class="form-floating mb-1">
            <input type="email" class="form-control" name="adminmail" id="adminmail" placeholder="name@example.com" required>
            <label for="adminmail">Email address</label>
        </div>
        <div class="form-floating mb-1">
            <input type="password" class="form-control" name="adminpass" id="adminpass" placeholder="Password" required>
            <label for="adminpass">Password</label>
        </div>

        <button class="btn btn-success w-100 py-2" id="btnlogin" type="submit">Sign in</button>
        <p class="mt-5 mb-3 text-body-secondary">&copy; Green Supermarket</p>
    </form>
</main>


<script src="dashboardassets/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

