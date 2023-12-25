
package servlets;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



@WebServlet(name = "product_detailsservlet", value = "/product_detailsservlet")
public class product_detailsservlet extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();


        String productId = request.getParameter("productId");

        try (Connection conn = dbconnection.getConnection()) {

            String sql = "SELECT product_id, product_name, product_category, product_details, product_price, product_image_path FROM green_sp_db.product_table WHERE product_id = ?";

            try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                pstmt.setString(1, productId);

                try (ResultSet rs = pstmt.executeQuery()) {
                    if (rs.next()) {

                        request.setAttribute("product_id", rs.getString("product_id"));
                        request.setAttribute("product_name", rs.getString("product_name"));
                        request.setAttribute("product_category", rs.getString("product_category"));
                        request.setAttribute("product_details", rs.getString("product_details"));
                        request.setAttribute("product_price", rs.getString("product_price"));
                        request.setAttribute("product_image_path", rs.getString("product_image_path"));


                        RequestDispatcher dispatcher = request.getRequestDispatcher("product.jsp");
                        dispatcher.forward(request, response);
                    } else {

                        response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();

            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error fetching product details");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
