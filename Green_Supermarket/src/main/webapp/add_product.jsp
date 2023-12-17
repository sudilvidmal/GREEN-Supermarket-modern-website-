<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 11/12/2023
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>

    </style>
</head>
<body>

<form action="add_productServlet" method="post"  enctype="multipart/form-data">

    <div class="modal fade" id="add_productmodal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">

            <div class="modal-content">

                <div class="modal-header">

                    <h5 class="modal-title" id="staticBackdropLabel">Add Product</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>

                </div>

                <div class="modal-body">

                    <div class="mb-3">
                        <label  class="form-label">Name</label>
                        <input class="form-control" type="text"  aria-label="default input example" name="txtpname">
                    </div>
                    <div class="mb-3">
                        <label  class="form-label">Product Details</label>
                        <div class="input-group">
                            <textarea class="form-control" aria-label="Product Details" name="txtpdetails"></textarea>
                        </div>
                    </div>

                    <label class="form-label">Category</label>
                    <select class="form-select" aria-label="Default select example" style="box-shadow: none" name="txtpcategory">
                        <option selected>Open this select menu</option>
                        <option value="Vegetables">Vegetables</option>
                        <option value="Fruits">Fruits</option>
                        <option value="Homeware">Homeware</option>
                        <option value="Stationary">Stationary</option>
                    </select>

                    <div class="mb-3 mt-3">
                        <label  class="form-label">Product Price</label>
                        <input class="form-control" type="text"  aria-label="default input example" name="txtpprice">
                    </div>

                    <div class="mb-3">
                        <label for="formFile" class="form-label">Insert Image </label>
                        <input class="form-control" type="file" id="formFile" name="productimg">
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-success">Save</button>
                </div>
            </div>
        </div>
    </div>

</form>




</body>
</html>
