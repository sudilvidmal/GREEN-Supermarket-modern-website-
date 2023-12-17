import java.io.*;
import java.sql.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "display_orderServlet", value = "/display_orderServlet")
public class display_orderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String jdbcDriver = "com.mysql.jdbc.Driver";
        String dburl = "jdbc:mysql://localhost:3306/green_sp_db";

        String user = "root";
        String pass = "siri";

        try {

            Class.forName(jdbcDriver);

            Connection conn = DriverManager.getConnection(dburl, user, pass);

            Statement stmt = conn.createStatement();
            String sql = "SELECT * FROM order_table";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getInt("order_id") + "</td>");
                out.println("<td>" + rs.getString("customer_id") + "</td>");
                out.println("<td>" + rs.getString("product_id") + "</td>");
                out.println("<td>" + rs.getString("order_date") + "</td>");
                out.println("<td>" + rs.getString("total_amount") + "</td>");
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