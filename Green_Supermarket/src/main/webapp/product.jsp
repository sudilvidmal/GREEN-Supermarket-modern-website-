<%--
  Created by IntelliJ IDEA.
  User: sudil
  Date: 12/5/2023
  Time: 3:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
            <%
                // Placeholder for data retrieved from Servlet
                // This will be replaced by actual data from the servlet
            %>

        </div>
    </div>


    <div class="container similar-products my-4">
        <hr>
        <p class="display-5">Similar Products</p>

        <div class="row">
            <div class="col-sm-3 col-md-6 col-lg-4">
                <div class="card mt-3">
                    <div class="card-body text-center">
                        <a href="product.jsp"><img
                                src="https://images.unsplash.com/photo-1633674432402-2f0c8ba69d72?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjM5fHx2ZWdldGFibGVzfGVufDB8fDB8fHww"
                                class="product-image"></a>
                        <h5 class="card-title"><b>vegitable</b></h5>
                        <p class="card-text small">Gannawanam ganin naththan nikan hitapan.</p>
                        <p class="tags">Price Rs 100 /=</p>
                        <a href="https://api.whatsapp.com/send?phone=2348162667912" target="_blank"
                           class="btn btn-success button-text"><i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            Add to cart</a>
                    </div>
                </div>
            </div>

            <div class="col-sm-3 col-md-6 col-lg-4">
                <div class="card mt-3">
                    <div class="card-body text-center">
                        <a href="product.jsp"> <img
                                src="https://images.unsplash.com/photo-1533321942807-08e4008b2025?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dmVnZXRhYmxlc3xlbnwwfHwwfHx8MA%3D%3D"
                                class="product-image"></a>
                        <h5 class="card-title"><b>vegitable</b></h5>
                        <p class="card-text small">Gannawanam ganin naththan nikan hitapan</p>
                        <p class="tags">Price Rs 100 /=</p>
                        <a href="#" class="btn btn-success button-text"><i class="fa fa-shopping-cart"
                                                                           aria-hidden="true"></i> Add to cart</a>
                    </div>
                </div>
            </div>

            <div class="col-sm-3 col-md-6 col-lg-4">
                <div class="card mt-3">
                    <div class="card-body text-center">
                        <a href="product.jsp"> <img
                                src="https://images.unsplash.com/photo-1582284540020-8acbe03f4924?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDh8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8fDA%3D"
                                class="product-image"></a>
                        <h5 class="card-title"><b>vegitable</b></h5>
                        <p class="card-text small">Gannawanam ganin naththan nikan hitapan.</p>
                        <p class="tags">Price Rs 100 /=</p>
                        <a href="#" class="btn btn-success button-text"><i class="fa fa-shopping-cart"
                                                                           aria-hidden="true"></i> Add to cart</a>
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
<script>
    function fetchData() {
        fetch('product_detailsservlet')
            .then(response => response.text())
            .then(data => {
                document.getElementById('product_details').innerHTML = data;
            })
            .catch(error => {
                console.error('Error:', error);
            });
    }

    window.onload = fetchData;
</script>
</html>
