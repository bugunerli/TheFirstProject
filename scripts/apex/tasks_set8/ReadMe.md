# Tasks Set 8 : 
1. Write an Apex code that 
   - create a variable to store 1 Random double between 0 to 100 Math.random()*100
   - print it out 
   - print 'pass' if the number is greater than 65
   - print 'A+' if the number is between 95-100
   - run multiple time to observer the result

2. Write an Apex code that create 1 Random double between 0 to 100
   - print it out 
   - if the number is even -> print 'even number!!!' 
   - if it can be divided by 5 with no remainder -> print 'cool number'
   - if it can be divided by 7 with remainder 3  -> print 'cooler number' 

3. Write an Apex code that store list of 10 Integers 
   - print out all odd numbers
   - get the count of the odd numbers and print it out
   - get the sum of the odd numbers and print it out 

4. Write an Apex code that create 2 Random Integer variables 
   - use Math.random()*100 to assign random values to both of them
     - (make sure to convert the double value to Integer)
   - print both variable values 
   - print the larger number value

5. Write an Apex code that 
   - print 10 random Integer values between 1-1000 in 10 lines (loop)

6. Inspired by above code, 
   - Write an Apex code that 
     - store 10 random Integer values between 1-100 into a List of Integer
   - print out the value 
   - get the sum of the numbers 
   - get the average of the numbers

7. Create a List of 10 String with your own values
   - create a Integer variable called randomIndex
   - assign the value to random Integer between (between 0-9)
   - use above index to print out the value at that index

8. Write an Apex code that create List of 10 Integers
   - create a variable called largestValue and assign it to first item in the list
   - use for each loop to loop through each item
   - inside the loop re-assign largestValue to 
     - the result of Math.max(largestValue, each)
   - print out largestValue outside the loop
   - and that's how we can get max values in List of Integers
   - try to change the values of List item and run again

9. inspired by above, now use same approach to find smallestValue in List of 10 Integers
   - create a variable called smallestValue and assign it to first item in the list
   - use for each loop to loop through each item
   - inside the loop re-assign smallestValue to 
     - the result of Math.min(smallestValue, each)
   - print out smallestValue outside the loop
   - and that's how we can get min values in List of Integers
   - try to change the values of List item and run again 

10. Write an Apex code that create a role List of 10 String 
   - join each item by space and store it into a String variable joined text 
     - and print it out
   - loop through the list 
     - print out each item along with character count in each item
     - in this format : 'admin has 5 characters'

   - loop through the list 
     - if it contains('dev') print out the items in UPPERCASE
     - if it contains('admin') print out the items removing the word admin : str.remove('admin')