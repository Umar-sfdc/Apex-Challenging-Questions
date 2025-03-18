/* 

Role-Based Access Control System


What to Do?
Implement access levels for different users.
Input
Employee e1 = new Admin();
Employee e2 = new RegularUser();

e1.accessDashboard();
e2.accessDashboard();

Expected Output
Full Admin Privileges
Limited User Dashboard

 */

// Abstract superclass (Base class)
public abstract class Employee {
    // Abstract method: Must be implemented by subclasses
    public abstract void accessDashboard();
}

// Admin class (inherits from Employee)
public class Admin extends Employee {
    public override void accessDashboard() {
        System.debug('Full Admin Privileges!');
    }
}

// Regular user class (inherits from Employee)
public class RegularUser extends Employee {
    public override void accessDashboard() {
        System.debug('Limited User Dashboard');
    }
}

// Test execution
public class RoleBasedAccessTest {
    public static void testAccess() {
        Employee e1 = new Admin();
        Employee e2 = new RegularUser();
        
        e1.accessDashboard(); // Expected: Full Admin Privileges!
        e2.accessDashboard(); // Expected: Limited User Dashboard
    }
}
