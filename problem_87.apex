/* 

7. Write an Apex program that adds key-value pairs to a Map and checks if a specific key exists.
📌 Task: Use Map.containsKey() to check for a key.

 */

Map<Integer, String> employeeMap = new Map<Integer, String>{101 => 'john', 102 => 'doe', 103 => 'samy'};
System.debug('Employee List contains : ' + employeeMap);

System.debug('Checking if the Map contain the key 103 ? ' + employeeMap.containsKey(103));
System.debug('Checking if the Map contain the key 1000 ? ' + employeeMap.containsKey(1000));

