/* 

6. Write an Apex program to check if a Set contains a specific value.
📌 Task: Use Set.contains() method to check for existence.

 */

Set<String> studentList = new Set<String>{'JOHN', 'SHON', 'ROHN', 'LEIO', 'RONALDO'};
System.debug('Student Set : ' + studentList);
System.debug('LEIO contains student set ? ' + studentList.contains('LIEO'));