import java.io.*;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "delete_productServlet", value = "/delete_productServlet")
public class delete_productServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String url ="jdbc:mysql://127.0.0.1:3306/green_sp_db";
        String username = "root";
        String password = "siri";

        try{
            int pid = Integer.parseInt(request.getParameter("txtpid"));
            String pname = request.getParameter("txtpname");
            String productcateg = request.getParameter("pcateg");


            //Establishing connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,username,password);
            System.out.println("Connection succeed");

            //insert query
            String qry = "DELETE FROM product_table WHERE product_id=? AND product_name=? AND product_category=?";

            PreparedStatement pre = conn.prepareStatement(qry);

            pre.setInt(1,pid);
            pre.setString(2, pname);
            pre.setString(3, productcateg);
            pre.executeUpdate();

            System.out.println("Data Deleted successfully");
            response.sendRedirect(request.getContextPath()+"/productduplicate.jsp");

            conn.close();


        }
        catch (Exception e){
            e.printStackTrace();
        }


    }
}