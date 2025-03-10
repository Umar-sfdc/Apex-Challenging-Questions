/**
* @File Name : ListOfInteger.cls
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

// Write a program to find the maximum number from a given List<Integer>.

public class ListOfInteger {
	
	public static Integer max(List<Integer> myIntegerList) {
		if(!myIntegerList.isEmpty()) {
			Integer max = 0;
			for(Integer i : myIntegerList) {
				if(max < i) max = i;
			}
			return max;
		}
		else return null;
	}

	public static Integer min(List<Integer> myIntegerList) {
		if(!myIntegerList.isEmpty()) {
			Integer min = 0;
			for(Integer i : myIntegerList) {
				if(i < min) min = i;
			}
			return min;
		}
		else return null;
	}
}