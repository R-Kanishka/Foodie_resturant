package model;

public class Product {

    private String itemName;
    private String price;
    private String image;

  
    public Product() {
    }


    public Product(String itemName, String price, String image) {
        this.itemName = itemName;
        this.price = price;
        this.image = image;
    }

    
    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
