/**
5. Write an Apex code that create List or Array of 5 Integer values. 
   - double the value of each item 
   - for example {1,4,6,4,6} => {2,8,12,8,12}
 */
 List<Integer> numberList = new List<Integer>{1,4,6,4,6};
 List<Integer> doubleNumberList = new List<Integer>();
 // doubleNumberList.add(YourValueHere); 
 
 for(Integer each : numberList) {
    doubleNumberList.add(each * 2);
 }
 System.debug('Current value : ' + doubleNumberList);

    
 