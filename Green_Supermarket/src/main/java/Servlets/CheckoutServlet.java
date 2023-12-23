package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "CheckoutServlet", value = "/CheckoutServlet")
public class CheckoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String address2 = request.getParameter("address2");
        String state = request.getParameter("state");
        String zip = request.getParameter("zip");

        try (Connection connection = dbconnection.getConnection()) {
            // Create a SQL statement
            String sql = "INSERT INTO billing_info_table (first_name, last_name, email, address, address2, state, zip) VALUES (?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                // Set parameters
                statement.setString(1, firstName);
                statement.setString(2, lastName);
                statement.setString(3, email);
                statement.setString(4, address);
                statement.setString(5, address2);
                statement.setString(6, state);
                statement.setString(7, zip);

                // Execute the statement
                int rowsAffected = statement.executeUpdate();

                // Check if the insertion was successful
                if (rowsAffected > 0) {

                    System.out.println("Billing info inserted!");

                } else {

                    System.out.println("Billing info insertion failed!");

                }
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }

    }
}