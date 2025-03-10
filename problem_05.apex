/**
* @File Name : dateCompare.cls
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

// Write a program to compare two Dates in Apex and print which one is earlier.

public class dateCompare {
	
	public static void earlyDateCompare(Date date1, Date date2) {

		if (date1 < date2) {
            System.debug('Date1: ' + date1 + ' is earlier than Date2: ' + date2);
        } else if (date1 > date2) {
            System.debug('Date1: ' + date1 + ' is later than Date2: ' + date2);
        } else {
            System.debug('Date1: ' + date1 + ' is the same as Date2: ' + date2);
        }

	}

}
