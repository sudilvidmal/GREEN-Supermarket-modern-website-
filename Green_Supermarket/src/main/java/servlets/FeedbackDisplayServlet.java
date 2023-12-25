
package servlets;


import java.io.*;
import java.sql.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "FeedbackDisplayServlet", value = "/FeedbackDisplayServlet")
public class FeedbackDisplayServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {

            Connection conn = dbconnection.getConnection();

            Statement stmt = conn.createStatement();
            String sql = "SELECT * FROM feedback_table";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getInt("feedback_id") + "</td>");
                out.println("<td>" + rs.getString("customer_id") + "</td>");
                out.println("<td>" + rs.getString("comment") + "</td>");
                out.println("<td>" + rs.getString("rating") + "</td>");
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