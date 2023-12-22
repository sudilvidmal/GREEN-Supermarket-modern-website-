package Servlets;


import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(name = "add_categoryServlet", value = "/add_categoryServlet")
@MultipartConfig
public class add_categoryServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        try {
            String cname = request.getParameter("category");





            try (Connection conn = dbconnection.getConnection()) {

                String qry = "INSERT INTO green_sp_db.category_table ( category_name) " +
                        "VALUES (?)";

                try (PreparedStatement pre = conn.prepareStatement(qry)) {
                    pre.setString(1, cname);


                    pre.executeUpdate();
                }

                System.out.println("Data inserted successfully");
                response.getWriter().println(
                        "<script>alert('category added!'); window.location.href = 'productduplicate.jsp';</script>");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
