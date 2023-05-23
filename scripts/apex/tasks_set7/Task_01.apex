/**
1. Write an Apex code that create List or Array of 10 Integer values. 
   - remove duplicate and print it out 
   - print out the unique item count and difference between total list item count
 */

 List<Integer> numberList = new List<Integer>{74,36,58,25,90,11,31,74,36,58};
//  Set<Integer> nonDuplicateNumberList = new Set<Integer>(numberList);
//  System.debug('nonDuplicateNumberList value is : ' + nonDuplicateNumberList); 
List<Integer> nonDuplicateNumberList = new List<Integer>();

for(Integer eachNumber : numberList) {
    Integer count = 0;
    for(Integer each : numberList) {
        if( eachNumber == each ){
            count++;
        }
    }
    if( count == 1 ){
        nonDuplicateNumberList.add(eachNumber);
    }    
}    
System.debug('nonDuplicateNumberList value is : ' + nonDuplicateNumberList); 
    
  
 
 