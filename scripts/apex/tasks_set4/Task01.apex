/**
1. Write a program that calculates the sum of all odd numbers from 1 to 100 using a for loop.
(try out the same with while loop and do while loop as practice)
 */

Integer sumOfOdd=0;
for(Integer i=1; i<=100; i+=2){
   //System.debug(i);
   sumOfOdd += i;
}
System.debug('Sum of Odd from 1 to 100 is '+sumOfOdd);

// while loop version of same task

Integer sumOfOdd1=0;
Integer i=1;
while(i<=100){
    sumOfOdd1+=i;
    i+=2;
}
System.debug('Sum of Odd from 1 to 100 with while loop is '+sumOfOdd1);