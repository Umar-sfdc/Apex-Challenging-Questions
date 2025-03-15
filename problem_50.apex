/* 

What to Do?
Try accessing a protected method in a child class.
Expected Output
This is protected information


 */


// suepr class.
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
    
    protected void protectedInformation() {
       	System.debug('Hi, Developers!');
    }
    
}


// Manager child class.
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
        super.protectedInformation();
    }
        
    
}




