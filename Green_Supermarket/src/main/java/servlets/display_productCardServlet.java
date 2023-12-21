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

@WebServlet(name = "display_productCardServlet", value = "/display_productCardServlet")
public class display_productCardServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try (Connection conn = dbconnection.getConnection()) {
            String sql = "SELECT product_id, product_name, product_category, product_details, product_price, product_image_path FROM green_sp_db.product_table";

            try (Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {
                while (rs.next()) {

                    out.println("<div class=\"col-sm-3 col-md-6 col-lg-4\">");
                    out.println("<div class=\"card mt-3\">");
                    out.println("<div class=\"card-body text-center\">");

                    String imageURL = request.getContextPath() + "/" + rs.getString("product_image_path");

                    out.println("<form action=\"AddToCartServlet\" method=\"post\">"); // Start of the form

                    // Hidden input field to store the product_id
                    out.println("<input type=\"hidden\" name=\"productId\" value=\"" + rs.getInt("product_id") + "\">");

                    out.println("<a href=\"product.jsp\"><img src=\"" + imageURL + "\" class=\"product-image\"></a>");
                    out.println("<h5 class=\"card-title\"><b>" + rs.getString("product_name") + "</b></h5>");
                    out.println("<p class=\"card-text small\">" + rs.getString("product_details") + "</p>");
                    out.println("<p class=\"tags\">Price <span>Rs " + rs.getString("product_price") + "</span></p>");

                    out.println("<button type=\"submit\" class=\"btn btn-success button-text\">"
                            + "<i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i> Add to cart</button>");

                    out.println("</form>"); // End of the form

                    out.println("</div>");
                    out.println("</div>");
                    out.println("</div>");
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            // Log the exception or handle it appropriately
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error fetching product data");
        }
    }
}

