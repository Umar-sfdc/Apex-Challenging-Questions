/*

// Create a class Department where an employee's department should be accessible only within the same class.

 */

public class Department {

    private String employeeDepartment = 'Salesforce Developer';

    public void displayInfo()  {
        System.debug('Employee Department : ' + employeeDepartment);
    }
}


/* 

We can access the employeeDepartment only in that class.

if we call outside the class then it will show an error.

 */







