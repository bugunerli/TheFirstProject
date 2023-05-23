/**
Create a list of Integer with 8 items 
print out the count of items in this list 
Iterate over the list (use loop to go through each and every item)
print out only if the number is greater than 5
 */
 List<Integer> shoeSizeList = new List<Integer>{4,7,9,2,7,8,12,1} ; 
 System.debug('Item size is ' +  shoeSizeList.size()); //print out the count of items in this list


 for(Integer eachSize : shoeSizeList){
    if(eachSize > 5){ 
        System.debug(eachSize); 
    }
 }
 // output 7  9  7  8  12 
 
 // get the sum of shoe sizes only if the number is greater than 5
 Integer sum = 0;
 for( Integer eachSize : shoeSizeList ){
     // only add the size to sum if it is greater than 5
     if(eachSize > 5) {
        sum += eachSize; 
     }
 }
 System.debug('Sum of sizes greater than 5: ' + sum); // Sum of sizes greater than 5: 43

// get the count of shoe sizes 
// only if the number is greater than 5
// create a variable to hold the count 
Integer count = 0; 
// iterate over each shoe sizes 
for(Integer each : shoeSizeList){
    // check if the number is greater than 5
    if(each > 5){
        // if it is, increment the count by 1 
        count++; 
    }
    
  }
// by the time the loop finish,
// we will end up with count of sizes greater than 5
System.debug('Count of shoe sizes greater than 5: '+ count); // Count of shoe sizes greater than 5: 5
