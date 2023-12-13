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
                                                <div class="col"><h4><b>Cart</b></h4></div>
                                                <div class="col align-self-center text-right text-muted">3 items</div>
                                            </div>
                                        </div>
                                        <div class="row border-top border-bottom">
                                            <div class="row main align-items-center">
                                                <div class="col-2"><img class="img-fluid" src="images/latest-product/1.webp"></div>
                                                <div class="col">
                                                    <div class="row text-muted">Bakery</div>
                                                    <div class="row">Bread</div>
                                                </div>
                                                <div class="col">
                                                    <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a>
                                                </div>
                                                <div class="col">&#8360; 44.00 <i class="fa fa-trash"></i></div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="row main align-items-center">
                                                <div class="col-2"><img class="img-fluid" src="images/latest-product/6.webp"></div>
                                                <div class="col">
                                                    <div class="row text-muted">Fruits</div>
                                                    <div class="row">Avocado</div>
                                                </div>
                                                <div class="col">
                                                    <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a>
                                                </div>
                                                <div class="col">&#8360; 44.00 <i class="fa fa-trash"></i></div>
                                            </div>
                                        </div>
                                        <div class="row border-top border-bottom">
                                            <div class="row main align-items-center">
                                                <div class="col-2"><img class="img-fluid" src="images/latest-product/2.webp"></div>
                                                <div class="col">
                                                    <div class="row text-muted">Oil</div>
                                                    <div class="row">Olive Oil</div>
                                                </div>
                                                <div class="col">
                                                    <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a>
                                                </div>
                                                <div class="col">&#8360; 44.00 <i class="fas fa-trash"></i></div>
                                            </div>
                                        </div>
                                        <div class="back-to-shop"><a href="#">&leftarrow;</a><span class="text-muted">Back to Shopping</span></div>
                                    </div>
                                    <div class="col-lg-4 summary">
                                        <div><h5><b>Summary</b></h5></div>
                                        <hr>
                                        <div class="row">
                                            <div class="col" style="padding-left:0;">ITEMS 3</div>
                                            <div class="col text-right">&#8360; 132.00</div>
                                        </div>
                                        <form>
                                            <p>Shipping</p>
                                            <select><option class="text-muted">Delivery- &#8360;&nbsp;5.00</option></select>

                                        </form>
                                        <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                                            <div class="col">Total Price</div>
                                            <div class="col text-right">&#8360; 137.00</div>
                                        </div>
                                        <button class="btn checkoutbtn">Checkout</button>
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
