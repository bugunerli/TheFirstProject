/**
Set is a collection of unique elements 
It's a unordered collection meaning there is no index
order is not guaranteed
 */

 Set<Integer> numberSet = new Set<Integer>();
 numberSet.add(10);
 numberSet.add(10);
 numberSet.add(10);
 numberSet.add(10);
 numberSet.add(10);
 numberSet.add(10);

 System.debug('numberSet value is : ' + numberSet); // numberSet value is : {10}

 // methods

 // .size();
System.debug('numberSet.size() value is : ' + numberSet.size()); // numberSet.size() value is : 1

 // .clear(); delete all items in the Set
numberSet.clear();
System.debug('numberSet value is : ' + numberSet); // numberSet value is : {}

 // .isEmpty(); return ture if size is 0, return false if not
 System.debug('numberSet.isEmpty() value is : ' + numberSet.isEmpty()); // numberSet.isEmpty() value is : true


numberSet.add(10);
numberSet.add(20);
numberSet.add(30);
System.debug('numberSet value is : ' + numberSet); // numberSet value is : {10, 20, 30}

 // .contains(valueToCheck); // return true if item exist, false if not
System.debug('numberSet.contains(10) value is : ' + numberSet.contains(10)); // numberSet.contains(10) value is : true
System.debug('numberSet.contains(15) value is : ' + numberSet.contains(15)); // numberSet.contains(15) value is : false

 // remove(valueToCheck);
 // UNLIKE LIST, IT EXPECTS A VALUE NOT INDEX
 numberSet.remove(30);
 System.debug('numberSet value is : ' + numberSet); // numberSet value is : {10, 20}

 // YOU CAN NOT LOOP THROUGH SET USING FOR LOOP
 // BECAUSE THERE IS NO INDEX
 // Code snippet : ForEach
 // update the collection name
 // hit tab to select data type if needed

 for(Integer each : numberSet) {
    System.debug('Current value : ' + each);
 }
  /**
 // OUTPUT:
   Current value : 10
   Current value : 20
  */


    

 