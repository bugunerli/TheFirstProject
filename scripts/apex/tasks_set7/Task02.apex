/**
2. Write an Apex code that create List or Array of unknown numbers(more than 3) of Integer values.
   - Store last 3 items into Integer Array
   - print out the Integer Array
 */
Integer[] numbers = new Integer[]{85,35,87,54,71};

 

List<Integer> lastNumbers = new List<Integer>(); 
for(Integer i=0; i<3 ;i++) {
    lastNumbers.add(numbers.get(numbers.size() - 3 + i));
} 
System.debug('lastNumbers value is : ' + lastNumbers);   

// Akbar's approach:
/**
in order to get the item at certain location, we need index
in order to get last 3 item, we need index of thos 3
  last item           : numbers.size - 1    ==> 9
  scond from the last : numbers.size - 2    ==> 8
  third from the last : numbers.size - 3   ==> 7

creating an integeer array with size 3
add value one by one
 */
Integer[] last3Items = new Integer[3];
last3Items[0] = numbers.get(numbers.size() - 3);
last3Items[1] = numbers.get(numbers.size() - 2);
last3Items[2] = numbers.get(numbers.size() - 1);

System.debug('last3Items value is : ' + last3Items); 
 