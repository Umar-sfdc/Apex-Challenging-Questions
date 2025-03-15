/* 

What to Do?
Create a base class Employee with:

Name

Base salary

A method to calculate salary

Create two subclasses:

FullTimeEmployee → Fixed bonus salary

PartTimeEmployee → Hourly wage salary

Implement polymorphism (override calculateSalary()).


 */

// super Class.
public virtual class Employee {
    
    protected String name;
    protected Decimal baseSalary;

    // default constructor.
    public Employee() {
        this('No Name', 0.0);
    }

    // parametrized constructor.
    public Employee(String name, Decimal baseSalary) {
        this.name = name;
        this.baseSalary = baseSalary;
    }

    public virtual Decimal calculateSalary() {
        return baseSalary;
    }

    public void displaySalary() {
        System.debug(name + 's Salary : ' + calculateSalary());
    }

}



// fulltime employee child class.

public class FullTimeEmployee extends Employee {

    private Decimal bonus;

    public FullTimeEmployee(String name, Decimal salary, Decimal bonus) {
        super(name, salary);
        this.bonus = bonus;
    }

    public override Decimal calculateSalary() {
        return bonus + super.baseSalary;
    }

}


// PartTimeEmployee class.
public class PartTimeEmployee extends Employee {

    private Integer hourlyWork;
    private Decimal hourlyRate;

    public PartTimeEmployee(String name, Integer hourlyRate, Decimal hourlyRate ) {
        super(name, 0);
        this.hourlyRate = hourlyRate;
        this.hourlyWork = hourlyWork;
    }

    public override Decimal calculateSalary() {
        return hourlyRate * hourlyWork;
    }
}








