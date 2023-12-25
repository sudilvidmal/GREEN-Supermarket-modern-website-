package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "display_category_products", value = "/display_category_products")
public class display_CategoryProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();


        String selectedCategory = request.getParameter("category");

        try (Connection conn = dbconnection.getConnection()) {

            String sql = "SELECT product_id, product_name, product_category, product_details, product_price, product_image_path " +
                    "FROM green_sp_db.product_table " +
                    "WHERE product_category = '" + selectedCategory + "'";

            try (Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {
                while (rs.next()) {
                    out.println("<div class=\"col-sm-3 col-md-6 col-lg-4\">");
                    out.println("<div class=\"card mt-3\">");
                    out.println("<div class=\"card-body text-center\">");

                    String imageURL = request.getContextPath() + "/" + rs.getString("product_image_path");

                    out.println("<form action=\"AddToCartServlet\" method=\"post\">");


                    out.println("<input type=\"hidden\" name=\"productId\" value=\"" + rs.getInt("product_id") + "\">");


                    out.println("<a href=\"product_detailsservlet?productId=" + rs.getString("product_id") + "\">" +
                            "<img src=\"" + imageURL + "\" class=\"product-image\"></a>");


                    out.println("<h5 class=\"card-title\"><b>" + rs.getString("product_name") + "</b></h5>");
                    out.println("<p class=\"card-text small\">" + rs.getString("product_details") + "</p>");
                    out.println("<p class=\"tags\">Price <span>Rs " + rs.getString("product_price") + "</span></p>");

                    out.println("<button type=\"submit\" class=\"btn btn-success button-text\">"
                            + "<i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i> Add to cart</button>");

                    out.println("</form>");

                    out.println("</div>");
                    out.println("</div>");
                    out.println("</div>");

                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error fetching product data");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
