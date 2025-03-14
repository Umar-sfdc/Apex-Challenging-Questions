/* 

// Create a class with a static variable and demonstrate how it retains its value across multiple method calls.


 */

// constant class
public class Constant {
    public static final Decimal PI = 3.14;
    public static Integer GST = 18;
}

// test class.
public class Test {
    
    public void greetingMessage() {
        System.debug('Hi, Developers!');
        System.debug('Constant Value : ' + Constant.GST);
    }
}


/*

output : 

// Test Cases.

System.debug('Value of PI : ' + Constant.GST);          // 18


*/


