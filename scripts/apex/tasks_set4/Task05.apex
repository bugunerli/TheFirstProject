/**
5. Create a List of 10 names into List of String with some duplicate value 
   find out how many unique names showed up in the list using below approach
   1. create an empty Set of String 
   2. Iterate over names List using for each loop
   3. use add method of Set to add each items into Set
   4. outside the loop print out the size of set
 */

List<String> names=new List<String>{'Esra','Samia','Okan','Natasha','Dzhamilya','Okki','Samia','Akbar','Elif','Esra'};

Set<String> setNames=new Set<String>();
for(String each : names){
    setNames.add(each);
}
System.debug(setNames);
System.debug('The size of setNames is '+setNames.size());