package servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;

import jakarta.servlet.http.*;

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

        String cartIdString = request.getParameter("cartId");

        if (cartIdString != null && !cartIdString.isEmpty()) {
            try {
                int cartId = Integer.parseInt(cartIdString);


                HttpSession session = request.getSession();
                deleteCartItem(session, cartId);

                request.setAttribute("showModal", true);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/allproduct.jsp");
                dispatcher.forward(request, response);


            } catch (NumberFormatException e) {
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid cartId");
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "cartId parameter is missing");
        }
    }

    private void deleteCartItem(HttpSession session, int cartId) {
        String tableName = "" + session.getId();
        try (Connection conn = dbconnection.getConnection()) {
            String deleteSql = "DELETE FROM " + tableName + " WHERE item_id = ?";
            try (PreparedStatement deleteStmt = conn.prepareStatement(deleteSql)) {
                deleteStmt.setInt(1, cartId);
                deleteStmt.executeUpdate();
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();

        }
    }
}