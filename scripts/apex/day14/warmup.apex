/**
DO NOT USE MATH.MAX OR MIN
 */

 Integer num1 = 10, num2 = 20;
 Integer largerNumber = Math.max(num1, num2);

// Ternary Approach
//  Integer num1 = 10, num2 = 20;
//  Integer largerNumber = (num1 > num2) ? num1 : num2 ;

//  if( num1>num2 ){
//     largerNumber = num1;        
//  }else{
//     largerNumber = num2;
//  }

Double d1 = 15.7;
System.debug('d1 value is : ' + d1); // d1 value is : 15.7
// convert this double value to int
Integer score1 = d1.intValue();
System.debug('score1 value is : ' + score1); // score1 value is : 15

Integer score2 = Math.round(d1);
System.debug('score2 value is : ' + score2); // score2 value is : 16

// Math.random() ==> 
// Returns a positive Double that is greater than or equal to 0.0 and less than 1.0.
// if you want to get the number from 0.0 - 10.0 instead 
//   -> simply multiply by 10  ===>  
// if you want to get the number from 50.0 - 60.0 instead 
//   -> simply multiply by 10 and + 50 ===>  
// if you want to get the number from 0.0 - 100.0 instead 
//   -> simply multiply by 100  ===> 
// if you want to get the number from 0.0 - 1000.0 instead 
//   -> simply multiply by 1000  ===>  
// if you want to get the number from 300.0 - 1300.0 instead 
//   -> simply multiply by 1000  + 300 ===>

Double randomDbl = Math.random() * 100;
System.debug('randomDbl value is : ' + randomDbl); // randomDbl value is : 54.71786449630653
//Math.random(your double value here) return rounded up Integer
Integer randomInt = Math.round(randomDbl);
System.debug('randomInt value is : ' + randomInt); // randomInt value is : 55

// print out 50 random numbers
for(Integer i=1; i<=50 ;i++) {
   Integer randomNumber = Math.round(Math.random() * 100);
   System.debug('randomNumber value is : ' + randomNumber); 
}

// System.debug('Math.round(5.4) value is : ' + Math.round(5.4)); // Math.round(5.4) value is : 5
// System.debug('Math.round(5.7) value is : ' + Math.round(5.7)); // Math.round(5.7) value is : 6
// System.debug('Math.round(5.99) value is : ' + Math.round(5.99)); // Math.round(5.99) value is : 6
// System.debug('Math.round(0.99) value is : ' + Math.round(0.99)); // Math.round(0.99) value is : 1





