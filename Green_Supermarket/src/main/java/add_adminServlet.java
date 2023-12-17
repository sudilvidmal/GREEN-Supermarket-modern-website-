import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "add_itemServlet", value = "/add_itemServlet")
public class add_adminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String url ="jdbc:mysql://127.0.0.1:3306/green_sp_db";
        String username = "root";
        String password = "siri";

        try{
            String fname = request.getParameter("txtfname");
            String lname = request.getParameter("txtlname");
            String adminmail = request.getParameter("txtemail");
            String adminusername = request.getParameter("txtusername");
            String adminpassword = request.getParameter("txtpassword");

            //Establishing connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,username,password);
            System.out.println("Connection succeed");

            //insert query
            String qry = "INSERT INTO admin_table(admin_first_name,admin_last_name,admin_username,admin_email,admin_password) VALUES(?,?,?,?,?)";
            PreparedStatement pre = conn.prepareStatement(qry);

            pre.setString(1,fname);
            pre.setString(2,lname);
            pre.setString(3,adminusername);
            pre.setString(4,adminmail);
            pre.setString(5,adminpassword);

            pre.executeUpdate();
            System.out.println("Data inserted successfully");
            response.sendRedirect(request.getContextPath()+"/sample.jsp");

            conn.close();


        }
        catch (Exception e){
            e.printStackTrace();
        }


    }
}