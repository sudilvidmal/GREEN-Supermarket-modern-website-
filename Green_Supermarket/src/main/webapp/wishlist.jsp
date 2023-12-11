<%--
  Created by IntelliJ IDEA.
  User: Ayana
  Date: 12/11/2023
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" href="css/wishlistcss.css">
<div class="modal fade" id="modalwishlist" data-bs-backdrop="static; " data-bs-keyboard="false" tabindex="-1"
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

                            <div class="cart-wrap">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="main-heading mb-10">My wishlist</div>
                                            <div class="table-wishlist">
                                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                                    <thead>
                                                    <tr>
                                                        <th width="45%">Product Name</th>
                                                        <th width="15%">Unit Price</th>
                                                        <th width="15%">Stock Status</th>
                                                        <th width="15%"></th>
                                                        <th width="10%"></th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td width="45%">
                                                            <div class="display-flex align-center">
                                                                <div class="img-product">
                                                                    <img src="https://www.91-img.com/pictures/laptops/asus/asus-x552cl-sx019d-core-i3-3rd-gen-4-gb-500-gb-dos-1-gb-61721-large-1.jpg" alt="" class="mCS_img_loaded">
                                                                </div>
                                                                <div class="name-product">
                                                                    Apple iPad Mini
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td width="15%" class="price">$110.00</td>
                                                        <td width="15%"><span class="in-stock-box">In Stock</span></td>
                                                        <td width="10%"><button class="round-black-btn small-btn">Add to Cart</button></td>
                                                        <td width="10%" class="text-center"><a href="#" class="trash-icon"><i class="far fa-trash-alt"></i></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td width="45%">
                                                            <div class="display-flex align-center">
                                                                <div class="img-product">
                                                                    <img src="https://www.91-img.com/pictures/laptops/asus/asus-x552cl-sx019d-core-i3-3rd-gen-4-gb-500-gb-dos-1-gb-61721-large-1.jpg" alt="" class="mCS_img_loaded">
                                                                </div>
                                                                <div class="name-product">
                                                                    Apple iPad Mini
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td width="15%" class="price">$110.00</td>
                                                        <td width="15%"><span class="in-stock-box">In Stock</span></td>
                                                        <td width="15%"><button class="round-black-btn small-btn">Add to Cart</button></td>
                                                        <td width="10%" class="text-center"><a href="#" class="trash-icon"><i class="far fa-trash-alt"></i></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td width="45%">
                                                            <div class="display-flex align-center">
                                                                <div class="img-product">
                                                                    <img src="https://www.91-img.com/pictures/laptops/asus/asus-x552cl-sx019d-core-i3-3rd-gen-4-gb-500-gb-dos-1-gb-61721-large-1.jpg" alt="" class="mCS_img_loaded">
                                                                </div>
                                                                <div class="name-product">
                                                                    Apple iPad Mini
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td width="15%" class="price">$110.00</td>
                                                        <td width="15%"><span class="in-stock-box">In Stock</span></td>
                                                        <td width="15%"><button class="round-black-btn small-btn">Add to Cart</button></td>
                                                        <td width="10%" class="text-center"><a href="#" class="trash-icon"><i class="far fa-trash-alt"></i></a></td>

                                                    </tr>
                                                    </tbody>
                                                </table>
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

    </div>
</div>
