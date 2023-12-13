<%--
  Created by IntelliJ IDEA.
  User: sudil
  Date: 12/12/2023
  Time: 2:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact Us</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          integrity="sha512-" crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"/>
    <link rel="icon" type="image/x-icon" href="assets/faviconcirc.png">
    <link href="css/contactus.css" rel="stylesheet">

</head>
<body>
<jsp:include page="navbar.jsp"/>


<%--<div class="bg-background"></div>--%>

<section id="section-wrapper">
    <div class="topic text-center pt-3">
        <h2>We're Here Whenever You Need</h2>
        <p>Stay In Touch With Us! Contact Us For Any Inquiries Or Questions You May Have. </p>
    </div>
    <div class="box-wrapper pt-2">
        <div class="info-wrap">
            <h2 class="info-title">Contact Information</h2>
            <h3 class="info-sub-title">Fill up the form and our Team will get back to you within 24 hours</h3>
            <ul class="info-details">
                <li>
                    <i class="fas fa-phone-alt"></i>
                    <span>Phone:</span> <a href="tel:+ 1235 2355 98">+94 123456789</a>
                </li>
                <li>
                    <i class="fas fa-paper-plane"></i>
                    <span>Email:</span> <a href="mailto:info@yoursite.com">lollipop@gmail.com</a>
                </li>
                <li>
                    <i class="fas fa-globe"></i>
                    <span>Website:</span> <a href="#">lollipop.com</a>
                </li>
            </ul>
            <ul class="social-icons">
                <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
            </ul>
        </div>
        <div class="form-wrap">
            <form action="#" method="POST">
                <h2 class="form-title">Send us a message</h2>
                <div class="form-fields">
                    <div class="form-form">
                        <input type="text" class="fname" placeholder="First Name">
                    </div>
                    <div class="form-form">
                        <input type="text" class="lname" placeholder="Last Name">
                    </div>
                    <div class="form-form">
                        <input type="email" class="email" placeholder="Mail">
                    </div>
                    <div class="form-form">
                        <input type="number" class="phone" placeholder="Phone">
                    </div>
                    <div class="form-form">
                        <textarea name="message" id="" placeholder="Write your message"></textarea>
                    </div>
                </div>
                <input type="submit" value="Send Message" class="submit-button">
            </form>
        </div>
    </div>
    <div class="container faq pt-5">
        <div class="row">
            <div class="col-lg">
                <p class="ask">Frequently Asked Question</p>

            </div>
            <div class="col-lg">
                <div class="containerfaq">

                    <details>
                        <summary>How can I place an online order on your supermarket website?</summary>
                        <div>
                            To place an online order, log in to your account on our website. Browse through the categories, select your items, and add them to your cart. Proceed to checkout, choose delivery or pickup, and complete the payment process. It's that simple!
                        </div>
                    </details>
                    <details>
                        <summary>What payment methods do you accept for online orders?</summary>
                        <div>
                            We are accept only PayPal payments
                        </div>
                    </details>
                    <details>
                        <summary>What is your return and refund policy for online purchases?</summary>
                        <div>
                            Contact our customer service within the specified timeframe for returns. Details on our return policy, including conditions and refund eligibility, can be found in the Returns and Refunds section on our website.
                        </div>
                    </details>
                    <details>
                        <summary> Can I modify or cancel my order after it has been placed?</summary>
                        <div>
                            Unfortunately, orders cannot be modified or canceled through the website once confirmed. Contact our customer service promptly, and they will assist based on the order's status. Please review your order carefully before confirming.
                        </div>
                    </details>
                    <details>
                        <summary>Are there any online-exclusive promotions or discounts available?</summary>
                        <div>
                            Yes, we occasionally offer online-exclusive promotions and discounts. Keep an eye on promotional banners and alerts during your online shopping experience to take advantage of these special offers.
                        </div>
                    </details>
                </div>
            </div>
        </div>
    </div>
</section>


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
