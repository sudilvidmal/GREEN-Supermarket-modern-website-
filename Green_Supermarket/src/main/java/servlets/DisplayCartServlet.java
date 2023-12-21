package servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "DisplayCartServlet", value = "/DisplayCartServlet")
public class DisplayCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();


        try (Connection conn = dbconnection.getConnection()) {
            // SQL query to get cart items
            String cartSql = "SELECT item_id, product_image_path, product_name, product_price FROM green_sp_db.cart_table";

            // Execute the query to get cart items
            try (Statement cartStmt = conn.createStatement(); ResultSet cartRs = cartStmt.executeQuery(cartSql)) {
                while (cartRs.next()) {
                    // Get cart item details
                    int cartID = cartRs.getInt("item_id");
                    String imagePath = cartRs.getString("product_image_path");
                    String productName = cartRs.getString("product_name");
                    double productPrice = cartRs.getDouble("product_price");

                    // Generate HTML code for each cart item
                    out.println("<div class=\"row border-top border-bottom\">");
                    out.println("<div class=\"row main align-items-center\">");
                    out.println("<div class=\"col-2\"><img class=\"img-fluid\" src=\"" + imagePath + "\"></div>");
                    out.println("<div class=\"col\">");
                    out.println("<div class=\"row\">" + productName + "</div>");
                    out.println("</div>");
                    out.println("<div class=\"col\">&#8360; " + productPrice + "</div>");
                    out.println("<div class=\"col\">");
                    out.println("<form action=\"DeleteCartItemServlet\" method=\"post\">");
                    out.println("<input type=\"hidden\" name=\"cartId\" value=\"" + cartID + "\">");
                    out.println("<button type=\"submit\" class=\"btn btn-danger\"><i class=\"fas fa-trash-alt\"></i></button>");
                    out.println("</form>");
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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}