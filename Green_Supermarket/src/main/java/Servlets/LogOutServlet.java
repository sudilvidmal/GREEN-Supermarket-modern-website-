package servlets;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/logout")
public class LogOutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Invalidate the session
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }

        try{

            Connection conn = dbconnection.getConnection();
            String tableName = "" + session.getId();
            //insert query
            String deletecartquery= "DROP TABLE green_sp_db." + tableName + "";
            PreparedStatement pre = conn.prepareStatement(deletecartquery);


            pre.executeUpdate();
            System.out.println("Table dropped successfully");
            response.sendRedirect(request.getContextPath()+"/index.jsp");

            conn.close();


        }
        catch (Exception e){
            e.printStackTrace();
        }



    }
}
