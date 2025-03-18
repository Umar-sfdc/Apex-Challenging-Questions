/* 

Multiple Levels of Inheritance
What to Do?
Implement Device → Computer → Laptop hierarchy.
Input
Laptop myLaptop = new Laptop();
myLaptop.powerOn();

Expected Output
Device is powered on
Computer is booting up
The laptop opening ubuntu!


 */

// super class.
public virtual class Device {

    public virtual void powerOn() {
        System.debug('Device is powerd on');
    }        
}

// child class
public virtual class Computer extends Device {

    public override void powerOn() {
        super.powerOn();
        System.debug('Computer is booting up!');
    }

}


// grand child
public class Laptop extends Computer {
    public override void powerOn() {
        super.powerOn();
        System.debug('Laptop opening ubuntu!');
    }
}



/* 

output : 

Laptop myLaptop = new Laptop();
myLaptop.powerOn();



 */