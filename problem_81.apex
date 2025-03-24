
/* 

    Create a List of Strings and add five city names to it. Print all the city names.
    Task: Declare a List<String>, add 5 values, and print the list.

 */


// first method.
List<String> cityList = new List<String>{'PUNE', 'MUMBAI', 'JAIPUR', 'GOA', 'NAGPUR'};
System.debug('City List : ' + cityList);


// another method.
cityList.clear();

cityList.add('PUNE');
cityList.add('MUMBAI');
cityList.add('GOA');
cityList.add('NAGPUR');
cityList.add('JAIPUR');

System.debug('City List : ' + cityList);


// another Method.
cityList.clear();
List<String> anotherList = new List<String>{'PUNE', 'MUMBAI', 'JAIPUR', 'GOA', 'NAGPUR'};
cityList.addAll(anotherList);
System.debug('City List : ' + cityList);


// another method which add values using for each loop.
cityList.clear();

for(String s : anotherList) {
    cityList.add(s);
}

System.debug('City List : ' + cityList);




