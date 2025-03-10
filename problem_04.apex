/**
* @File Name : ExploreWorld.cls
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

// Create a Map<String, Integer> where the key is a student’s name, and the value is their score. Add 3 students and print their scores.


public class ExploreWorld {
	

	static Map<String, Integer> studentRecordBook = new Map<String, Integer>();

	public static void addRecord(String name, Integer age) {
		if(name != null && age > 0) {
			studentRecordBook.put(name, age);
		}
	}

	public static void displayStudentRecordBook() {
		System.debug(studentRecordBook);
	}



}


/* 

ExploreWorld.displayStudentRecordBook();        -> {}
ExploreWorld.addRecord('Jone Doe', -20);        -> {}
ExploreWorld.addRecord('Jone Doe', 30);         
ExploreWorld.displayStudentRecordBook();        -> Jone Doe => 30

 */
