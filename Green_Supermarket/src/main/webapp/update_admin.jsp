<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/12/2023
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <style>
        .form-control:focus{
            box-shadow: none;
        }
    </style>
</head>
<body>

<form action="update_adminServlet" method="post">

    <div class="modal fade" id="update_adminmodal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable">

            <div class="modal-content">

                <div class="modal-header">

                    <h5 class="modal-title" id="staticBackdropLabel">Update Admin</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <div class="modal-body">

                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">ID</label>
                        <input class="form-control" type="text" aria-label="default input example" name="txtid">
                    </div>

                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">First Name</label>
                        <input class="form-control" type="text" aria-label="default input example" name="txtfname">
                    </div>

                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Last Name</label>
                        <input class="form-control" type="text"  aria-label="default input example" name="txtlname">
                    </div>

                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="exampleFormControlInput1" name="txtemail">
                    </div>

                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Username</label>
                        <input class="form-control" type="text" aria-label="default input example" name="txtusername">
                    </div>

                    <label for="inputPassword5" class="form-label">Password</label>
                    <input type="password" id="inputPassword5" class="form-control" aria-describedby="passwordHelpBlock" name="txtpassword">

                    <div id="passwordHelpBlock" class="form-text">
                        Your password must be 8-20 characters long, contain letters and numbers, and must not contain spaces, special
                        characters, or emoji.
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-success">Update</button>
                </div>
            </div>
        </div>
    </div>

</form>




</body>
</html>
