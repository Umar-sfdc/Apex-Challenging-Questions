/* 

5. Given a List of Strings, write an Apex program to sort it in ascending order.
📌 Task: Use List.sort() to sort a list of names.

 */

List<String> studentList = new List<String>{'JOHN', 'SHON', 'ROHN', 'LEIO', 'RONALDO', 'danny', 'sam pole','david'};
System.debug('Student List Before Sorting : ' + studentList);

studentList.sort();
System.debug('Student List After Sorting : ' + studentList);



