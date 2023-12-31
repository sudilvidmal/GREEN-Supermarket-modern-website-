package servlets;

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


        String from = "greensupermarket23@gmail.com";


        String to = getmail;


        String password = "ndloocycmmbvewxf";


        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");


        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password);
            }
        });




        try (Connection conn = dbconnection.getConnection()) {

            String tableName = "" + session1.getId();

            String cancelordersql = "TRUNCATE TABLE " + tableName;



            PreparedStatement pre = conn.prepareStatement(cancelordersql);

            pre.executeUpdate();


        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        try {

            MimeMessage message = new MimeMessage(session);


            message.setFrom(new InternetAddress(from));


            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));


            message.setSubject("Order Cancellation Successful! (Green Supermarket)");


            message.setText("Dear sir/madam," +"\n" + "\n" +
                    "We regret to inform you that your order has been canceled." +
                    "If you have any concerns or require further assistance, please don't hesitate to contact our customer ." +
                    "Thank you for contacting us!" +
                    "\n" +   "\n" +
                    "Best regards,\n" +

                    "Green Supermarket | Customer Support: 0112-123456");


            // Send message
            Transport.send(message);

            response.getWriter().println(
                    "<script>alert('Your Order will be canceled! You will receive an email shortly!'); window.location.href = 'index.jsp';</script>");

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