package Servlets;

import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/loginservlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String email = request.getParameter("uemail");

        String password = request.getParameter("upassword");



        try {
            Connection conn = dbconnection.getConnection();

            String query = "SELECT customer_id FROM customer_table WHERE customer_email = ? AND customer_password = ?";
            try (PreparedStatement preparedStatement = conn.prepareStatement(query)) {
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, password);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        // User is authenticated, retrieve customer_id
                        int customerId = resultSet.getInt("customer_id");

                        // Create or retrieve the session
                        HttpSession session = request.getSession();

                        // Store customer_id in the session
                        session.setAttribute("sessionuserid", customerId);
                        session.setAttribute("userLoggedIn", true);
                        response.getWriter().println("<script>alert('Login Successful!'); window.location.href='index.jsp';</script>");
                        System.out.println("Login Successful");


                    } else {
                        // Authentication failed
                        response.getWriter().println("<script>alert('Login Failed!'); window.location.href='index.jsp';</script>");
                    }
                }
            }

            conn.close();

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
