/* 

16. Write an Apex program to reverse a List of Integers without using built-in methods.
📌 Task: Implement manual swapping to reverse a list.

 */


 public class ReverseListManual {
    
    public static List<Integer> reverseList(List<Integer> numbers) {
        if (numbers == null || numbers.isEmpty()) return numbers; // Handle edge cases

        // Two-pointer approach
        Integer left = 0;
        Integer right = numbers.size() - 1;

        while (left < right) {
            // Swap elements at left and right indexes
            Integer temp = numbers[left];
            numbers[left] = numbers[right];
            numbers[right] = temp;

            // Move pointers
            left++;
            right--;
        }
        
        return numbers;
    }


/* 

use this code in anonymous window :

List<Integer> nums = new List<Integer>{1, 2, 3, 4, 5};
    
System.debug('Original List: ' + nums);
System.debug('Reversed List: ' + ReverseListManual.reverseList(nums));

 */