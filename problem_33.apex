
/* 

// Create a class Circle where the constructor takes a radius and calculates the area.

 */



public class Circle {

    private Decimal radius;

    // Constructor to initialize radius
    public Circle(Decimal radius) {
        this.radius = radius;
    }

    // Implementing abstract method
    public Decimal calculateArea() {
        return 3.14 * radius * radius; // πr² formula
    }
}