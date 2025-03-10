/**
* @File Name : StringToInteger.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : March 9, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | March 9, 2025 |   | Initial Version
**/

// Write a program to convert a String to an Integer and handle exceptions if the conversion fails.


public class StringToInteger {

	public static Integer convertStringToInteger(String str) 
	{
		try {
			Integer num = Integer.valueOf(str);
			return num;
		} 
		catch(Exception e) {	
			System.debug('Error: Invalid input. Cannot convert "' + str + '" to Integer.');
			return null;
		}
	}	
	
}
