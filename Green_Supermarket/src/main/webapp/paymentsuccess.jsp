<%--
  Created by IntelliJ IDEA.
  User: neeth
  Date: 12/19/2023
  Time: 10:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          integrity="sha512-" crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"/>
    <link rel="icon" type="image/x-icon" href="assets/faviconcirc.png">

    <title>Payment Success</title>

</head>
<body>

<div class="container d-flex align-items-center justify-content-center" style="height: 100vh" >

    <div class="row">
        <div class="text-center">
            <h1>Your Order Has Been Received</h1>
            <h3>Thank you for your payment, it’s processing</h3>

            <p>Your order # is: 100000023</p>
            <p>You will receive an order confirmation email with details of your order.</p>

            <div id="countdown" class="mb-3"></div>

            <div class="d-flex justify-content-center">
                <a href="index.jsp" target="" class="btn btn-success" id="redirectButton">Back To Home</a>
            </div>
        </div>
    </div>
</div>


<script>
    let countdown = 4;
    function updateCountdown() {
        const countdownElement = document.getElementById('countdown');

        if (countdown === 0) {
            window.location.href = 'index.jsp';
        } else {
            countdownElement.innerText = `Redirecting in ${countdown} seconds...`;
            countdown--;

            setTimeout(updateCountdown, 1000);
        }
    }

    document.addEventListener('DOMContentLoaded', function () {
        const elementsToAnimate = document.querySelectorAll('.container > .row > div');
        elementsToAnimate.forEach(function (element) {
            element.style.opacity = '0';
            element.style.transform = 'translateY(20px)';
        });

        setTimeout(function () {
            elementsToAnimate.forEach(function (element) {
                element.style.transition = 'opacity 0.5s ease-out, transform 0.5s ease-out';
                element.style.opacity = '1';
                element.style.transform = 'translateY(0)';
            });

            updateCountdown();
        }, 500);
    });
    document.addEventListener('DOMContentLoaded', function () {
        sendEmail();
    });

    function sendEmail() {
        var xhr = new XMLHttpRequest();
        var mail = document.getElementById('sendmail').value; // get the id of the textbox value and replace it with 'sendmail'
        xhr.open('POST', 'SendEmail', true); // Adjust the URL to match your servlet mapping
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    console.log('Email sent successfully.');
                } else {
                    console.error('Error sending email.');
                }
            }
        };
        xhr.send('mail=' + encodeURIComponent(mail)); // Send email as a parameter
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>

</body>
</html>