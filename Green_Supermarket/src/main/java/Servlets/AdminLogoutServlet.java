package servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AdminLogoutServlet")
public class AdminLogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession adminSession = request.getSession(false);

        try {
            if (adminSession != null) {
                adminSession.invalidate();
            }
        } catch (IllegalStateException e) {

            e.printStackTrace();
        }


        response.sendRedirect("adminlogin.jsp");
    }
}
