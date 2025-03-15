/* 

What to Do?
Create a makeSound() method in Animal.
Override it in Dog and Cat.

Input : 
Animal a1 = new Dog();
Animal a2 = new Cat();

a1.makeSound();
a2.makeSound();

Expected Output : 

Dog barks
Cat meows


 */

// Animal Class.
 public virtual class Animal {
	
    public virtual void makeSound() {
        System.debug('Animal makes sounds!');
    }
}


// Cat Class.
public class Cat extends Animal {

    public override void makeSound() {
        System.debug('Cat meows');
	}
}

// Dog Class.
public class Dog extends Animal {

    public override void makeSound() {
        System.debug('Dog barks');
	}
}