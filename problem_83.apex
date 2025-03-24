/* 

3. Declare a Map where the key is an Employee ID (Integer) and the value is Employee Name (String). Add three employees and print the map.
📌 Task: Use Map<Integer, String> and print all key-value pairs.

 */


// first method
Map<Integer, String> employeeMap = new Map<Integer, String>{101 => 'john', 102 => 'doe', 103 => 'samy'};
System.debug('Employee List contains : ' + employeeMap);


// another method. 
employeeMap.clear();

employeeMap.put(101 => 'john');
employeeMap.put(102 => 'doe');
employeeMap.put(103 => 'samy');
System.debug('Employee List contains : ' + employeeMap);

// Displaying Employee Map using Iteration
System.debug('Displaying Employee Map:');
for (Integer empId : employeeMap.keySet()) {
    System.debug('Employee ID: ' + empId + ', Name: ' + employeeMap.get(empId));
}






