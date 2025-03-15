/* 

What to Do?
Call super.describeAnimal() inside Dog and Cat.
Input
Dog dog = new Dog();
dog.describeAnimal();

Expected Output : 

This is an animal.
Dog: I am a domestic animal.

 */


// Parent Class: Animal
public virtual class Animal {
    public virtual void describeAnimal() {
        System.debug('This is an animal.');
    }
}

// Child Class: Dog
public class Dog extends Animal {
    public override void describeAnimal() {
        super.describeAnimal(); // Call parent method
        System.debug('Dog: I am a domestic animal.');
    }
}

// Child Class: Cat
public class Cat extends Animal {
    public override void describeAnimal() {
        super.describeAnimal(); // Call parent method
        System.debug('Cat: I am an independent pet.');
    }
}
