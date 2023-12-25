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

        <a class="navbar-brand" href="index.jsp">
            <img src="assets/logogreen.png" alt="" width="220" height="35">
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample08"
                aria-controls="navbarsExample08" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse nav-text" id="navbarsExample08">
            <ul class="navbar-nav mx-auto ">

                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="index.jsp">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="allproduct.jsp">Shop All</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="aboutus.jsp">About Us</a>
                </li>
            </ul>

            <div class="header__cart">
                <ul>
                    <jsp:include page="Cart.jsp"/>

                    <li><a href="" data-bs-toggle="modal" data-bs-target="#Cart"><i class="fa fa-shopping-bag"></i> <span id="itemCountSpan">0</span></a></li>
                </ul>
                <div class="header__cart__price">Total: <span id="totalPriceSpan">Rs. 0.00</span></div>
            </div>

            <div class="loginbtn">
                <% if (session.getAttribute("userLoggedIn") != null) { %>
                <%-- If the user is logged in, show the "Sign Out" button --%>
                <button class="glow-on-hover" onclick="logoutUser()">Sign Out</button>
                <% } else { %>
                <%-- If the user is not logged in, show the "Sign Up" button --%>
                <jsp:include page="modalreglog.jsp"/>
                <button class="glow-on-hover" data-bs-toggle="modal" data-bs-target="#staticBackdropLogReg" type="button">Sign up</button>
                <% } %>
            </div>
        </div>
    </div>
</nav>



<script>

    function fetchData() {
        fetch('display_categoryServlet')
            .then(response => response.text())
            .then(data => {
                document.getElementById('display_categorynav').innerHTML = data;
            })
            .catch(error => {
                console.error('Error:', error);
            });
    }

    fetchData();

</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>

        $.ajax({
            url: "DisplayCartValuesNavbarServlet",
            method: "GET",
            dataType: "json",
            success: function (data) {
                
                $("#itemCountSpan").text(data.itemCount2);
                $("#totalPriceSpan").text("Rs. " + data.totalPrice2.toFixed(2));
            },
            error: function (xhr, status, error) {
                console.error("Error fetching cart data: " + error);
            }
        });

        // Function to handle user logout
        function logoutUser() {
            fetch('logout') // URL should match the servlet mapping
                .then(response => {
                    if (response.ok) {
                        // Redirect to the login page after successful logout
                        window.location.href = 'index.jsp';
                    } else {
                        throw new Error('Logout failed');
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    // Handle errors here (e.g., show an error message to the user)
                });
        }

</script>
</body>
</html>
