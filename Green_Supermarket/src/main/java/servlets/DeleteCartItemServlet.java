package Servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;

import java.io.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "DeleteCartItemServlet", value = "/DeleteCartItemServlet")
public class DeleteCartItemServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve item_id from the request
        String cartIdString = request.getParameter("cartId");

        if (cartIdString != null && !cartIdString.isEmpty()) {
            try {
                int cartId = Integer.parseInt(cartIdString);

                // Perform the deletion in the database
                deleteCartItem(cartId);

                request.setAttribute("showModal", true);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/allproduct.jsp");
                dispatcher.forward(request, response);

                // Redirect back to the cart page or wherever you want
//                response.sendRedirect(request.getContextPath() + "/allproduct.jsp");
            } catch (NumberFormatException e) {
                e.printStackTrace(); // Log the exception or handle it according to your needs
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid cartId");
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "cartId parameter is missing");
        }
    }
        private void deleteCartItem(int cartId) {
            try (Connection conn = dbconnection.getConnection()) {
                String deleteSql = "DELETE FROM cart_table WHERE item_id = ?";
                try (PreparedStatement deleteStmt = conn.prepareStatement(deleteSql)) {
                    deleteStmt.setInt(1, cartId);
                    deleteStmt.executeUpdate();
                }
            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace(); // Log the exception or handle it according to your needs
                // You might want to throw a custom exception or handle the error in some way
            }

    }
}