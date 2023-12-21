package servlets;

import java.io.*;
import java.sql.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@MultipartConfig
@WebServlet(name = "display_categoryallproduct", value = "/display_categoryallproduct")
public class display_categoryallproduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

//        String jdbcDriver = "com.mysql.jdbc.Driver";
//        String dburl = "jdbc:mysql://localhost:3306/green_sp_db";
//
//        String user = "root";
//        String pass = "80297080aA";

        try {



            Connection conn = dbconnection.getConnection();

            Statement stmt = conn.createStatement();
            String sql = "SELECT category_name FROM category_table";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String categoryName = rs.getString("category_name");

                // Generate HTML dynamically based on the retrieved data
                out.println("<a href=\"#\"><p class=\"blog-sidebar-list\">" + categoryName + "</p></a>");
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