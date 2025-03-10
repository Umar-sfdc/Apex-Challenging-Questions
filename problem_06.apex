/**
* @File Name : dateDifference.cls
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

// Write a program that calculates the difference (in days) between two given Date values

public class dateDifference {
	
	public static Integer dateDifferenceInDays(Date date1, Date date2) {
		return date1 < date2 ? date1.daysBetween(date2) : date2.daysBetween(date1);
	}


}
