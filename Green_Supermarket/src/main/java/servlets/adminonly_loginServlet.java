package servlets;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/adminonlyloginservlet")
public class adminonly_loginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String adminemail = request.getParameter("adminmail");
        String adminpassword = request.getParameter("adminpass");

        try {
            Connection conn = dbconnection.getConnection();
            System.out.println("Connection Succeed!");

            String Query22 = "SELECT * FROM admin_table WHERE admin_email = ? AND admin_password = ?";
            PreparedStatement pre = conn.prepareStatement(Query22);

            pre.setString(1, adminemail);
            pre.setString(2, adminpassword);

            ResultSet resultSett = pre.executeQuery();

            // Check if there is a row in the result set
            if (resultSett.next()) {
                // Admin login successful, create a session
                HttpSession adminsession = request.getSession(true);

                // Store relevant information in the session

                adminsession.setAttribute("adminEmail", adminemail);
                adminsession.setAttribute("adminpassword", adminpassword);



                response.getWriter().println("<script>alert('Login Successful!'); window.location.href='sample.jsp';</script>");
                System.out.println("Login Successful");
            } else {
                // Invalid credentials
                response.getWriter().println("<script>alert('Wrong Username or Password'); window.location.href='adminlogin.jsp';</script>");
                System.out.println("Wrong Username or Password");
            }

            conn.close();

        } catch (SQLException | ClassNotFoundException b) {
            b.printStackTrace();
        }
    }
}
