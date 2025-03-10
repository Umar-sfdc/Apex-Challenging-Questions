// Create a List of Strings and add 5 different values. Print all values using a loop.

List<String> items = new List<String> {'Goa', 'Hyderabad', 'Pune', 'Mumbai', 'Nagpur'};
    
    items.add('Latur');
	items.add('Surat');


for(String item : items)
{
    System.debug(item);
}
