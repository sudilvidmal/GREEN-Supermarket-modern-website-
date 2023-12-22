package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false); // false means don't create a new session if none exists

        if (session != null && session.getAttribute("sessionuserid") != null && session.getId()!=null) {
            // Retrieve product ID from the request
            int productId = Integer.parseInt(request.getParameter("productId"));

            // Fetch product details from the database
            Product product = getProductDetails(productId);

            // Insert product into the cart
            addToCart(product, session);

            // Redirect back to the product page or wherever you want
            response.sendRedirect(request.getContextPath() + "/allproduct.jsp?productId=" + productId);
        }else {
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        }
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

    private void addToCart(Product product, HttpSession session) {
        Connection connection = null;
        PreparedStatement insertCartStatement = null;

        try {
            connection = dbconnection.getConnection();

            // Use the session ID for the table name
            String tableName = "" + session.getId();

            // Check if the table exists, and create it if not
            if (!doesTableExist(connection, tableName)) {
                createCartTable(connection, tableName);
            }

            // Assuming you have a Cart table with fields like productId, productName, price, quantity, etc.
            String insertCartSql = "INSERT INTO " + tableName + " (product_id, product_name, " +
                    "product_image_path, product_price) VALUES (?, ?, ?, ?)";

            insertCartStatement = connection.prepareStatement(insertCartSql);
            insertCartStatement.setInt(1, product.getProductId());
            insertCartStatement.setString(2, product.getProductName());
            insertCartStatement.setString(3, product.getProductImagePath());
            insertCartStatement.setDouble(4, product.getProductPrice());
            insertCartStatement.executeUpdate();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            // Handle the exception appropriately (log it, show an error page, etc.)
        } finally {
            if (insertCartStatement != null) {
                try {
                    insertCartStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private boolean doesTableExist(Connection connection, String tableName) throws SQLException {
        // Check if the table exists in the database
        // Return true if the table exists, false otherwise

        try (ResultSet resultSet = connection.getMetaData().getTables(null, null, tableName, null)) {
            return resultSet.next();
        }
    }

    private void createCartTable(Connection connection, String tableName) throws SQLException {
        // Create the Cart table dynamically based on the provided table name
        // You can modify this SQL statement to match your table structure

        String createTableSql = "CREATE TABLE " + tableName + " ("
                +"item_id INT NOT NULL AUTO_INCREMENT,"
                + "product_id INT NOT NULL, "
                + "product_name VARCHAR(255) NOT NULL, "
                + "product_image_path VARCHAR(255) NOT NULL, "
                + "product_price DECIMAL(10,2) NOT NULL, "
                + "PRIMARY KEY (item_id)"
                + ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;";

        try (PreparedStatement createTableStatement = connection.prepareStatement(createTableSql)) {
            createTableStatement.executeUpdate();
        }
    }

}
