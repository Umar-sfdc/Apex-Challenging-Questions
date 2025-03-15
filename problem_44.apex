/* 

What to Do?
Define a base class Employee with name and salary.
Create a child class Manager with an additional department.
Input
Manager m = new Manager('John Doe', 80000, 'HR');
m.displayDetails();

Expected Output : 

Employee Name: John Doe
Salary: 80000
Department: HR


 */

// Employees Class
public virtual class Employees {
	
    protected String name;
    protected Integer salary;
    
    public Employees(String name, Integer salary) {
        this.name = name;
        this.salary = salary;
    }
    
    public String getEmployeeName() {
        return this.name;
    }
    
    public Integer getEmployeeSalary() {
		return this.salary;
    }
    
    
    
}


 // Manager Class
public class Manager extends Employees {
	
    public String department;
    
    public Manager() {
        super('John Doe', 0);
        this.department = 'Not Allocated!';
	}
    
    public Manager(String name, Integer salary) {
        super(name, salary);
        this.department = 'Not Allocated!';
	}
    
    public Manager(String name, Integer salary, String department) {
		super(name, salary);
        this.department = department;
    }
    
    public void displayDetails() {
        System.debug('=== Employee Details ===');
        System.debug('Employee Name : ' + getEmployeeName());
        System.debug('Employee Salary : ' + getEmployeeSalary());
        System.debug('Employee Department : ' + this.department);
    }
    
}


/* 

Final output : 

Manager m1 = new Manager();
m1.displayDetails();

Manager m2 = new Manager('Alice', 50000);
m2.displayDetails();

Manager m3 = new Manager('Bob', 70000, 'IT');
m3.displayDetails();

===


=== Employee Details ===
Employee Name : John Doe
Employee Salary : 0
Employee Department : Not Allocated!

=== Employee Details ===
Employee Name : Alice
Employee Salary : 50000
Employee Department : Not Allocated!

=== Employee Details ===
Employee Name : Bob
Employee Salary : 70000
Employee Department : IT



 */