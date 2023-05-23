// Create a priceMap , productName , price 
// add 5 items 
// use all the methods we learned above 

// Map<String,Decimal> priceMap = new Map<String,Decimal>() ; 
// priceMap.put('Apple', 5.75);
// priceMap.put('Orange', 4.99);
// priceMap.put('Grape', 8.99);
// priceMap.put('Strawberry', 10.59);
// priceMap.put('Banana', 2.5);
// System.debug('priceMap value is : ' + priceMap); 

// Creating Map with value filled up already
Map<String, Decimal> priceMap = new Map<String, Decimal>{
                                                    'Apple'=> 5.75,
                                                    'Orange'=> 4.99,
                                                    'Grape'=> 8.99,
                                                    'Strawberry'=> 10.59,
                                                    'Banana'=> 2.5
                                                    };

System.debug('priceMap value is : ' + priceMap); 
//priceMap value is : {Apple=5.75, Banana=2.5, Grape=8.99, Orange=4.99, Strawberry=10.59}

// check if this Map does not contain Mango, if not then add Mango => 6.99
if( ! priceMap.containsKey('Mango') ){
    priceMap.put('Mango', 6.99);
}
System.debug('priceMap value is : ' + priceMap); 
// priceMap value is : {Apple=5.75, Banana=2.5, Grape=8.99, Mango=6.99, Orange=4.99, Strawberry=10.59}

// if Banana price is greater than 2 ==> update it to 1.99
if( priceMap.get('Banana') > 2 ){
    priceMap.put('Banana', 1.99);
}
System.debug('priceMap value is : ' + priceMap); 
// priceMap value is : {Apple=5.75, Banana=1.99, Grape=8.99, Mango=6.99, Orange=4.99, Strawberry=10.59}

// keySet() method, return all the keys in Set<YourKeyDataType>
Set<String> allKeys = priceMap.keySet();
System.debug('allKeys value is : ' + allKeys);
// allKeys value is : {Apple, Banana, Grape, Mango, Orange, Strawberry} 


// Iterate over each key and print it out
for(String eachKey : allKeys) {
    System.debug('Current key : ' + eachKey);
    System.debug('Value of this key ' + priceMap.get(eachKey)); 
    System.debug('----------------------------------'); 
}
/**
Current key : Apple
Value of this key 5.75
----------------------------------
Current key : Orange
Value of this key 4.99
----------------------------------
Current key : Grape
Value of this key 8.99
----------------------------------
Current key : Strawberry
Value of this key 10.59
----------------------------------
Current key : Banana
Value of this key 1.99
----------------------------------
Current key : Mango
Value of this key 6.99
----------------------------------
 */


    


// values() method, return all the values in List<YourValueDataType>
List<Decimal> priceList = priceMap.values();
System.debug('priceList value is : ' + priceList); 
// priceList value is : (5.75, 4.99, 8.99, 10.59, 1.99, 6.99)

