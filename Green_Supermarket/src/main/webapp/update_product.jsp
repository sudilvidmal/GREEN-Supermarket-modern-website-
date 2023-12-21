<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/12/2023
  Time: 09:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="update_productServlet" method="post" enctype="multipart/form-data">

    <div class="modal fade" id="update_productmodal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable">

            <div class="modal-content">

                <div class="modal-header">

                    <h5 class="modal-title" id="staticBackdropLabel">Update Product</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>

                </div>

                <div class="modal-body">

                    <div class="mb-3">
                        <label  class="form-label">ID</label>
                        <input class="form-control" type="text"  aria-label="default input example" name="txtpid">
                    </div>
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
                    <div class="mb-3">
                        <label  class="form-label">Product price</label>
                        <input class="form-control" type="text" name="txtpprice" >
                    </div>

                    <label class="form-label">Category</label>
                    <select class="form-select" aria-label="Default select example" style="box-shadow: none" name="txtpcategory" id="display_categoryupdate">
                        <%

                        %>

                    </select>
                    <div class="mb-3">
                        <label  class="form-label">Stock</label>
                        <input class="form-control" type="text"  aria-label="default input example" name="txtstock">
                    </div>

                    <div class="mb-3">
                        <label for="formFile" class="form-label">Insert Image </label>
                        <input class="form-control" type="file" id="formFile" name="productimg">
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
<script>
    function fetchData() {
        fetch('display_categoryServlet')
            .then(response => response.text())
            .then(data => {
                document.getElementById('display_categoryupdate').innerHTML = data;
            })
            .catch(error => {
                console.error('Error:', error);
            });
    }

    // Call the fetchData function to populate the dropdown on page load
    fetchData();
</script>


</body>
</html>
