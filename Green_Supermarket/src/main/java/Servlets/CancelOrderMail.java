package Servlets;

import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

@WebServlet(name = "CancelOrderMail", value = "/CancelOrderMail")
public class CancelOrderMail extends HttpServlet {

    protected void cancelordermail(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session1 = request.getSession();
        String getmail = (String) session1.getAttribute("sessionuseremail");

        // Sender's email address
        String from = "greensupermarket23@gmail.com";

        // Recipient's email address
        String to = getmail; //receivers password

        // Sender's email password
        String password = "ndloocycmmbvewxf";

        // Setup mail server properties
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");

        // Get the Session object
        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password);
            }
        });

        //Query to remove all cart items when clicking the cancel order button


        try (Connection conn = dbconnection.getConnection()) {

            String tableName = "" + session1.getId();
            // SQL query to get cart items
            String cancelordersql = "TRUNCATE TABLE " + tableName;

            //SQL query to retrieve the customer id of particular session

            PreparedStatement pre = conn.prepareStatement(cancelordersql);

            pre.executeUpdate();


        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        try {
            // Create a default MimeMessage object
            MimeMessage message = new MimeMessage(session);

            // Set From: header field of the header
            message.setFrom(new InternetAddress(from));

            // Set To: header field of the header
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

            // Set Subject: header field
            message.setSubject("Cancel Order");

            // Now set the actual message
            message.setText("You canceled your order bye");

            // Send message
            Transport.send(message);

            response.sendRedirect("checkout.jsp");

        } catch (MessagingException mex) {
            mex.printStackTrace();
        }


    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        cancelordermail(request,response);



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        cancelordermail(request,response);
    }
}