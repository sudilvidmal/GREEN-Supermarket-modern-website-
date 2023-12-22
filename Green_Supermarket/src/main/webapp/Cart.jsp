<%--
  Created by IntelliJ IDEA.
  User: Ayana
  Date: 12/13/2023
  Time: 12:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet"/>
<link rel="stylesheet" href="css/cartcss.css">


<div class="modal fade" id="Cart" data-bs-backdrop="static; " data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true" style="backdrop-filter: blur(6px);

        ">
    <div class="modal-dialog modal-xl" style="background-color: transparent; ">
        <div class="modal-content" style="background-color: transparent;border: transparent;">
            <div class="modal-header" style="background-color: transparent;border: transparent">
                <div class="modal-content" style="background-color: transparent;border: transparent;">
                    <div class="bttnchange" style=" ">
                        <button type="button" class="btn-close " data-bs-dismiss="modal" aria-label="Close"
                                style="background-color: white"></button>

                        <div class="modal-body">
                            <div class="cartcard">
                                <div class="row">
                                    <div class="col-lg-8 cart">
                                        <div class="title">
                                            <div class="row">
                                                <div class="col-12"><h4><b>Cart</b></h4></div>
                                            </div>
                                        </div>

                                        <div id="display_cart">

                                            <%
                                                // Placeholder for data retrieved from Servlet
                                                // This will be replaced by actual data from the servlet
                                            %>

                                        </div>

                                        <div class="row">
                                            <div class="col-6 d-flex justify-content-start">
                                                <div class="back-to-shop">
                                                    <a href="allproduct.jsp">&leftarrow; <span class="text-muted"> Back to Shopping</span></a>
                                                </div>
                                            </div>

                                            <div class="col-6 d-flex justify-content-end">

                                                <div class="back-to-shop">
                                                    <a href="checkout.jsp" ><span
                                                            class="text-muted">Proceed To Checkout </span> &rightarrow;</a>
                                                </div>
                                            </div>
                                        </div>


                                    </div>

                                    <div class="col-lg-4 summary" id="display_cart_items">

                                        <%
                                            // Placeholder for data retrieved from Servlet
                                            // This will be replaced by actual data from the servlet
                                        %>

                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>

    function fetchDataCart() {
        // Create an object to store options for the fetch request
        const options = {
            method: 'POST', // Set the HTTP method to POST
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded', // Adjust the content type if needed
            },
            // Add any additional headers if necessary

            // Add the request body if you need to send data with the POST request
            // body: 'key1=value1&key2=value2'
        };

        // Make the fetch request with the specified options
        fetch('DisplayCartServlet', options)
            .then(response => response.text())
            .then(data => {
                // Handle the response data as needed
                document.getElementById('display_cart').innerHTML = data;
            })
            .catch(error => {
                // Handle errors
                console.error('Error:', error);
            });
    }

    function fetchDataCartItems() {
        // Create an object to store options for the fetch request
        const options = {
            method: 'POST', // Set the HTTP method to POST
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded', // Adjust the content type if needed
            },
            // Add any additional headers if necessary

            // Add the request body if you need to send data with the POST request
            // body: 'key1=value1&key2=value2'
        };

        // Make the fetch request with the specified options
        fetch('DisplayCartItemsPriceServlet', options)
            .then(response => response.text())
            .then(data => {
                // Handle the response data as needed
                document.getElementById('display_cart_items').innerHTML = data;
            })
            .catch(error => {
                // Handle errors
                console.error('Error:', error);
            });
    }

    function fetchDataCartCombined() {
        fetchDataCart();
        fetchDataCartItems();
    }

    window.onclick = fetchDataCartCombined;

</script>