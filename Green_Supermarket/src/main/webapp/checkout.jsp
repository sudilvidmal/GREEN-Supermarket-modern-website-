<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 10/12/2023
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Checkout</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="icon" type="image/x-icon" href="assets/faviconcirc.png">


</head>
<body>

<div class="container">
    <main>
        <div class="row g-5 mt-3 mb-3">
            <div class="col-md-5 col-lg-4 order-md-last">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span  style="color: #109E28;">Items in your cart</span>
                </h4>
                <ul class="list-group mb-3 cart-scroll" id="display_cart_checkout">

                        <%
                            //cart displaying here
                        %>

                </ul>

                <ul class="list-group">
                    <li class="list-group-item d-flex justify-content-between">
                        <span>Total (LKR)</span>
                        <strong><span id="totalPrice">Rs. 0.00</span></strong>
                    </li>
                </ul>

            </div>

            <div class="col-md-7 col-lg-8">
                <h4 class="mb-3" style="color: #109E28;">Billing address</h4>
                <form id="checkoutForm" action="CheckoutServlet" method="post" class="needs-validation">
                    <div class="row g-3">
                        <div class="col-sm-6">
                            <label for="firstName" class="form-label">First name</label>
                            <input type="text" class="form-control" name="firstName" id="firstName" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Valid first name is required.
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <label for="lastName" class="form-label">Last name</label>
                            <input type="text" class="form-control needs-validation" name="lastName" id="lastName" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Valid last name is required.
                            </div>
                        </div>

                        <div class="col-12">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control needs-validation" name="email" id="email" placeholder="example@example.com" required>
                            <div class="invalid-feedback">
                                Please enter a valid email address for shipping updates.
                            </div>
                        </div>

                        <div class="col-12">

                            <label for="address" class="form-label">Address</label>

                            <input type="text" class="form-control needs-validation" name="address" id="address" placeholder="1234 Main St" required>

                            <div class="invalid-feedback">
                                Please enter your shipping address.
                            </div>
                        </div>

                        <div class="col-12">
                            <label for="address2" class="form-label">Address 2 <span class="text-muted">(Optional)</span></label>
                            <input type="text" class="form-control" name="address2" id="address2" placeholder="Apartment or suite">
                        </div>

                        <div class="col-md-6">
                            <label for="state" class="form-label">State</label>
                            <select class="form-select" name="state" id="state" required>
                                <option value="">Choose...</option>
                                <option value="1">Western</option>
                                <option value="2">Eastern</option>
                                <option value="3">North Central</option>
                                <option value="4">Northern</option>
                                <option value="5">North Western</option>
                                <option value="6">Sabaragamuwa</option>
                                <option value="7">Southern</option>
                                <option value="8">Uva</option>
                                <option value="9">Central</option>

                            </select>
                            <div class="invalid-feedback">
                                Please provide a valid state.
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label for="zip" class="form-label">Zip</label>
                            <input type="text" class="form-control needs-validation" name="zip" id="zip" placeholder="" required>
                            <div class="invalid-feedback">
                                Zip code required.
                            </div>
                        </div>
                    </div>

                    <hr class="my-4">

                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="same-address">
                        <label class="form-check-label" for="same-address">Shipping address is the same as my billing address</label>
                    </div>

                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="save-info">
                        <label class="form-check-label" for="save-info">Save this information for next time</label>
                    </div>

                    <hr class="my-4">

                    <h4 class="mb-3">Payment</h4>

                    <div class="row gy-3">
                            <div id="smart-button-container" style="margin-left: 15%">
                                <div style="text-align: center;">
                                    <div id="paypal-button-container" class="paypal-btn" style="width: 40%;height: auto" ></div>
                                </div>
                            </div>
                    </div>
                    <hr class="my-4">
                </form>
            </div>
        </div>
    </main>
</div>


