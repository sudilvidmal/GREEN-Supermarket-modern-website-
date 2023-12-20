<%--
  Created by IntelliJ IDEA.
  User: ayana
  Date: 12/6/2023
  Time: 7:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>




<link rel="stylesheet" href="css/logincss.css">
<link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet"/>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<div class="modal fade" id="staticBackdropLogReg" data-bs-backdrop="static; " data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true" style="backdrop-filter: blur(6px);

        ">
    <div class="modal-dialog modal-lg" style="background-color: transparent; ">
        <div class="modal-content" style="background-color: transparent;border: transparent;">
            <div class="modal-header" style="background-color: transparent;border: transparent">
                <div class="modal-content" style="background-color: transparent;border: transparent;">
                    <div class="bttnchange" style=" ">
                        <button type="button" class="btn-close " data-bs-dismiss="modal" aria-label="Close"
                                style="background-color: white"></button>


                        <div class="modal-body">

                            <div class="rlcontainer">
                                <input type="checkbox" id="flip">
                                <div class="cover">
                                    <div class="front">
                                        <img src="images/image2.gif" alt="">
                                        <div class="text">
                                            <span class="text-1">Shop Fresh</span>
                                            <span class="text-2">Live Fresh</span>

                                        </div>
                                    </div>

                                </div>
                                <div class="forms">
                                    <div class="form-content">
                                        <div class="login-form">
                                            <div class="title">Login</div>
                                            <form id="signinform" action="loginservlet" method="post">
                                                <div class="input-boxes">
                                                    <div class="input-box">
                                                        <i class="fas fa-envelope"></i>
                                                        <input type="text"  name="uemail" placeholder="Enter your email" required>
                                                    </div>
                                                    <div class="input-box">
                                                        <i class="fas fa-lock"></i>
                                                        <input type="password" name="upassword" placeholder="Enter your password" required>
                                                    </div>
                                                    <div class="text"><a href="#">Forgot password?</a></div>
                                                    <div class="button input-box">
                                                        <input type="submit" value="Submit">
                                                    </div>

                                                    <div class="text sign-up-text">Don't have an account? <label for="flip">Sigup now</label></div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="signup-form">
                                            <div class="title">Signup</div>
                                            <form id="signupform" action="signupservlet" method="post">
                                                <div class="input-boxes">
                                                    <div class="input-box">
                                                        <i class="fas fa-user"></i>
                                                        <input type="text" name="uname" placeholder="Enter your name" required>
                                                    </div>
                                                    <div class="input-box">
                                                        <i class="fas fa-phone"></i>
                                                        <input type="tel" name="uphonenumber" placeholder="Mobile Number" pattern="07[0,1,2,5,6,7,8][0-9]{7}" maxlength="10" required>
                                                    </div>
                                                    <div class="input-box">
                                                        <i class="fas fa-envelope"></i>
                                                        <input type="text" name="uemail" placeholder="Enter your email" required>
                                                    </div>
                                                    <div class="input-box">
                                                        <i class="fas fa-lock"></i>
                                                        <input type="password" name="upassword" placeholder="Enter your password" required>
                                                    </div>
                                                    <div class="button input-box">
                                                        <input type="submit" onclick="submitForm()">
                                                    </div>
                                                    <script>
                                                        function submitForm() {
                                                            $.ajax({
                                                                url: '/signupservlet',
                                                                type: 'POST',
                                                                data: $('#signupform').serialize(),
                                                                success: function (response) {
                                                                    if (response === 'success') {
                                                                        // Display an alert indicating successful registration
                                                                        alert('SignUp Successful!');
                                                                    } else if (response === 'error') {
                                                                        // Handle the error case if needed
                                                                        alert('SignUp failed. Please try again.');
                                                                    }
                                                                },
                                                                error: function () {
                                                                    // Handle the AJAX error case if needed
                                                                    alert('Something went wrong. Please try again.');
                                                                }
                                                            });
                                                        }
                                                    </script>
                                                    <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
                                                </div>
                                            </form>
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
