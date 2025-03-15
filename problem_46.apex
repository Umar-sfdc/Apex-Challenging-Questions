/* 

What to Do?

Try to override a final method. It should fail at compile time.
Expected Error Message
Compile Error: Method displayBalance() cannot be overridden as it is declared final.


 */

/* 

What to Do?
Create an abstract class Shape with an abstract method calculateArea().
Create two child classes Circle and Rectangle.
Input
Shape s1 = new Circle(7);
Shape s2 = new Rectangle(5, 10);

System.debug(s1.calculateArea());
System.debug(s2.calculateArea());

Expected Output
Circle Area: 153.86
Rectangle Area: 50


 */

// main or super class.
public abstract class Shape {
    // partical abstraction / implementation details.
	public abstract Decimal calculateArea();
    
    public void displayInfo() {
        System.debug('You are in Shapes Library!');
    }
}

// Circle Class
public class Circle extends Shape {
    
    public Decimal radius;
    
    public Circle(Decimal radius) {
        this.radius = radius;
    }
    
    public override Decimal calculateArea() {
        return Constant.PI * radius * radius;
	}
}


// Rectangle Class.
public class Rectangle extends Shape {
    
    private Decimal length;
    private Decimal width;
    
    public Rectangle() {
        this(0, 0);
    }
    
    public Rectangle(Decimal l, Decimal w) {
        this.length = l;
        this.width = w;
    }
 	
    public override Decimal calculateArea() {
		return length * width;
    }
}



