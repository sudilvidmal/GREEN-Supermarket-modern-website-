package servlets;

import java.io.*;
import java.sql.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@MultipartConfig
@WebServlet(name = "display_productServlet", value = "/display_productServlet")
public class display_productServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();



        try {

            Connection conn = dbconnection.getConnection();
            Statement stmt = conn.createStatement();
            String sql = "SELECT product_id,product_name,product_category,product_details,product_price,product_stock FROM product_table";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getInt("product_id") + "</td>");
                out.println("<td>" + rs.getString("product_name") + "</td>");
                out.println("<td>" + rs.getString("product_category") + "</td>");
                out.println("<td>" + rs.getString("product_details") + "</td>");
                out.println("<td>" + rs.getString("product_price") + "</td>");
                out.println("<td>" + rs.getString("product_stock") + "</td>");
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