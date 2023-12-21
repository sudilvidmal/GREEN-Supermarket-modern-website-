package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.google.gson.JsonObject;
@WebServlet(name = "DisplayCartValuesNavbarServlet", value = "/DisplayCartValuesNavbarServlet")
public class DisplayCartValuesNavbarServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json"); // Set content type to JSON
        PrintWriter out = response.getWriter();

        try (Connection conn = dbconnection.getConnection()) {
            String summarySql = "SELECT COUNT(item_id) AS item_count2, SUM(product_price) AS total_price2 FROM green_sp_db.cart_table";

            try (Statement summaryStmt = conn.createStatement();

                 ResultSet summaryRs = summaryStmt.executeQuery(summarySql)) {

                int itemCount2 = 0;
                double totalPrice2 = 0.0;

                if (summaryRs.next()) {
                    itemCount2 = summaryRs.getInt("item_count2");
                    totalPrice2 = summaryRs.getDouble("total_price2");
                }

                // Create a JSON object with item count and total price
                JsonObject json = new JsonObject();
                json.addProperty("itemCount2", itemCount2);
                json.addProperty("totalPrice2", totalPrice2);

                // Write the JSON response
                out.println(json);
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