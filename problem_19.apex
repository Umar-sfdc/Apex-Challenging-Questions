// Create a class Student with a method grade() that takes marks and 
// returns Pass if marks >= 40, otherwise Fail.


public class StudentGrade {
	
    public static String grade(Decimal marks) {
        if(marks >= 40) return 'Pass!';
        else return 'Failed!';
    }
    
    
}