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
    <title></title>
    <style>

    </style>
</head>
<body>

<form action="delete_productServlet" method="post">

    <div class="modal fade" id="delete_productmodal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">

            <div class="modal-content">

                <div class="modal-header">

                    <h5 class="modal-title" id="staticBackdropLabel">Delete Product</h5>
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

                    <label class="form-label">Category</label>
                    <select class="form-select" aria-label="Default select example" style="box-shadow: none" name="pcateg" id="display_categorydelete">
                       <%

                       %>
                    </select>



                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-success">Delete</button>
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
                document.getElementById('display_categorydelete').innerHTML = data;
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
