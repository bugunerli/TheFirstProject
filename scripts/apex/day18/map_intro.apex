/**
Map is a collection type along with List and Set
Map is like a dictionary : word --> meaning
unlike List and Set that store one item per element
Map stores key-value pair per element
so instead of having one Data type like list and set
it has 1 data type for key and 1 data type for value
Key in the map is UNIQUE, value can be anything
It is an unordered collection, NO INDEX!!!
*/
// Create a Map called studentMap to represent 
    // student name(String) and badge count (Integer)
Map<String,Integer> studentMap = new Map<String,Integer>();

// and add items into it using `put` method 
studentMap.put('Tamara', 500);
studentMap.put('Samia', 450);
studentMap.put('Ali', 4700); // studentMap value is : {Ali=4700, Samia=450, Tamara=500}
// keys in the Map are UNIQUE
studentMap.put('Ali', 480); // studentMap value is : {Ali=480, Samia=450, Tamara=500}
// keys in the Map are CASE SENSITIVE
studentMap.put('ali', 0); // studentMap value is : {Ali=480, Samia=450, Tamara=500, ali=0}


System.debug('studentMap value is : ' + studentMap); 

// get the count of key-value pair in this map 
// size() method 
System.debug('studentMap.size() value is : ' + studentMap.size() ); // studentMap.size() value is : 4

// Get the value according to the key
// Returns the value to which the specified key is mapped, or null if the map contains no value for this key.
// using get(keyGoesHere) return => value

System.debug('studentMap.get(\'Ali\') value is : ' 
                        + studentMap.get('Ali')); // studentMap.get('Ali') value is : 480
System.debug('studentMap.get(\'Samia\') value is : ' 
                        + studentMap.get('Samia')); // studentMap.get('Samia') value is : 450
System.debug('studentMap.get(\'Tamara\') value is : ' 
                        + studentMap.get('Tamara')); // studentMap.get('Tamara') value is : 500
System.debug('studentMap.get(\'BLA\') value is : ' 
                        + studentMap.get('BLA')); // studentMap.get('BLA') value is : null

// check if a key exists in the map
// containsKey(teh key you want to check) and return true/false

System.debug('studentMap.containsKey(\'Ali\') value is : ' 
                + studentMap.containsKey('Ali')); // studentMap.containsKey('Ali') value is : true
System.debug('studentMap.containsKey(\'BLA\') value is : ' 
                + studentMap.containsKey('BLA')); // studentMap.containsKey('Ali') value is : false


// isEmpty method check if the Map is empty or not 
System.debug('studentMap.isEmpty() value is : ' + studentMap.isEmpty()); // studentMap.isEmpty() value is : false
// remove(key) ==> remove the key-value pair if the key exists 
studentMap.remove('ali');
System.debug('studentMap value no ali is : ' + studentMap); // studentMap value no ali is : {Ali=480, Samia=450, Tamara=500}

// clear() ==>> remove all items
studentMap.clear();
System.debug('is Map empty after clear() : ' 
                + studentMap.isEmpty()); // is Map empty after clear() : true



// Create a priceMap , productName , price 
// add 5 items 
// use all the methods we learned above 
// do this task right now for 5-7 minutes 

Map<String,Decimal> priceMap = new Map<String,Decimal>() ; 
priceMap.put('Apple', 5.75);
priceMap.put('Orange', 4.99);
priceMap.put('Grape', 8.99);
priceMap.put('Strawberry', 10.59);
priceMap.put('Banana', 2.5);
System.debug('priceMap value is : ' + priceMap);





