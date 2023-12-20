package Servlets;

import java.io.*;
import java.sql.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "display_adminServlet", value = "/display_adminServlet")
public class display_adminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();


        try {

            Connection conn = servlets.dbconnection.getConnection();
            Statement stmt = conn.createStatement();
            String sql = "SELECT * FROM admin_table";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getInt("admin_id") + "</td>");
                out.println("<td>" + rs.getString("admin_first_name") + "</td>");
                out.println("<td>" + rs.getString("admin_last_name") + "</td>");
                out.println("<td>" + rs.getString("admin_email") + "</td>");
                out.println("<td>" + rs.getString("admin_username") + "</td>");
                out.println("<td>" + rs.getString("admin_password") + "</td>");
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