package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(name = "CheckoutServlet", value = "/CheckoutServlet")
public class CheckoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String email = request.getParameter("cusemail");
        String address = request.getParameter("cusaddress");
        String address2 = request.getParameter("cusaddress2");
        String state = request.getParameter("cusstate");
        String zip = request.getParameter("cuszip");

        if (session != null && session.getAttribute("sessionuserid") != null && session.getId() != null) {
            int custID = (int) session.getAttribute("sessionuserid");

            try {

                List<Integer> productIDs = getCartProductIDs(custID, session);


                String sql = "INSERT INTO billing_info_table (customer_id, first_name, last_name, email, address, address2, state, zip, products) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

                try (Connection conn = dbconnection.getConnection();
                     PreparedStatement preparedStatement = conn.prepareStatement(sql)) {

                    preparedStatement.setInt(1, custID);
                    preparedStatement.setString(2, firstName);
                    preparedStatement.setString(3, lastName);
                    preparedStatement.setString(4, email);
                    preparedStatement.setString(5, address);
                    preparedStatement.setString(6, address2);
                    preparedStatement.setString(7, state);
                    preparedStatement.setString(8, zip);


                    String productIDsString = joinProductIDs(productIDs);
                    preparedStatement.setString(9, productIDsString);

                    int rowsAffected = preparedStatement.executeUpdate();

                    if (rowsAffected > 0) {
                        System.out.println("Billing info inserted!");
                    } else {
                        System.out.println("Billing info insertion failed!");
                    }
                }
            } catch (SQLException | ClassNotFoundException e) {
                System.out.println("Something went wrong");
                e.printStackTrace();
            }
        }
    }

    private String joinProductIDs(List<Integer> productIDs) {
        return productIDs.stream()
                .map(Object::toString)
                .collect(Collectors.joining(","));
    }

    private List<Integer> getCartProductIDs(int custID, HttpSession session) {
        List<Integer> productIDs = new ArrayList<>();

        try (Connection conn = dbconnection.getConnection()) {

            String tableName = "" + session.getId();

            PreparedStatement preparedStatement = conn.prepareStatement("SELECT product_id FROM " + tableName + " WHERE customer_id = ?");

            preparedStatement.setInt(1, custID);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    int productID = resultSet.getInt("product_id");
                    productIDs.add(productID);
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Error retrieving product IDs from cart_table");
            e.printStackTrace();
        }

        return productIDs;
    }
}
