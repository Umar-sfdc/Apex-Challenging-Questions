/* 

// Create a class Product where the constructor assigns a default value to price if no value is provided.

 */

public class Product {

    private Decimal price;

    public Product() {
        this.price = 12.23;
    }

    public Product(Decimal  num) {
        this.price = num;
    }

    public void displayInfo() {
        System.debug('The Product Price is : ' + this.price);
    }
}


