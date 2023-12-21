<%--
  Created by IntelliJ IDEA.
  User: sudil
  Date: 12/5/2023
  Time: 7:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Product</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
          integrity="sha512-" crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"/>


    <link href="css/allproduct.css" rel="stylesheet">

    <link rel="icon" type="image/x-icon" href="assets/faviconcirc.png">

</head>
<body>
<jsp:include page="navbar.jsp"/>


<section class="page-section ">
    <div class="container">
        <div class="row">

            <div class="col-lg-3 blog-form custom-sidebar">


                <h2 class="blog-sidebar-title"><b>Categories</b></h2>
                <hr/>
                <div id="display_category">
                <%

                %>
            </div>

            </div>


            <div class="col-lg-9" style="padding-left: 30px;">
                <div class="row">
                    <div class="col results-title">
                        Showing all 9 results
                    </div>

                    <div class="col">
                        <select class="form-control custom-select">
                            <option value="">Default Sorting</option>
                            <option value="popularity">Sorting by popularity</option>
                            <option value="average">Sorting by average</option>
                            <option value="latest">Sorting by latest</option>
                            <option value="low">Sorting by low</option>
                            <option value="high">Sorting by high</option>
                        </select>
                    </div>

                </div>


                <div class="row" id="display_cardproduct">



                    <%
                        // Placeholder for data retrieved from Servlet
                        // This will be replaced by actual data from the servlet

                    %>



                </div>

            </div>


        </div>
    </div>
</section>


<jsp:include page="feedback.jsp"/>

<jsp:include page="footer.jsp"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.slim.js"
        integrity="sha512-docBEeq28CCaXCXN7cINkyQs0pRszdQsVBFWUd+pLNlEk3LDlSDDtN7i1H+nTB8tshJPQHS0yu0GW9YGFd/CRg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
  

<script>

    function fetchProductData() {

        fetch('display_productCardServlet') // Update the servlet name
            .then(response => response.text())
            .then(data => {
                document.getElementById('display_cardproduct').innerHTML = data;
            })
            .catch(error => {
                console.error('Error:', error);
            });
    }

    window.onload = function () {
        fetchProductData();
        fetchCategoryData(); // Call the correct function
    };

</script>

<script>
    function fetchCategoryData() {
        fetch('display_categoryallproduct')
            .then(response => response.text())
            .then(data => {
                document.getElementById('display_category').innerHTML = data;
            })
            .catch(error => {
                console.error('Error:', error);
            });
    }

        // Check if showModal attribute is set
        <% if (request.getAttribute("showModal") != null && (Boolean) request.getAttribute("showModal")) { %>
        $(document).ready(function(){
        // Open Bootstrap modal
        $('#Cart').modal('show');
    });
        <% } %>

</script>


</body>
</html>
