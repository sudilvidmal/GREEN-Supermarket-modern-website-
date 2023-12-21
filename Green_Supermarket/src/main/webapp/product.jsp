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
            <div class="col-md-5">
                <div class="main-img">
                    <img class="img-fluid"
                         src="${requestScope.product_image_path}"
                         alt="ProductS">

                </div>
            </div>
            <div class="col-md-7">
                <div class="main-description px-2">
                    <div class="category text-bold mt-2">
                        Category: ${requestScope.product_category}
                    </div>
                    <div class="product-title text-bold my-3">
                        ${requestScope.product_name}
                    </div>


                    <div class="price-area my-4">
                        <p class="old-price mb-1">
                            <del>Rs 220 /=</del>
                            <span class="old-price-discount text-danger">(20% off)</span></p>
                        <p class="new-price text-bold mb-1">Rs  ${requestScope.product_price}</p>
                        <p class="text-secondary mb-1">(Additional tax may apply on checkout)</p>
                        <div class="instock">
                            <span>In Stock</span>
                        </div>


                    </div>


                    <div class="buttons d-flex my-5">
                        <div class="block">
                            <a href="#" class="shadow btn custom-btn ">Wishlist</a>
                        </div>
                        <div class="block">
                            <button class="shadow btn custom-btn">Add to cart</button>
                        </div>

                        <div class="block quantity">
                            <input type="number" class="form-control" id="cart_quantity" value="1" min="0" max="5"
                                   placeholder="Enter email" name="cart_quantity">
                        </div>

                    </div>


                </div>

                <div class="product-details my-4">
                    <p class="details-title text-color mb-1">Product Details</p>
                    <p class="description"> ${requestScope.product_details} </p>
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

                <div class="delivery my-4">
                    <p class="font-weight-bold mb-0"><span><i class="fa-solid fa-truck"></i></span> <b>Delivery done in
                        3 hours from time of purchase</b></p>
                    <p class="text-secondary">Order now to get this product delivery</p>
                </div>
                <div class="delivery-options my-4">
                    <p class="font-weight-bold mb-0"><span><i class="fa-solid fa-filter"></i></span> <b>Delivery
                        options</b></p>
                    <p class="text-secondary">View delivery options here</p>
                </div>


            </div>
                <!-- Display other product details as needed -->
        </div>
            </div>

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
<%--<script>--%>
<%--    function fetchData(productId) {--%>
<%--        fetch('product_detailsservlet?productId=' + productId)--%>
<%--            .then(response => response.text())--%>
<%--            .then(data => {--%>
<%--                document.getElementById('product_details').innerHTML = data;--%>
<%--            })--%>
<%--            .catch(error => {--%>
<%--                console.error('Error:', error);--%>
<%--            });--%>
<%--    }--%>

<%--    // Call fetchData with the product ID when the page loads--%>
<%--    window.onload = function() {--%>
<%--        // Extract product ID from the URL query parameter--%>
<%--        var urlParams = new URLSearchParams(window.location.search);--%>
<%--        var productId = urlParams.get('productId');--%>
<%--        fetchData(productId);--%>
<%--    };--%>
<%--</script>--%>


</body>

</html>
