// Write a program to demonstrate method overloading in Apex using different parameter types.

public class Person {
    
    String firstName, lastName;
    Integer age;

    public Person() {
		this('John', 'Doe', 23);
    }
    
    public Person(Integer age) {
        if(age > 0) this('John', 'Doe', age);
    }
    
    public Person(String firstName) {
        this(firstName, 'Doe', 23);
	}
    
    public Person(String firstName, String lastName) {
        this(firstName, lastName, 23);
	}
    
    public Person(String firstName, String lastName, Integer age) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
    }
    
    public void displayInfo() {
		System.debug('=== DETAILS === \n Full Name : ' + firstName 
                    + ' ' + lastName 
                    + '\n Age : ' + age);
    }
    
    
    
    
}


/* 

Person p = new Person('Mad', 'Host', 24);
p.displayInfo();


 */