<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>

    <title>Green SuperMarket</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          integrity="sha512-" crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"/>

    <link rel="stylesheet" type="text/css" href="css/homecss.css">

    <link rel="icon" type="image/x-icon" href="assets/faviconcirc.png">
</head>
<body>

<jsp:include page="navbar.jsp"/>
<main>
    <div class="main-content">
        <div class="heroarea">

            <div id="herocarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/slide6.png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="images/slide5.png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="images/slide4.png" class="d-block w-100" alt="...">
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div class="item-container1">
                <div class="item1"><i class="far fa-clock"></i>Swift Delivery</div>
                <div class="item1"><i class="far fa-paper-plane"></i>Doorstep Assurance</div>
                <div class="item1"><i class="far fa-check-circle"></i>Freshness Pledge</div>
                <div class="item1"><i class="far fa-hand-pointer"></i>Freshness Pledge</div>
                <div class="item1"><i class="far fa-thumbs-up"></i>Exciting Offers</div>
            </div>
        </div>
    </div>

    <div class="text-center pt-5 container">
        <h1>Our <span style="color: #109E28; font-weight: 600;">top selling</span> products</h1>
        <h5>Explore our special discounts and grab more discounts!</h5>
        <hr class="mx-auto" style="width: 50%;">
    </div>

    <div class="container mt-5">
        <div class="row">
            <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active" data-bs-interval="5000">
                        <div class="row">
                            <div class="col-lg-3 card-items p-4">
                                <div class="card shadow mx-auto">
                                    <img src="images/latest-product/6.webp" class="card-img-top" alt="...">
                                    <div class="card-body text-center">
                                        <h5 class="card-title">Avocado</h5>
                                        <p class="card-text">Creamy and nutritious, our ripe avocados are perfect for
                                            salads, spreads, or a healthy snack.</p>
                                        <a href="#" class="btn btn-warning"><i class="fa-solid fa-cart-shopping"></i>
                                            Add to cart</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 card-items p-4">
                                <div class="card shadow mx-auto">
                                    <img src="images/latest-product/8.webp" class="card-img-top" alt="...">
                                    <div class="card-body text-center">
                                        <h5 class="card-title">Dark Chocolate Bars</h5>
                                        <p class="card-text">Fair-trade sourced for guilt-free satisfaction with every
                                            heavenly bite.</p>
                                        <a href="#" class="btn btn-warning"><i class="fa-solid fa-cart-shopping"></i>
                                            Add to cart</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 card-items p-4">
                                <div class="card shadow mx-auto">
                                    <img src="images/latest-product/4.webp" class="card-img-top" alt="...">
                                    <div class="card-body text-center">
                                        <h5 class="card-title">Vibrant Olives</h5>
                                        <p class="card-text">Savor the taste of our plump, brine-cured olives. Perfect
                                            for salads or appetizers.</p>
                                        <a href="#" class="btn btn-warning"><i class="fa-solid fa-cart-shopping"></i>
                                            Add to cart</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 card-items p-4">
                                <div class="card shadow mx-auto" style="">
                                    <img src="images/latest-product/2.webp" class="card-img-top" alt="...">
                                    <div class="card-body text-center">
                                        <h5 class="card-title">Extra Virgin Olive Oil</h5>
                                        <p class="card-text">Premium, cold-pressed olive oil—crafted for its rich flavor
                                            and health benefits.</p>
                                        <a href="#" class="btn btn-warning"><i class="fa-solid fa-cart-shopping"></i>
                                            Add to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="carousel-item" data-bs-interval="5000">
                        <div class="row">
                            <div class="col-lg-3 card-items p-4">
                                <div class="card shadow mx-auto" style="">
                                    <img src="images/latest-product/1.webp" class="card-img-top" alt="...">
                                    <div class="card-body text-center">
                                        <h5 class="card-title">Whole Grain Bread</h5>
                                        <p class="card-text">Satisfy your cravings with our hearty whole-grain bread -
                                            Perfect slice every time.</p>
                                        <a href="#" class="btn btn-warning"><i class="fa-solid fa-cart-shopping"></i>
                                            Add to cart</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 card-items p-4">
                                <div class="card shadow mx-auto" style="">
                                    <img src="images/latest-product/5.webp" class="card-img-top" alt="...">
                                    <div class="card-body text-center">
                                        <h5 class="card-title">Free-Range Eggs</h5>
                                        <p class="card-text">Enjoy the rich, golden yolks of our free-range eggs—sourced
                                            from local farms .</p>
                                        <a href="#" class="btn btn-warning"><i class="fa-solid fa-cart-shopping"></i>
                                            Add to cart</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 card-items p-4">
                                <div class="card shadow mx-auto" style="">
                                    <img src="images/latest-product/7.webp" class="card-img-top" alt="...">
                                    <div class="card-body text-center">
                                        <h5 class="card-title">Organic Yogurt</h5>
                                        <p class="card-text">Indulge in the velvety texture of our organic
                                            yogurt—perfect for breakfast or snacks.</p>
                                        <a href="#" class="btn btn-warning"><i class="fa-solid fa-cart-shopping"></i>
                                            Add to cart</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 card-items p-4">
                                <div class="card shadow mx-auto" style="">
                                    <img src="images/latest-product/3.webp" class="card-img-top" alt="...">
                                    <div class="card-body text-center">
                                        <h5 class="card-title">Arabica Coffee Beans</h5>
                                        <p class="card-text">Awaken your senses with our premium Arabica coffee
                                            beans—sourced and expertly roasted.</p>
                                        <a href="#" class="btn btn-warning"><i class="fa-solid fa-cart-shopping"></i>
                                            Add to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<div class="container-fluid pb-2 pt-5 " >


    <div class="row  g-2 mx-auto">
        <div class=" col-sm-12 col-md-12 col-lg-4 pb-2">
            <a href="index.jsp"> <div class="card text-white card1 img-fluid ">
                 <img src="images/snacks.webp" class="card-img" alt="img" style="width: auto; height: 509px">
                <div class="card-img-overlay">
                    <h5 class="card-title">SNACKS</h5>
                </div>
            </div></a>
        </div>
        <div class="col-sm-12 col-md-12 col-lg-4 pb-2">
            <a href="index.jsp"> <div class="card text-white card2 img-fluid">
                <img src="images/snacks.webp" class="card-img" alt="img" style="width: auto; height: 509px">
                <div class="card-img-overlay">
                    <h5 class="card-title">SNACKS</h5>
                </div>
            </div></a>
        </div>

        <div class="col-sm-12 col-md-12 col-lg-4 ">
            <div class="row mb-2 g-2 smalltile-row">
                <div class="col-6">
                    <a href="index.jsp"> <div class="card text-white card3 img-fluid">
                        <img src="images/snacks.webp" class="card-img" alt="img" style="height: 250px">
                        <div class="card-img-overlay">
                            <h5 class="card-title">SNACKS</h5>
                        </div>
                    </div></a>
                </div>
                <div class="col-6">
                    <a href="index.jsp"> <div class="card text-white card4">
                        <img src="images/snacks.webp" class="card-img" alt="img" style="height: 250px">
                        <div class="card-img-overlay">
                            <h5 class="card-title">SNACKS</h5>
                        </div>
                    </div></a>
                </div>

            </div>

            <div class="row smalltile-row g-2" >
                <div class="col-6" >
                    <a href="index.jsp"> <div class="card text-white card5">
                        <img src="images/snacks.webp" class="card-img" alt="img"style="height: 250px" >
                        <div class="card-img-overlay">
                            <h5 class="card-title">SNACKS</h5>
                        </div>
                    </div></a>
                </div>
                <div class="col-6">
                    <a href="index.jsp"> <div class="card text-white card6">
                        <img src="images/snacks.webp" class="card-img" alt="img"style="height: 250px">
                        <div class="card-img-overlay">
                            <h5 class="card-title">SNACKS</h5>
                        </div>
                    </div></a>
                </div>
            </div>

        </div>
    </div>
</div>


<jsp:include page="feedback.jsp"/>

<jsp:include page="footer.jsp"/>


<script src="js/main.js"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>

</body>
</html>
