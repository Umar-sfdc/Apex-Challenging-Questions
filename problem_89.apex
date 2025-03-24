/* 

9. Write a program to merge two Lists into a single List without duplicates.
📌 Task: Use Set to remove duplicates and merge Lists.

 */


List<Integer> n0 = new List<Integer>{10, 15, 20, 25, 30, 35, 40};
List<Integer> n1 = new List<Integer>{20, 26, 254, 30, 100, 2001, 56};

System.debug('Primary List : ' + n0);
System.debug('Second List : ' + n1);


// remove duplicate values in main list and also from another list.
Set<Integer> sn = new Set<Integer>(n0);
sn.addAll(n1);

List<Integer> uniqueNumbers = new List<Integer>();
uniqueNumbers.addAll(sn);

System.debug('Final Combine result Lits : ' + uniqueNumbers);







