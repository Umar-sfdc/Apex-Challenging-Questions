/* 

What to Do?
Implement Movable interface in Car.
Input
Car c = new Car();
c.move();

Expected Output
The car is moving

 */


// super class.
public interface IMovable {
	void move();
}

// Cars class.
public class Cars implements IMovable {
	
    public void move() {
        System.debug('The car is moving!');
    }
    
}

/* 

output : 

The car is moving!

 */