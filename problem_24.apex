/* 

// Demonstrate the use of static methods by creating a class with a static method that returns the current timestamp.

 */

public class Timestamp {
    public static Datetime currentTimestamp() {
        Datetime dt = Datetime.now();
        return dt;
    }
}


/* 

output : 

System.debug(Timestamp.currentTimestamp());     // Current Time : 2025-03-14 00:01:01
 */

