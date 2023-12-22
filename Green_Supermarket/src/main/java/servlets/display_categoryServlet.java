package Servlets;

import java.io.*;
import java.sql.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@MultipartConfig
@WebServlet(name = "display_categoryServlet", urlPatterns = "/display_categoryServlet")

public class display_categoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();


        try {

            Connection conn = dbconnection.getConnection();

            Statement stmt = conn.createStatement();
            String sql = "SELECT category_name FROM category_table";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String categoryName = rs.getString("category_name");
                out.println("<option value='" + categoryName + "'>" + categoryName + "</option>");
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