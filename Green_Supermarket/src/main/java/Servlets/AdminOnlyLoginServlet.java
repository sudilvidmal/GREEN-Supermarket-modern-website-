package servlets;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/adminonlyloginservlet")
public class AdminOnlyLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        // Retrieve email and password from the request parameters
        String email = request.getParameter("adminemail");
        String password = request.getParameter("adminpassword");

        try {
            // Get a database connection using your dbconnection class
            Connection conn = dbconnection.getConnection();

            System.out.println("Connection Succeed!");

            // Prepare the SQL query
            String query = "SELECT * FROM admin_table WHERE admin_email = ? AND admin_password = ?";

            // Create a PreparedStatement and set parameters
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            // Execute the query
            ResultSet resultSet = preparedStatement.executeQuery();

            // Check if there is a matching record
            if (resultSet.next()) {
                // Login successful
                response.getWriter().println("<script>alert('Login Successful!'); window.location.href='sample.jsp';</script>");
                System.out.println("Login Successful");
            } else {
                // Login failed
                response.getWriter().println("<script>alert('Login Failed!'); window.location.href='login.jsp';</script>");
                System.out.println("Login Failed");
            }

            // Close resources
            resultSet.close();
            preparedStatement.close();
            conn.close();

        } catch (SQLException | ClassNotFoundException e) {
            // Handle exceptions
            System.out.println("An error occurred: " + e.getMessage());
            e.printStackTrace();
        }

    }
}
