package servlets;

// Product.java
public class Product {
    private int productId;
    private String productName;
    private String productCategory;
    private String productDetails;
    private double productPrice;
    private String productImagePath;
    private int productStock;

    public Product() {
    }

    public Product(int productId, String productName, String productCategory, String productDetails,
                   double productPrice, String productImagePath, int productStock) {
        this.productId = productId;
        this.productName = productName;
        this.productCategory = productCategory;
        this.productDetails = productDetails;
        this.productPrice = productPrice;
        this.productImagePath = productImagePath;
        this.productStock = productStock;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public String getProductDetails() {
        return productDetails;
    }

    public void setProductDetails(String productDetails) {
        this.productDetails = productDetails;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductImagePath() {
        return productImagePath;
    }

    public void setProductImagePath(String productImagePath) {
        this.productImagePath = productImagePath;
    }

    public int getProductStock() {
        return productStock;
    }

    public void setProductStock(int productStock) {
        this.productStock = productStock;
    }
}

