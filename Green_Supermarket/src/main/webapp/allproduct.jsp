<%--
  Created by IntelliJ IDEA.
  User: sudil
  Date: 12/5/2023
  Time: 7:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Product</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          integrity="sha512-" crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"/>


    <link href="css/allproduct.css" rel="stylesheet">

    <link rel="icon" type="image/x-icon" href="assets/faviconcirc.png">

</head>
<body>
<jsp:include page="navbar.jsp"/>


<section class="page-section ">
    <div class="container">
        <div class="row">

            <div class="col-lg-3 blog-form custom-sidebar">


                <h2 class="blog-sidebar-title"><b>Categories</b></h2>
                <hr/>

                <a href="#"><p class="blog-sidebar-list">Vegetable</p></a>
                <a href="#"><p class="blog-sidebar-list">Fruits</p></a>
                <a href="#"><p class="blog-sidebar-list">Meat</p></a>
                <a href="#"><p class="blog-sidebar-list">Fish</p></a>
                <a href="#"><p class="blog-sidebar-list">Beverages</p></a>
                <a href="#"><p class="blog-sidebar-list">Chilled</p></a>
                <a href="#"><p class="blog-sidebar-list">Frozen Food</p></a>
                <a href="#"><p class="blog-sidebar-list">Grocery</p></a>
                <a href="#"><p class="blog-sidebar-list">Homeware</p></a>

            </div>


            <div class="col-lg-9" style="padding-left: 30px;">
                <div class="row">
                    <div class="col results-title">
                        Showing all 9 results
                    </div>

                    <div class="col">
                        <select class="form-control custom-select">
                            <option value="">Default Sorting</option>
                            <option value="popularity">Sorting by popularity</option>
                            <option value="average">Sorting by average</option>
                            <option value="latest">Sorting by latest</option>
                            <option value="low">Sorting by low</option>
                            <option value="high">Sorting by high</option>
                        </select>
                    </div>

                </div>


                <div class="row">
                    <div class="col-sm-3 col-md-6 col-lg-4">
                        <div class="card mt-3">
                            <div class="card-body text-center">
                                <a href="product.jsp"><img
                                        src="https://images.unsplash.com/photo-1633674432402-2f0c8ba69d72?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjM5fHx2ZWdldGFibGVzfGVufDB8fDB8fHww"
                                        class="product-image"></a>
                                <h5 class="card-title"><b>Vegetable</b></h5>
                                <p class="card-text small">Product description</p>
                                <p class="tags">Price <span>Rs 100/=</span></p>
                                <a href="#" target="_blank" class="btn btn-success button-text"><i
                                        class="fa fa-shopping-cart" aria-hidden="true"></i> Add to cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3 col-md-6 col-lg-4">
                        <div class="card mt-3">
                            <div class="card-body text-center">
                                <a href="product.jsp"> <img
                                        src="https://images.unsplash.com/photo-1533321942807-08e4008b2025?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dmVnZXRhYmxlc3xlbnwwfHwwfHx8MA%3D%3D"
                                        class="product-image"></a>
                                <h5 class="card-title"><b>Vegetable</b></h5>
                                <p class="card-text small">Product description</p>
                                <p class="tags">Price <span>Rs 100/=</span></p>
                                <a href="#" class="btn btn-success button-text"><i class="fa fa-shopping-cart"
                                                                                   aria-hidden="true"></i> Add to
                                    cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3 col-md-6 col-lg-4">
                        <div class="card mt-3">
                            <div class="card-body text-center">
                                <a href="product.jsp"> <img
                                        src="https://images.unsplash.com/photo-1582284540020-8acbe03f4924?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDh8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8fDA%3D"
                                        class="product-image"></a>
                                <h5 class="card-title"><b>Vegetable</b></h5>
                                <p class="card-text small">Product description</p>
                                <p class="tags"> Price <span>Rs 100/=</span></p>
                                <a href="#" class="btn btn-success button-text"><i class="fa fa-shopping-cart"
                                                                                   aria-hidden="true"></i> Add to
                                    cart</a>
                            </div>
                        </div>
                    </div>


                </div>


                <div class="row">
                    <div class="col-sm-3 col-md-6 col-lg-4">
                        <div class="card mt-3">
                            <div class="card-body text-center">
                                <a href="product.jsp"> <img
                                        src="https://images.unsplash.com/photo-1590868309235-ea34bed7bd7f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8fDA%3D"
                                        class="product-image"></a>
                                <h5 class="card-title"><b>Vegetable</b></h5>
                                <p class="card-text small">Product description</p>
                                <p class="tags">Price <span>Rs 100/=</span></p>
                                <a href="#" class="btn btn-success button-text"><i class="fa fa-shopping-cart"
                                                                                   aria-hidden="true"></i> Add to
                                    cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3 col-md-6 col-lg-4">
                        <div class="card mt-3">
                            <div class="card-body text-center">
                                <a href="product.jsp"><img
                                        src="https://images.unsplash.com/photo-1567539549213-cc1697632146?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjUxfHx2ZWdldGFibGVzfGVufDB8fDB8fHww"
                                        class="product-image"></a>
                                <h5 class="card-title"><b>Vegetable</b></h5>
                                <p class="card-text small">Product description</p>
                                <p class="tags">Price <span>Rs 100/=</span></p>
                                <a href="#" class="btn btn-success button-text"><i class="fa fa-shopping-cart"
                                                                                   aria-hidden="true"></i> Add to
                                    cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3 col-md-6 col-lg-4">
                        <div class="card mt-3">
                            <div class="card-body text-center">
                                <a href="product.jsp"> <img
                                        src="https://images.unsplash.com/photo-1565685225009-fc85d9109c80?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjk0fHx2ZWdldGFibGVzfGVufDB8fDB8fHww"
                                        class="product-image"></a>
                                <h5 class="card-title"><b>Vegetable</b></h5>
                                <p class="card-text small">Product description</p>
                                <p class="tags">Price <span>Rs 100/=</span></p>
                                <a href="#" class="btn btn-success button-text"><i class="fa fa-shopping-cart"
                                                                                   aria-hidden="true"></i> Add to
                                    cart</a>
                            </div>
                        </div>
                    </div>

                </div>


                <div class="row">
                    <div class="col-sm-3 col-md-6 col-lg-4">
                        <div class="card mt-3">
                            <div class="card-body text-center">
                                <a href="product.jsp"><img
                                        src="https://images.unsplash.com/photo-1553536645-f83758b55d23?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzF8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8fDA%3D"
                                        class="product-image"></a>
                                <h5 class="card-title"><b>Vegetable</b></h5>
                                <p class="card-text small">Product description</p>
                                <p class="tags">Price <span>Rs 100/=</span></p>
                                <a href="#" class="btn btn-success button-text"><i class="fa fa-shopping-cart"
                                                                                   aria-hidden="true"></i> Add to
                                    cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3 col-md-6 col-lg-4">
                        <div class="card mt-3">
                            <div class="card-body text-center">
                                <a href="product.jsp"><img
                                        src="https://images.unsplash.com/photo-1567375698348-5d9d5ae99de0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDZ8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8fDA%3D"
                                        class="product-image"></a>
                                <h5 class="card-title"><b>Vegetable</b></h5>
                                <p class="card-text small">Product description</p>
                                <p class="tags">Price <span>Rs 100/=</span></p>
                                <a href="#" class="btn btn-success button-text"><i class="fa fa-shopping-cart"
                                                                                   aria-hidden="true"></i> Add to
                                    cart</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3 col-md-6 col-lg-4">
                        <div class="card mt-3">
                            <div class="card-body text-center">
                                <a href="product.jsp"><img
                                        src="https://images.unsplash.com/photo-1449300079323-02e209d9d3a6?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjR8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8fDA%3D"
                                        class="product-image"></a>
                                <h5 class="card-title"><b>Vegetable</b></h5>
                                <p class="card-text small">Product description </p>
                                <p class="tags">Price <span>Rs 100/=</span> </p>
                                <a href="#" class="btn btn-success button-text"><i class="fa fa-shopping-cart"
                                                                                   aria-hidden="true"></i> Add to
                                    cart</a>
                            </div>
                        </div>
                    </div>

                </div>


            </div>


        </div>
    </div>
</section>


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
