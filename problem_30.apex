/* 

// Demonstrate access modifiers by creating a class with variables and methods having private, public, and protected access.

 */

/* 

1. Basic Inheritance Implementation
What to Do?
Create a parent class Vehicle with properties speed and fuelCapacity.
Create a child class Car that inherits Vehicle and adds numberOfDoors.
Create a constructor in Car that initializes both parent and child properties.
Input (Example Code Execution)
Car myCar = new Car(120, 50, 4);
myCar.displayInfo();

Expected Output : 

Speed: 120 km/h
Fuel Capacity: 50 liters
Number of Doors: 4

| Note : i am not creating multiple files for each class insted i am writing multiple class in the same file.

 */

// Vechicel Class.
public virtual class Vehicel {

    protected Integer speed;
    protected integer fuelCapacity;

    public Vehicel(Integer speed, Integer fuelCapacity) {
        this.speed = speed;
        this.fuelCapacity = fuelCapacity;
    }

    public Integer getSpeed() {
        return this.speed;
    }

    public Integer getfuelCapacity() {
        return this.fuelCapacity;
    }

}


// Car Class.
public class Car extends Vehicel {

    public Integer numberOfDoors;

    public Car(Integer speed, Integer fuelCapacity, Integer numDoor) {
        super.(speed, fuelCapacity);
        this.numberOfDoors = numDoor;
    }

    public void displayInfo() {
        System.debug('=== Car Details ==');
        System.debug('Speed : ' + getSpeed());
        System.debug('Fuel Capacity : ' + getfuelCapacity());
        System.debug('Number of Doors : '+ this.numberOfDoors);
    }
}






