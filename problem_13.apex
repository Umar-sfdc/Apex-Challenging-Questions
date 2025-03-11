/**
* @File Name : Employee.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : March 12, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | March 12, 2025 |   | Initial Version
**/

// Create a class Employee with instance variables name, age, and salary. Add a method displayInfo() that prints employee details.

public class Employee {

	String name;
	Integer age;
	Decimal salary;

	public Employee() {
		this.name = 'DEMO';
		this.age = 18;
		this.salary = 0.0;
	}

	public Employee(String Name, Integer Age, Decimal Salary) {
		this.name = Name;
		this.age = Age;
		this.salary = Salary; 
	}

	public void setEmployee(String name, Integer age, Decimal salary) {
		this.name = name;
		this.age = age;
		this.salary = salary;
	}

	public void displayInfo() {
		System.debug('=== Employee Details === \n Name : ' + name
					+ '\n Age : ' + age
					+ '\n Salary : '+ salary);
	}



}