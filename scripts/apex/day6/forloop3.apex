/**
Count from 1 from to 10 using for loop
    print the count multiplied by 5
    output should look like this:
    1 x 5 = 5
    2 x 5 = 10
    3 x 5 = 15
    ....
 */
 

//Integer count2=1;
for(Integer count2=1; count2<=10; count2++){
    System.debug(count2+ ' x 5 = '+(count2*5));
 }

 /**
 Continue from above code,
 Above code works great if you just want to get the
 multiplication table of 5, we want to be able to
 provide any number not just 5 and generate
 multiplication table of any numbers
  */

  
  
  
  // first number you get from variable count3
  // secod number you get from variable num
  // result you get by multiplying 2 numbers
  // eventually generate this output
  // in below format
  // // 1 x 5 = 5

Integer num=7;
Integer count3=1;
for(count3=1;count3<=10;count3++){
    System.debug(count3 +' x '+num+' = '+(count3*num));
}

/**
Give a number, print out below

YourNumber + 1 = the result
YourNumber + 2 = the result
YourNumber + 3 = the result
...
YourNumber + 10 = the result
 */

Integer myNumber=7;
for(Integer i=1; i<=10; i++){
    System.debug(myNumber+' + '+i+' = '+(myNumber+i));
}
  
