// Create a class Rectangle with methods to calculate area and perimeter.
// Initialize length and width using a constructor.

public class Rectangle {
	
    Decimal length;
    Decimal width;
    
    public Rectangle() {
        this(0.0, 0.0)
    }
    
    public Rectangle(Decimal length, Decimal width) {
        this.length = length;
        this.width = width;
    }
    
    public Decimal perimeter() {
        return 2 * (length + width);
	}
    
    public Decimal area() {
        return length * width;
	}
    
    
}