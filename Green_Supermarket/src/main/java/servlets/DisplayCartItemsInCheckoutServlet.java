package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.io.IOException;

@WebServlet(name = "DisplayCartItemsInCheckoutServlet", value = "/DisplayCartItemsInCheckoutServlet")
public class DisplayCartItemsInCheckoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try (Connection conn = dbconnection.getConnection()) {
            // SQL query to get cart items
            String cartSql = "SELECT item_id, product_name, product_price FROM green_sp_db.cart_table";

            // Execute the query to get cart items
            try (Statement cartStmt = conn.createStatement(); ResultSet cartRs = cartStmt.executeQuery(cartSql)) {
                while (cartRs.next()) {
                    // Get cart item details
                    int cartID = cartRs.getInt("item_id");
                    String productName = cartRs.getString("product_name");
                    double productPrice = cartRs.getDouble("product_price");

                    // Generate HTML code for each cart item
                    out.println("<li class=\"list-group-item d-flex justify-content-between lh-sm\">");
                    out.println("<div>");
                    out.println("<h6 class=\"my-0 mb-1\">" + productName + "</h6>");
                    out.println("</div>");
                    out.println("<span class=\"text-muted\">Rs." + productPrice + "</span>");
                    out.println("</li>");
                }
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            // Log the exception or handle it appropriately
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error fetching product data");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}