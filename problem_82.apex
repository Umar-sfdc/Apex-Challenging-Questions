/* 

2. Write an Apex program to store five student names in a Set and try adding duplicate values. Print the final Set.
📌 Task: Declare a Set<String>, add values (including duplicates), and observe the behavior.

 */

// first method.
Set<String> studentList = new Set<String>{'JOHN', 'SHON', 'ROHN', 'LEIO', 'RONALDO'};
System.debug('Student Set : ' + studentList);

// adding duplicate value.
studentList.add('RAJU');
studentList.add('raju');
System.debug('Student Set : ' + studentList);
studentList.add('rajui');
System.debug('Student Set : ' + studentList);



