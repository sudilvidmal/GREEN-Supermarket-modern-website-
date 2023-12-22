package Servlets;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "DisplayCartItemsPriceServlet", value = "/DisplayCartItemsPriceServlet")
public class DisplayCartItemsPriceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try (Connection conn = dbconnection.getConnection()) {
            // SQL query to get the count of items and the total price
            String summarySql = "SELECT COUNT(item_id) AS item_count, SUM(product_price) AS total_price FROM green_sp_db.cart_table";

            // Execute the query to get the summary
            try (Statement summaryStmt = conn.createStatement(); ResultSet summaryRs = summaryStmt.executeQuery(summarySql)) {
                int itemCount = 0;
                double totalPrice = 0.0;

                if (summaryRs.next()) {
                    itemCount = summaryRs.getInt("item_count");
                    totalPrice = summaryRs.getDouble("total_price");
                }

                // Your existing code to retrieve cart items and display them dynamically
                // ...

                // Display the summary
                out.println("<div><h5><b>Summary</b></h5></div>");
                out.println("<hr>");
                out.println("<div class=\"row\">");
                out.println("<div class=\"col-6 text-left p-3\" style=\"\">Items</div>");
                out.println("<div class=\"col-6 text-right p-3\"> " +  itemCount  + "</div>");
                out.println("</div>");
                out.println("<div class=\"row\" style=\"border-top: 1px solid rgba(0,0,0,.1);\">");
                out.println("<div class=\"col-6 text-left p-3\">Total Price</div>");
                out.println("<div class=\"col-6 text-right p-3\">&#8360; " + totalPrice + "</div>");
                out.println("</div>");
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