package Servlets;

import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;


@WebServlet("/loginservlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String email = request.getParameter("uemail");

        String password = request.getParameter("upassword");

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/green_sp_db", "root", "root");

            System.out.println("Connection Succeed!");

            String Query2 = "Select * FROM customer_table WHERE customer_email = ? AND customer_password = ?";
            PreparedStatement pre = conn.prepareStatement(Query2);


            pre.setString(1, email);
            pre.setString(2, password);

            pre.execute();

                response.getWriter().println("<script>alert('Login Successful!'); window.location.href='index.jsp';</script>");
            System.out.println("Login Successful");

            conn.close();

        } catch (SQLException | ClassNotFoundException b) {
            System.out.println("Wrong Username or Password");
            b.printStackTrace();

        }

    }
}