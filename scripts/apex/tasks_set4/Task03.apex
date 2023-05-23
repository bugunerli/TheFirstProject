/**
3. Write a program that store 10 random Decimal numbers in List of Decimal
   print out the size of the list 
   print out the sum of all numbers
   print out the average of all numbers 
   now try to go back to the code where you added elements , 
   add more items into the list and run your program again to see if it works.
    */

List<Decimal> prices=new List<Decimal>{1.29,2.9,5.7,6.7,4.3,7.8,3.3,6.9,8.8,2.2,4.5};

// print out the size of the list
Integer priceCount=prices.size();
System.debug('Price count isn the list is: '+priceCount); // 11

// print out the sum of all numbers
Decimal sum=0;
for(Decimal eachPrice : prices){
    sum+=eachPrice;
}
System.debug('Sum of all numbers in pries list is '+sum); // 54.39

// print out the average of all numbers
Decimal average=sum/priceCount;
System.debug('The average of all numbers in prices list is '+average);
