package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "product_detailsservlet", value = "/product_detailsservlet")
public class product_detailsservlet extends HttpServlet {
    // Update the constants with your database configuration
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/green_sp_db";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "80297080aA";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get the product ID from the request parameter
        String productId = request.getParameter("productId");

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            // Modify the SQL query to retrieve details for the specified product ID
            String sql = "SELECT product_id, product_name, product_category, product_details, product_price, product_image_path " +
                    "FROM green_sp_db.product_table WHERE product_id = ?";

            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, productId);

                try (ResultSet rs = stmt.executeQuery()) {
                    if (rs.next()) {
                        // Your existing code for displaying product details
                        out.println("<div class=\"col-md-5\">");
                        out.println("<div class=\"main-img\">");
                        out.println("<img class=\"img-fluid\"");
                        String imageURL = request.getContextPath() + "/" + rs.getString("product_image_path");
                        out.println("src=\"" + imageURL + "\"");
                        out.println("alt=\"Product\">");
                        out.println("</div>");
                        out.println("</div>");

                        out.println("<div class=\"col-md-7\">");
                        out.println("<div class=\"main-description px-2\">");
                        out.println("<div class=\"category text-bold mt-2\">");
                        out.println("Category: " + rs.getString("product_category"));
                        out.println("</div>");
                        out.println("<div class=\"product-title text-bold my-3\">");
                        out.println(rs.getString("product_name"));
                        out.println("</div>");
                        out.println("<div class=\"price-area my-4\">");
                        out.println("<p class=\"old-price mb-1\">");
                        out.println("<p class=\"new-price text-bold mb-1\">Rs " + rs.getString("product_price") + "</p>");

                        out.println("</p>");
                        out.println("<p class=\"text-secondary mb-1\">(Additional tax may apply on checkout)</p>");
                        out.println("<div class=\"instock\">");
                        out.println("<span>In Stock</span>");
                        out.println("</div>");
                        out.println("</div>");

                        out.println("<div class=\"buttons d-flex my-5\">");
                        out.println("<div class=\"block\">");
                        out.println("<a href=\"#\" class=\"shadow btn custom-btn \">Wishlist</a>");
                        out.println("</div>");
                        out.println("<div class=\"block\">");
                        out.println("<button class=\"shadow btn custom-btn\">Add to cart</button>");
                        out.println("</div>");
                        out.println("<div class=\"block quantity\">");
                        out.println("<input type=\"number\" class=\"form-control\" id=\"cart_quantity\" value=\"1\" min=\"0\" max=\"5\"");
                        out.println("placeholder=\"Enter email\" name=\"cart_quantity\">");
                        out.println("</div>");
                        out.println("</div>");

                        out.println("<div class=\"product-details my-4\">");
                        out.println("<p class=\"details-title text-color mb-1\">Product Details</p>");
                        out.println("<p class=\"description\">" + rs.getString("product_details") + "</p>");
                        out.println("</div>");

                        out.println("<div class=\"row questions bg-light p-3\">");
                        out.println("<div class=\"col-md-1 icon\">");
                        out.println("<i class=\"fas fa-rocketchat questions-icon\"></i>");
                        out.println("</div>");
                        out.println("<div class=\"col-md-11 text\">");
                        out.println("Have a question about our products at E-Store? Feel free to contact our representatives via live");
                        out.println("chat or email.");
                        out.println("</div>");
                        out.println("</div>");

                        out.println("<div class=\"delivery my-4\">");
                        out.println("<p class=\"font-weight-bold mb-0\"><span><i class=\"fas fa-truck\"></i></span> <b>Delivery done in");
                        out.println("3 hours from time of purchase</b></p>");
                        out.println("<p class=\"text-secondary\">Order now to get this product delivery</p>");
                        out.println("</div>");

                        out.println("<div class=\"delivery-options my-4\">");
                        out.println("<p class=\"font-weight-bold mb-0\"><span><i class=\"fas fa-filter\"></i></span> <b>Delivery options</b></p>");
                        out.println("<p class=\"text-secondary\">View delivery options here</p>");
                        out.println("</div>");

                        out.println("</div>");
                        out.println("</div>");




                    } else {
                        // Handle case where no product is found for the given ID
                        response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Log the exception or handle it appropriately
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error fetching product data");
        }
    }
}
