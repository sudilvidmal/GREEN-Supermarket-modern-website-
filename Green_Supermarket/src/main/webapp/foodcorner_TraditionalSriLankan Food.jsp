<%--
  Created by IntelliJ IDEA.
  User: sudil
  Date: 12/25/2023
  Time: 12:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Food Corner Traditional Sri Lankan Food</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          integrity="sha512-" crossorigin="anonymous" referrerpolicy="no-referrer"/>


    <link rel="stylesheet" type="text/css" href="css/navstyle.css">
    <link href="css/footer.css" rel="stylesheet">

    <link rel="icon" type="image/x-icon" href="assets/faviconcirc.png">
    <link rel="stylesheet" href="./css/product.css">
    <link rel="stylesheet" href="./css/allproduct.css">
</head>
<body>
<jsp:include page="navbar.jsp"/>

<div class="main-content">
    <div class="container my-5">
        <div class="row" id="product_details">
            <div class="col-md-5">
                <div class="main-img">
                    <img class="img-fluid"
                         src="images/9248cb0d-8d44-4070-a68f-5df9dcffe955-scaled.jpeg"
                         alt="ProductS">

                </div>
            </div>
            <div class="col-md-7">
                <div class="main-description px-2">
                    <div class="category text-bold mt-2">
                        Category: Food Corner
                    </div>
                    <div class="product-title text-bold my-3">
                        Traditional Sri Lankan Food
                    </div>


                    <div class="price-area my-4">
                        <p class="old-price mb-1">
                        <p class="new-price text-bold mb-1">Rs 450.00</p>

                        <div class="instock">
                            <span>Available</span>
                        </div>
                    </div>
                </div>

                <div class="product-details my-4">
                    <p class="details-title text-color mb-1">Option Details</p>
                    <p class="description"> Rice and curry<br><br>
                        Hoppers<br><br>
                        Lamprais<br><br>
                    </p>
                </div>

                <div class="row questions bg-light p-3">
                    <div class="col-md-1 icon">
                        <i class="fa-brands fa-rocketchat questions-icon"></i>
                    </div>
                    <div class="col-md-11 text">
                        Have a question about our products at E-Store? Feel free to contact our representatives via live
                        chat or email.
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</div>
</div>
<jsp:include page="feedback.jsp"/>

<jsp:include page="footer.jsp"/>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.slim.js"
        integrity="sha512-docBEeq28CCaXCXN7cINkyQs0pRszdQsVBFWUd+pLNlEk3LDlSDDtN7i1H+nTB8tshJPQHS0yu0GW9YGFd/CRg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>


</body>

</html>

