package servlets;

import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;


@WebServlet("/adminonlyloginservlet")
public class adminonly_loginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String email = request.getParameter("adminmail");

        String password = request.getParameter("adminpass");

        try {
            Connection conn = dbconnection.getConnection();

            System.out.println("Connection Succeed!");

            String Query2 = "Select * FROM admin_table WHERE admin_email = ? AND admin_password = ?";
            PreparedStatement pre = conn.prepareStatement(Query2);


            pre.setString(1, email);
            pre.setString(2, password);

            pre.execute();

            response.getWriter().println("<script>alert('Login Successful!'); window.location.href='sample.jsp';</script>");
            System.out.println("Login Successful");

            conn.close();

        } catch (SQLException | ClassNotFoundException b) {
            System.out.println("Wrong Username or Password");
            b.printStackTrace();

        }

    }
}