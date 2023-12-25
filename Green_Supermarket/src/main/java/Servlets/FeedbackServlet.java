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

        HttpSession session = request.getSession(false); // false means don't create a new session if none exists

        int rating = Integer.parseInt(request.getParameter("rating"));
        String feedback = request.getParameter("feedback");

        if (session != null && session.getAttribute("sessionuserid") != null && session.getId() != null) {

           int custID = (int) session.getAttribute("sessionuserid");

        try (Connection conn = dbconnection.getConnection()) {

            String query = "INSERT INTO feedback_table(customer_id, comment, rating) VALUES (?, ?, ?)";

                try (PreparedStatement preparedStatement = conn.prepareStatement(query)) {
                    preparedStatement.setInt(1, custID);
                    preparedStatement.setString(2, feedback);
                    preparedStatement.setInt(3, rating);


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
            } catch(SQLException | ClassNotFoundException e){
                System.out.println("Something went wrong");
                e.printStackTrace();
                response.getWriter().println("Error: " + e.getMessage());
            }
        }
        else{
            response.getWriter().println(
                    "<script>alert('You must be logged in to submit a feedback'); window.location.href = 'index.jsp';</script>");
        }
    }
}