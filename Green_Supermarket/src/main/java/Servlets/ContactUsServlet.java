package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@WebServlet("/ContactUsServlet")
public class ContactUsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Twilio API credentials
    private static final String ACCOUNT_SID = "AC023219f78408b6776d0fa20922e37adb";
    private static final String AUTH_TOKEN = "f3bbaeb05d06352693fd1d0481082f5c";

    // Phone number to send SMS to
    private static final String TO_PHONE_NUMBER = "+94719386342"; // replace with your phone number

    public ContactUsServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String message = request.getParameter("message");

        // Your form validation and processing logic here

        // Send SMS using Twilio
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
        Message twilioMessage = Message.creator(new PhoneNumber(TO_PHONE_NUMBER), // Recipient's phone number
                        new PhoneNumber("+16145693217"), // Your Twilio phone number
                        "Green Supermarket contact form submission:\nName: " + name + "\nEmail: " + email + "\nPhone: " + phone +"\nMessage: " + message)
                .create();



        // Response to the client
        response.getWriter().println(
                "<script>alert('Contact Form Submitted!'); window.location.href = 'index.jsp';</script>");

    }
}

