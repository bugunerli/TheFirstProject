/**
Declare a List of Integer variable and initialize it's value (empty)
Fill up the list with 100 items, starting with 1 ---> 100
 */

List<Integer> numberList=new List<Integer>();
// numberList.add(1);
// numberList.add(2);
// numberList.add(3);
// numberList.add(4);
// numberList.add(5);
for(Integer count=1; count<=100; count++){
    numberList.add(count);
}
System.debug(numberList); // (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, ...)
// get the size of the list using size method of the list
System.debug(numberList.size()); // 100

// Create a list of Integer and store 15 items
// all items value should be 10;
// here is the content of the list
// (10, 10, 10, 10, 10, 10, 10, 10, 10, 10, ... 10)
List<Integer> voteNumbers=new List<Integer>();
for(Integer i=1; i<=15; i++){
    voteNumbers.add(10);
}
System.debug(voteNumbers);

// How to count the items inside the list
// so we get the a number
// size() method of list
Integer voteCount=voteNumbers.size();
System.debug(voteCount); // 15

// or you can directly print it out without saving
System.debug(voteNumbers.size()); // 15




