/**
3. Write an Apex code that create List or Array of 10 Integer values. 
   - create another List or Array and
   - store the items in reverse order
   - print it out
 */
 List<Integer> numberList = new List<Integer>{81,71,34,59,22,69,10,31,58,99};
 List<Integer> numberList2 = new List<Integer>();
 // numberList2.add(YourValueHere); 
 
 for(Integer i=numberList.size()-1; i>=0 ;i--) {
    numberList2.add(numberList.get(i));
 }
 System.debug('numberList2 value is : ' + numberList2); 