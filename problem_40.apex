/*  

// Create a constructor inside a class Laptop that assigns values to brand, RAM, and price, and print the details.


*/

public class Laptop {
    public String brand;
    public Integer ram;
    public Decimal price;

    // Constructor to initialize the object
    public Laptop(String brand, Integer ram, Decimal price) {
        this.brand = brand;
        this.ram = ram;
        this.price = price;
    }

    // Method to print the values of instance variables
    public void printValues() {
        System.debug('Name: ' + this.brand);
        System.debug('Age: ' + this.ram);
        System.debug('Is Active: ' + this.price);
    }