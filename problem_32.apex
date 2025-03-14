/* 

// Write a constructor inside a class Employee  that takes name, id and department as parameters and assigns values.


 */


// public class Employee

public class Employee {

    private String name;
    private Integer id;
    private String department;


    // default constructor.
    public Employee(){
        this('Unknown', 0, 'General');
    }


    // name constructor.
    public Employee(String name)
    {
        this(name, 0, 'General');
    }

    public Employee(String name, Integer id)
    {
        this(name, id, '');
    }


    // parametrized constructor.
    public Employee(String name, Integer id, String department)
    {
        this.name = name;
        this.id = id;
        this.department = department;
    }

    // print the details.
    public void printDetails()
    {
        System.debug('Id : '+id+', Name : '+name+', Deparment : '+department);
    }


}