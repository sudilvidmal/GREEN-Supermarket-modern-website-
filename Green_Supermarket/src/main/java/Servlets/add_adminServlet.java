package Servlets;

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



        try{
            String fname = request.getParameter("txtfname");
            String lname = request.getParameter("txtlname");
            String adminmail = request.getParameter("txtemail");
            String adminusername = request.getParameter("txtusername");
            String adminpassword = request.getParameter("txtpassword");

            //Establishing connection
            Connection conn = servlets.dbconnection.getConnection();

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