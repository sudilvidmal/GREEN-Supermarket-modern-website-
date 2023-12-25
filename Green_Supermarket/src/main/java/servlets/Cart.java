
package servlets;

// Cart.java
public class Cart {
    private int cartId;
    private int productId;
    private String productName;
    private int productQuantity;
    private String productImagePath;
    private double productPrice;
    private double cartTotal;
    private int cartItems;

    public Cart() {
    }

    public Cart(int cartId, int productId, String productName, int productQuantity,
                String productImagePath, double productPrice, double cartTotal, int cartItems) {
        this.cartId = cartId;
        this.productId = productId;
        this.productName = productName;
        this.productQuantity = productQuantity;
        this.productImagePath = productImagePath;
        this.productPrice = productPrice;
        this.cartTotal = cartTotal;
        this.cartItems = cartItems;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
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

    public int getProductQuantity() {
        return productQuantity;
    }

    public void setProductQuantity(int productQuantity) {
        this.productQuantity = productQuantity;
    }

    public String getProductImagePath() {
        return productImagePath;
    }

    public void setProductImagePath(String productImagePath) {
        this.productImagePath = productImagePath;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public double getCartTotal() {
        return cartTotal;
    }

    public void setCartTotal(double cartTotal) {
        this.cartTotal = cartTotal;
    }

    public int getCartItems() {
        return cartItems;
    }

    public void setCartItems(int cartItems) {
        this.cartItems = cartItems;
    }
}
