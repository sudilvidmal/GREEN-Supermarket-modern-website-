
package servlets;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


@WebServlet(name = "FeedbackServlet", value = "/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {


        int rating = Integer.parseInt(request.getParameter("rating"));
        String feedback = request.getParameter("feedback");


        try (Connection conn = dbconnection.getConnection()) {

            String query = "INSERT INTO feedback_table(comment, rating) VALUES (?, ?)";

            try (PreparedStatement preparedStatement = conn.prepareStatement(query)){

                preparedStatement.setString(1, feedback);
                preparedStatement.setInt(2, rating);

                int rowsAffected = preparedStatement.executeUpdate();

                if (rowsAffected > 0) {
                    System.out.println("Feedback entered susscessfully!");

                    response.getWriter().println(
                            "<script>alert('Feedback submitted!'); window.location.href = 'index.jsp';</script>");

                } else {
                    System.out.println("No rows affected, feedback entering failed.");

                    response.getWriter().println(
                            "<script>alert('Feedback submission failed!'); window.location.href = 'index.jsp';</script>");
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Something went wrong");
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}