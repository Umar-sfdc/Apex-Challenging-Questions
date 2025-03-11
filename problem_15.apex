// Write a program to swap two numbers using a method inside a class.

public class swapNumbers {
	
    
    public static void swapNumber(Integer a, Integer b) {
        
        System.debug('Before Swap a : ' + a
                    + ', b : ' + b);
        
        Integer temp = a;
        a = b;
        b = temp;
        
        System.debug('After Swap a : ' + a
                    + ', b : ' + b);
	}

}