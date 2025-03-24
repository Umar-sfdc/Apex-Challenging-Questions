/* 

8. Given a List of Integers, remove duplicate values using a Set.

 */


List<Integer> numbers = new List<Integer>{10, 15, 20, 25, 30, 35, 40};

Set<Integer> uniqueNum = new Set<Integer>();

System.debug('List Of Numbers : ' + numbers);

uniqueNum.addAll(numbers);

numbers.clear();
numbers.addAll(uniqueNum);

System.debug('List of Unique Numbers : ' + numbers);


