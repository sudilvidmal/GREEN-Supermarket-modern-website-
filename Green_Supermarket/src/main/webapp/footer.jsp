<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 04/12/2023
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>footer</title>
    <link rel="stylesheet" type="text/css" href="css/footer.css">
    <style>
        .social-icons a {
            font-size: 24px; /* Adjust the font size as needed */
            margin-right: 15px; /* Adjust the spacing between icons */
            color: white;
        }

        @media (max-width: 576px) {
            .social-icons a {
                font-size: 20px; /* Adjust font size for smaller screens */
            }
        }
    </style>

</head>
<body>
<footer class="text-white text-center text-lg-start bg-dark">
    <div class="container p-4">
        <div class="row">


            <div class="col-sm pt-2 log">
                <a href=""><img src="assets/logowhite.png" class="imglogo2"
                                alt="logo"></a>
                <div class="ft-description">
                    <p class="me-">Your eco-friendly haven for fresh, organic produce.
                        Embracing a healthier, sustainable lifestyle.
                    </p>
                </div>
                <div class="row-2">
                    <div class="abt-us mt-4">
                        <a href="aboutus.jsp" class="p-1">About Us</a>
                        <a href="contactus.jsp" class="p-1">Contact Us</a>
                    </div>
                </div>


            </div>


            <div class="col-sm mt-3">
                <h4 class="mb-3">Products</h4>
                <div class="product-list">
                    <p><a href="allproduct.jsp">Vegetables</a></p>
                    <p><a href="allproduct.jsp">Fruits</a></p>
                    <p><a href="allproduct.jsp">Grocery</a></p>
                    <p><a href="allproduct.jsp">Frozen Food</a></p>
                </div>

            </div>


            <div class="col-sm mt-3 social-icons">
                <h4 class="mb-3">Follow Us</h4>
                <p>Follow us on social media and get the latest updates at your fingertips!</p>
                <a href="https://www.instagram.com/green_super_market" target="_blank" title="Instagram">
                    <i class="fab fa-instagram"></i>
                </a>
                <a href="https://www.facebook.com/green.super.market.nsbm" target="_blank" title="Facebook">
                    <i class="fab fa-facebook"></i>
                </a>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-6 leftdiv">&copy; 2023 Green Supermarket | Designed and developed by Group A 77. </div>
            <div class="col-6 rightdiv"><img
                    src="https://www.paypalobjects.com/webstatic/mktg/logo/pp_cc_mark_37x23.jpg" alt="PayPal Logo"/>
            </div>
        </div>
    </div>

</footer>
</body>
</html>
