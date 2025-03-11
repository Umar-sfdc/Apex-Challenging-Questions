/**
* @File Name : Calculator.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : March 11, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | March 11, 2025 |   | Initial Version
**/

// Write a class Calculator with methods add(), subtract(), multiply(), and divide() that take two numbers as input.


public class Calculator {
	
	public static Decimal add(Decimal a, Decimal b) {
		return a + b;
	}

	public static Decimal multiply(Decimal a, Decimal b) {
		return a * b;
	}

	public static Decimal divide(Decimal a, Decimal b) {
		if(b != 0 && b != null) return a / b;
		else return 0;
	}

	public static Decimal subtract(Decimal a, Decimal b) {
		return a - b;
	}
}


/* 

output : 


// Test Case

Integer a = 0, b = 10;

System.debug(Calculator.add(a, b));		10

System.debug(Calculator.multiply(a, b));	0

System.debug(Calculator.divide(a, b));		0

System.debug(Calculator.subtract(a, b));   -10


 */