// Write a program to create a Datetime object with a specific date and time and display it.


public class DateTimeExample {
    public static void displayDateTime() {
        // Creating a Datetime object with a specific date and time
        Datetime specificDateTime = Datetime.newInstance(2024, 2, 20, 14, 30, 0);
        
        // Displaying the Datetime object
        System.debug('Specified Datetime: ' + specificDateTime);
    }
}
