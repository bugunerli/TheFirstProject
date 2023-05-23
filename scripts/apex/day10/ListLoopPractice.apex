/**
Create a list of 10 Decimal numbers
in 2 separate loops

in first loop
iterate over the list and print it out the each items
skip item number 3and 7 while printing 

in second loop
iterate over the list and print it out the each items
break out of the loop if the number is more than 100
 */
List<Decimal> numbers = new List<Decimal>{
  1.11,
  22.22,
  100.99,
  3.33,
  14.44,
  200.00,
  12.50,
  8.88,
  9.99,
  50.00
};

// print out the last item value without hard coding
// first get the last  item index, it's always 1 less thn item count
Integer indexOfLastItem = numbers.size() - 1;
System.debug('Index of Last Item ' + indexOfLastItem); // 9
// 2. then print out the last item value using get() method
System.debug('last Item value is ' + numbers.get(indexOfLastItem)); // 50.00

// in first loop
//iterate over the list and print it out the each items
// skip item number 3 and 7 while printing
for (Integer index = 0; index < numbers.size(); index++) {
  // item 3 or item 7
  if (index == 2 || index == 6) {
    continue;
  }
  System.debug('Index #' + index + ' : ' + numbers.get(index));
}

/**
 in second loop
iterate over the list and print it out the each items
break out of the loop if the number is more than 100
  */
for (Decimal each : numbers) {
  if (each > 100) {
    break;
  }
  System.debug(each);
}

// for loop version is below
for (Integer i = 0; i < numbers.size(); i++) {
  if (numbers.get(i) > 100) {
    break;
  }
  System.debug(numbers.get(i));
}


   
