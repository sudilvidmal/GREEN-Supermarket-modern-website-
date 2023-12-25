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

@WebServlet(name = "display_homeproductServlet", value = "/display_homeproductServlet")
public class display_homeproductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try (Connection conn = dbconnection.getConnection()) {
            String sql = "SELECT product_id, product_name, product_category, product_details, product_price, product_image_path FROM green_sp_db.product_table";

            try (Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {
                int count = 0;
                while (rs.next() && count < 8) {
                    if (count < 4) {
                        out.println("<div class='col-lg-3 card-items p-4'>");
                        out.println("<div class='card shadow mx-auto'>");
                        out.println("<form action=\"AddToCartServlet\" method=\"post\">"); // Start of the form
                        out.println("<input type=\"hidden\" name=\"productId\" value=\"" + rs.getInt("product_id") + "\">");
                        out.println("<a href=\"product_detailsservlet?productId=" + rs.getString("product_id") + "\">" +
                                "<img src='" + rs.getString("product_image_path") + "' class='card-img-top' alt='...'></a>");
                        out.println("<div class='card-body text-center'>");
                        out.println("<h5 class='card-title'>" + rs.getString("product_name") + "</h5>");
                        out.println("<p class='card-text'>" + rs.getString("product_details") + "</p>");
                        out.println("<button type=\"submit\" class=\"btn btn-warning button-text\">"
                                + "<i class=\"fa-solid fa-cart-shopping\" aria-hidden=\"true\"></i> Add to cart</button>");
                        out.println("</form>");
                        out.println("</div></div></div>");
                    } else {
                        if (count == 4) {
                            out.println("<!-- SPLIT HERE -->");
                        }
                        out.println("<div class='col-lg-3 card-items p-4'>");
                        out.println("<div class='card shadow mx-auto'>");
                        out.println("<form action=\"AddToCartServlet\" method=\"post\">"); // Start of the form
                        out.println("<input type=\"hidden\" name=\"productId\" value=\"" + rs.getInt("product_id") + "\">");
                        out.println("<a href=\"product_detailsservlet?productId=" + rs.getString("product_id") + "\">" +
                                "<img src='" + rs.getString("product_image_path") + "' class='card-img-top' alt='...'></a>");
                        out.println("<div class='card-body text-center'>");
                        out.println("<h5 class='card-title'>" + rs.getString("product_name") + "</h5>");
                        out.println("<p class='card-text'>" + rs.getString("product_details") + "</p>");
                        out.println("<button type=\"submit\" class=\"btn btn-warning button-text\">"
                                + "<i class=\"fa-solid fa-cart-shopping\" aria-hidden=\"true\"></i> Add to cart</button>");
                        out.println("</form>");
                        out.println("</div></div></div>");
                    }
                    count++;
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
