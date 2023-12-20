package Servlets;

import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



@WebServlet("/signupservlet")
public class SignUpServlet extends HttpServlet {

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

            String username = request.getParameter("uname");
            String phonenumber = request.getParameter("uphonenumber");
            String email = request.getParameter("uemail");
            String password = request.getParameter("upassword");

            try {
                Class.forName("com.mysql.jdbc.Driver");

                Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/green_sp_db", "root", "root");

                System.out.println("Connection Succeed!");

                String Query = "insert into customer_table(customer_name,customer_phone,customer_email,customer_password) values(?,?,?,?)";
                PreparedStatement pre = conn.prepareStatement(Query);

                pre.setString(1, username);
                pre.setString(2, phonenumber);
                pre.setString(3, email);
                pre.setString(4, password);

                pre.execute();
                response.getWriter().write("success");
                System.out.println("Data Inserted Successfully");
                response.getWriter().println("<script>alert('Signed Up Successfully!'); window.location.href='index.jsp';</script>");
                conn.close();

            } catch (SQLException | ClassNotFoundException b) {
                System.out.println("Something Wrong");
                response.getWriter().write("error");
                b.printStackTrace();
            }

        }
    }