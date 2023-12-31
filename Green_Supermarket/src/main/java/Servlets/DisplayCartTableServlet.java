package servlets;

import java.io.*;
import java.sql.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "DisplayCartTableServlet", value = "/DisplayCartTableServlet")
public class DisplayCartTableServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();


        try {

            Connection conn = dbconnection.getConnection();
            Statement stmt = conn.createStatement();
            String sql = "SELECT * FROM billing_info_table";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getInt("payment_id") + "</td>");
                out.println("<td>" + rs.getString("customer_id") + "</td>");
                out.println("<td>" + rs.getString("products") + "</td>");
                out.println("<td>" + rs.getString("first_name") + "</td>");
                out.println("<td>" + rs.getString("last_name") + "</td>");
                out.println("<td>" + rs.getString("email") + "</td>");
                out.println("<td>" + rs.getString("address") + "</td>");
                out.println("<td>" + rs.getString("address2") + "</td>");
                out.println("<td>" + rs.getString("state") + "</td>");
                out.println("<td>" + rs.getString("zip") + "</td>");
                out.println("</tr>");
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException se) {
            se.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
}