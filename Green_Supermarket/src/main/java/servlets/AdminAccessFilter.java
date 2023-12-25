package servlets;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter({"/sample.jsp", "/productduplicate.jsp", "/customer.jsp"})
public class AdminAccessFilter implements Filter {

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;

        HttpSession adminsession = request.getSession(false);

        // Check if the user has admin privileges
        if (adminsession != null && adminsession.getAttribute("adminEmail") != null) {
            // User has admin privileges, allow access to the requested resource
            chain.doFilter(request, response);
        } else {
            // User does not have admin privileges, redirect or show an error page

            response.getWriter().println("<script>alert('Admins only'); window.location.href='index.jsp';</script>");
        }
    }

    // Other methods of the Filter interface (init, destroy) can be implemented if needed
}
