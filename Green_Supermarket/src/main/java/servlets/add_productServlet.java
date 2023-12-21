package servlets;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet(name = "add_productServlet", value = "/add_productServlet")
@MultipartConfig
public class add_productServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        try {
            String pname = request.getParameter("txtpname");
            String productdetails = request.getParameter("txtpdetails");
            String productcateg = request.getParameter("txtpcategory");
            String productprice = request.getParameter("txtpprice");
            int productstock = Integer.parseInt(request.getParameter("txtstock"));

            Part filePart = request.getPart("productimg");
            String fileName = filePart.getSubmittedFileName();


            String uploadDirectory = "D://website//Green_Supermarket//src//main//webapp//productimage";
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

                String qry = "INSERT INTO green_sp_db.product_table (product_name, product_category, product_details, product_price, product_image_path,product_stock) " +
                        "VALUES (?, ?, ?, ?, ?,?)";

                try (PreparedStatement pre = conn.prepareStatement(qry)) {
                    pre.setString(1, pname);
                    pre.setString(2, productcateg);
                    pre.setString(3, productdetails);
                    BigDecimal price = new BigDecimal(productprice);
                    pre.setBigDecimal(4, price);
                    pre.setString(5, relativeFilePath);
                    pre.setInt(6, productstock);

                    pre.executeUpdate();
                }

                System.out.println("Data inserted successfully");
                response.getWriter().println(
                        "<script>alert('Product added!'); window.location.href = 'productduplicate.jsp';</script>");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
