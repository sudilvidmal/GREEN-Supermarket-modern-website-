package Servlets;

import java.io.*;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@MultipartConfig
@WebServlet(name = "update_productServlet", value = "/update_productServlet")
public class update_productServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        try {
            String pname = request.getParameter("txtpname");
            String productdetails = request.getParameter("txtpdetails");
            String productcateg = request.getParameter("txtpcategory");
            String productprice = request.getParameter("txtpprice");
            int productstock = Integer.parseInt(request.getParameter("txtstock"));

            Part filePart = request.getPart("productimg");
            InputStream inputStream = filePart.getInputStream();
            int pid = Integer.parseInt(request.getParameter("txtpid"));


            String uploadDirectory = "D://website//Green_Supermarket//src//main//webapp//productimage";
            String fileName = filePart.getSubmittedFileName();
            String relativeFilePath = "productimage" + File.separator + fileName;
            String filePath = uploadDirectory + File.separator + fileName;


            try (InputStream input = filePart.getInputStream();
                 OutputStream output = new FileOutputStream(filePath)) {
                byte[] buffer = new byte[1024];
                int bytesRead;
                while ((bytesRead = input.read(buffer)) != -1) {
                    output.write(buffer, 0, bytesRead);
                }
            }


            try (Connection conn = dbconnection.getConnection()) {

                String qry = "UPDATE green_sp_db.product_table SET product_name=?, product_category=?, product_details=?, product_price=?, product_image_path=? , product_stock=? WHERE product_id=?";
                try (PreparedStatement pre = conn.prepareStatement(qry)) {
                    pre.setString(1, pname);
                    pre.setString(2, productcateg);
                    pre.setString(3, productdetails);
                    BigDecimal price = new BigDecimal(productprice);
                    pre.setBigDecimal(4, price);
                    pre.setString(5, relativeFilePath);
                    pre.setInt(6, productstock);
                    pre.setInt(7, pid);

                    pre.executeUpdate();
                }

                System.out.println("Data updated successfully");
                response.sendRedirect(request.getContextPath() + "/productduplicate.jsp");
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
