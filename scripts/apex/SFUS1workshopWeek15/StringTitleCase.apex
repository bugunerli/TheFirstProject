/*Create a String variable called message that contains a sentence with mixed case. 
for example : 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase'
   - split to get List of String containing each words
   - use for loop to go though each items
      - make each item TitleCase (lookup capitalize method from String class)
      - make sure to assign it back to yourList[i] so it actually update your list item
   - outside your loop , print out to see latest change
   - join the list items with space 
      => re-assign back to the String variable message
      => expect to see 'Apex Made It Easy To Work With Salesforce Database' when printing 
*/
String message = 'Even MIRACLes takeS A Little TIme';
List<String> wordList = message.split(' ');
System.debug(wordList); // (Even, MIRACLes, takeS, A, Little, TIme)

////capitalize(): Returns the current String with the first letter changed to title case.
for(Integer i = 0; i<=wordList.size()-1; i++){
    String TitleCased = wordList.get(i).toLowerCase().capitalize();
    wordList.set(i, TitleCased);

}
System.debug(wordList); // (Even, Miracles, Takes, A, Little, Time)

// join(iterableObj, separator): Joins the elements of the specified iterable object, such as a List, into a single String 
// separated by the specified separator

message = String.join(wordList, '*');
System.debug(message); // Even*Miracles*Takes*A*Little*Time

/*
ALTERNATIVE SOLUTION FOR TASK 2 USING FOR EACH LOOP:
List<String> wordList = message.split(' ');
System.debug('wordList value is : ' + wordList);
List <String> capitalizedList = new List <String>(); 

for (String eachWord : wordList){
  capitalizedList.add(eachWord.toLowerCase().capitalize());
}
System.debug('capitalizedList value is : ' + capitalizedList);

message = String.join(capitalizedList, ' ');
System.debug('message value is : ' + message); 
*/

