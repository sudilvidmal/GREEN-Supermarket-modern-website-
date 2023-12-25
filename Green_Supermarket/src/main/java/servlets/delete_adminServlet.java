package servlets;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "delete_adminServlet", value = "/delete_adminServlet")
public class delete_adminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {


        try{
            int adminid =Integer.parseInt(request.getParameter("txtid"));
            String adminusername = request.getParameter("txtusername");
            String adminpassword = request.getParameter("txtpassword");

            Connection conn = dbconnection.getConnection();

            String query = "DELETE FROM admin_table WHERE admin_id=? AND admin_username=? AND admin_password=?";

            PreparedStatement pre = conn.prepareStatement(query);

            pre.setInt(1,adminid);
            pre.setString(2,adminusername);
            pre.setString(3,adminpassword);
            pre.executeUpdate();

            System.out.println("Data deleted successfully");

            response.sendRedirect(request.getContextPath()+"/sample.jsp");

            conn.close();


        }
        catch (Exception ex){

            System.out.println("server connection error");
            ex.printStackTrace();

        }



    }
}