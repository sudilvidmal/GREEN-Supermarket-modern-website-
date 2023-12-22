package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve product ID from the request
        int productId = Integer.parseInt(request.getParameter("productId"));

        // Fetch product details from the database
        Product product = getProductDetails(productId);

        // Insert product into the cart
        addToCart(product);

        // Redirect back to the product page or wherever you want
        response.sendRedirect(request.getContextPath() + "/allproduct.jsp?productId=" + productId);
    }


    private Product getProductDetails(int productId) {
        // Code to fetch product details from the database based on the product ID
        // Implement your database connection and retrieval logic here
        // Return a Product object with the details

        // Sample code (replace with your actual logic):
        Connection connection = null;
        try {
            connection = dbconnection.getConnection();

            String sql = "SELECT * FROM product_table WHERE product_id=?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setInt(1, productId);
                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        // Populate a Product object with the retrieved details
                        return new Product(
                                resultSet.getInt("product_id"),
                                resultSet.getString("product_name"),
                                resultSet.getString("product_category"),
                                resultSet.getString("product_details"),
                                resultSet.getDouble("product_price"),
                                resultSet.getString("product_image_path"),
                                resultSet.getInt("product_stock")
                        );
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception appropriately (log it, show an error page, etc.)
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    private void addToCart(Product product) {
        // Code to insert the product into the cart in the database
        // Implement your database connection and insertion logic here

        // Sample code (replace with your actual logic):
        Connection connection = null;
        try {
            connection = dbconnection.getConnection();

            // Assuming you have a Cart table with fields like productId, productName, price, quantity, etc.
            String insertCartSql = "INSERT INTO cart_table (product_id, product_name, " +
                    "product_image_path, product_price) VALUES (?, ?,?, ?)";
            try (PreparedStatement insertCartStatement = connection.prepareStatement(insertCartSql)) {
                insertCartStatement.setInt(1, product.getProductId());
                insertCartStatement.setString(2, product.getProductName());
                insertCartStatement.setString(3, product.getProductImagePath());
                insertCartStatement.setDouble(4, product.getProductPrice());
                insertCartStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception appropriately (log it, show an error page, etc.)
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