<script src="https://www.paypal.com/sdk/js?client-id=sb&enable-funding=venmo&currency=USD" data-sdk-integration-source="button-factory"></script>
<script>
    // function initPayPalButton() {
    //     paypal.Buttons({
    //         style: {
    //             shape: 'pill',
    //             color: 'gold',
    //             layout: 'vertical',
    //             label: 'paypal',
    //         },
    //
    //         createOrder: function(data, actions) {
    //             return actions.order.create({
    //                 purchase_units: [{"amount":{"currency_code": "USD", "value": 0.99}}]
    //             });
    //         },
    //
    //         onApprove: function(data, actions) {
    //             return actions.order.capture().then(function(orderData) {
    //
    //                 // Full available details
    //                 console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
    //
    //                 // Show a success message within this page, for example:
    //                 // const element = document.getElementById('paypal-button-container');
    //                 // element.innerHTML = '';
    //
    //                 // element.innerHTML = '<h3>Thank you for your payment!</h3>';
    //                 sendRequestToServlet(orderData);
    //                 window.location.href = 'paymentsuccess.jsp';
    //
    //             });
    //         },
    //
    //         onError: function(err) {
    //             console.log(err);
    //         }
    //     }).render('#paypal-button-container');
    //
    //     function sendRequestToServlet(orderData) {
    //         // Create a new XMLHttpRequest object
    //         var xhr = new XMLHttpRequest();
    //
    //         // Configure it: POST-request for the servlet URL
    //         xhr.open('POST', 'CheckoutServlet', true);
    //
    //         // Set the request header
    //         xhr.setRequestHeader('Content-Type', 'application/json');
    //
    //         // Define what happens on successful data submission
    //         xhr.onload = function() {
    //             if (xhr.status == 200) {
    //                 console.log('Request sent successfully');
    //             } else {
    //                 console.log('Request failed. Status: ' + xhr.status);
    //             }
    //         };
    //
    //         // Send the request with the orderData as JSON
    //         xhr.send(JSON.stringify(orderData));
    //     }
    // }
    //
    // initPayPalButton();

    function initPayPalButton() {
        paypal.Buttons({
            style: {
                shape: 'pill',
                color: 'gold',
                layout: 'vertical',
                label: 'paypal',
            },

            createOrder: function(data, actions) {
                // Fetch the total price from the servlet dynamically
                return fetch('DisplayCartValuesNavbarServlet')
                    .then(response => response.json())
                    .then(data => {
                        // Use the total price from the servlet in the order creation
                        return actions.order.create({
                            purchase_units: [{"amount":{"currency_code": "USD", "value": data.totalPrice2}}]
                        });
                    })
                    .catch(error => console.error('Error fetching total price:', error));
            },

            onApprove: function(data, actions) {
                return actions.order.capture().then(function(orderData) {
                    // Full available details
                    console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));

                    // Show a success message within this page, for example:
                    // const element = document.getElementById('paypal-button-container');
                    // element.innerHTML = '';

                    // element.innerHTML = '<h3>Thank you for your payment!</h3>';
                    sendRequestToServlet(orderData);

                    document.getElementById('checkoutForm').submit();
                    window.location.href = 'paymentsuccess.jsp';
                });
            },

            onError: function(err) {
                console.log(err);
            }
        }).render('#paypal-button-container');

        function sendRequestToServlet(orderData) {
            // Create a new XMLHttpRequest object
            var xhr = new XMLHttpRequest();

            // Configure it: POST-request for the servlet URL
            xhr.open('POST', 'CheckoutServlet', true);

            // Set the request header
            xhr.setRequestHeader('Content-Type', 'application/json');

            // Define what happens on successful data submission
            xhr.onload = function() {
                if (xhr.status == 200) {
                    console.log('Request sent successfully');
                } else {
                    console.log('Request failed. Status: ' + xhr.status);
                }
            };

            // Send the request with the orderData as JSON
            xhr.send(JSON.stringify(orderData));
        }
    }

    initPayPalButton();


    function fetchDataCartCheckout() {
        fetch('DisplayCartItemsInCheckoutServlet')
            .then(response => response.text())
            .then(data => {
                document.getElementById('display_cart_checkout').innerHTML = data;
            })
            .catch(error => {
                console.error('Error:', error);
            });
    }



    // Function to fetch data from the servlet and update the total price
    function updateTotalPrice() {
        // Make an AJAX request to the servlet
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "DisplayCartValuesNavbarServlet", true);
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                // Parse the JSON response
                var jsonResponse = JSON.parse(xhr.responseText);

                // Update the total price in the HTML
                var totalPriceElement = document.getElementById("totalPrice");
                totalPriceElement.textContent = "Rs. " + jsonResponse.totalPrice2.toFixed(2);
            }
        };
        xhr.send();
    }

    window.onload = function () {
        fetchDataCartCheckout();
        updateTotalPrice();
    };



</script>


</body>
</html>
