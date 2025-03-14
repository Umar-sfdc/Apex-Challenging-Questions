
/* 

// Write a program to initialize an object using a constructor and print the values of instance variables.

 */


public class MyObject {
    public String name;
    public Integer age;
    public Boolean isActive;

    // Constructor to initialize the object
    public MyObject(String name, Integer age, Boolean isActive) {
        this.name = name;
        this.age = age;
        this.isActive = isActive;
    }

    // Method to print the values of instance variables
    public void printValues() {
        System.debug('Name: ' + this.name);
        System.debug('Age: ' + this.age);
        System.debug('Is Active: ' + this.isActive);
    }