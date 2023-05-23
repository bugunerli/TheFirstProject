// 2. Given a String variable message contains long string 
//    - for example :  'aaabbcccccddhhhhhhzzzz'
String message = 'aaabbcccccddhhhhhhzzzz';
System.debug('message value is : ' + message); // message value is : aaabbcccccddhhhhhhzzzz
//    - Get a List<String> out of this String containing each characters 
List<String> charList = message.split('');
System.debug('charList value is : ' + charList); // charList value is : (a, a, a, b, b, c, c, c, c, c, ...)
//    - Create an empty Map<String,Integer> called letterFrequencyMap
Map<String, Integer> letterFrequencyMap = new Map<String, Integer>();
// yourMapName.put(keyGoHere, valueGoHere);

//    - Loop through your list 
for(String eachChar : charList) {
    //System.debug('Current value : ' + each);
    if( ! letterFrequencyMap.containsKey(eachChar) ){
        // if the character does not already show up in the map 
        // it means it's showing up for the first time, count is 1
        letterFrequencyMap.put(eachChar, 1);
    }else{
       // take existing value of the key and increment by 1
       Integer count = letterFrequencyMap.get(eachChar);
       ++count; // increment by 1
       // assign it back to the key
       letterFrequencyMap.put(eachChar, count);
    }
}
System.debug('letterFrequencyMap value is : ' + letterFrequencyMap); 
// letterFrequencyMap value is : {a=3, b=2, c=5, d=2, h=6, z=4}
    
//      - store each character as key 
//      - store frequency of each character as value into the map
//      - result should be {a=3, b=2, c=5, d=2, h=6, z=4}
//    - Loop through this Map (using keySet of course)
//      - print out the characters showed up more than twice 
//      - the result should be c , h , a , z 

for(String eachKey : letterFrequencyMap.keySet()) {
    Integer count = letterFrequencyMap.get(eachKey) ; 
    if(count>2){    // if( letterFrequencyMap.get(eachKey) > 2 ){
        System.debug('Current value : ' + eachKey);
    }

}
/**
Current value : a
Current value : c
Current value : h
Current value : z
 */
    