/**
6. Write an Apex code that create List or Array of 5 String values
   - add the word sf+index at the end of each element
   - {'Anakin','Obivan','Yoda','Windu','Ahsoka'} => 
   - {'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'}
 */
 List<String> strList = new List<String>{'Anakin','Obivan','Yoda','Windu','Ahsoka'};
 List<String> strList2 = new List<String>();
 String eachIndexofList = ' '; 
 // strList2.add(YourValueHere); 
 
 for(Integer i=0; i<strList.size(); i++) {
    eachIndexofList = strList.get(i) + (' sf'+(i+1));
    strList2.add(eachIndexofList);
 }
 System.debug('strList2 value is : ' + strList2); 
    
 