import java.io.*;
import java.math.BigDecimal;
import java.sql.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "add_productServlet", value = "/add_productServlet")
@MultipartConfig
public class add_productServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String url ="jdbc:mysql://127.0.0.1:3306/green_sp_db";
        String username = "root";
        String password = "siri";

        try{
            String pname = request.getParameter("txtpname");
            String productdetails = request.getParameter("txtpdetails");
            String productcateg = request.getParameter("txtpcategory");
            String productprice = request.getParameter("txtpprice");

            Part filePart = request.getPart("productimg");
            InputStream inputStream = filePart.getInputStream();

            //Establishing connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,username,password);
            System.out.println("Connection succeed");

            //insert query
            String qry = "INSERT INTO product_table(product_name, product_category, product_details, product_price, product_image) " +
                    "VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pre = conn.prepareStatement(qry);

            pre.setString(1, pname);
            pre.setString(2, productcateg);
            pre.setString(3, productdetails);
            BigDecimal price = new BigDecimal(productprice);
            pre.setBigDecimal(4, price);


            pre.setBlob(5, inputStream);

            pre.executeUpdate();

            System.out.println("Data inserted successfully");
            response.sendRedirect(request.getContextPath()+"/productduplicate.jsp");

            conn.close();


        }
        catch (Exception e){
            e.printStackTrace();
        }


    }
}