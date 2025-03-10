// Create a Set of Integers and add duplicate values. Observe the behavior of the Set.


Set<Integer> items = new Set<Integer> {12, 32, 45, 100, 15, 100};

	items.add(100);
	items.add(2025);

System.debug('The Set contains : '+ items);


// So, its actually ignore the duplicate values in set & contains only the unique values.
