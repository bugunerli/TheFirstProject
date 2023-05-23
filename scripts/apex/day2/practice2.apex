/*
Extract variables from below sentence
create variables with proper type
and use it in debug statement to show in the log

    My name is Your Name
    I am X years old
    I live in XX State
    I attend class daily (trueOrFalse)
    I am X.XX feet tall
*/

// data type should always start with uppercase
// variable name should always start with lowercase
// if you have more than one word use camelcase
String studentName='Okan';
Integer studentAge=35;
String studentState='CA';
Boolean attendClass=true;
Decimal studentHeight=5.1;

System.debug('My Name is '+studentName+'.');
System.debug('I am '+studentAge+' years old. ');
System.debug('I live in '+studentState+' State.');
System.debug('I attend class daily '+attendClass);
System.debug('I am '+studentHeight+' feet tall.');


// Create multiple variable with same type in one line
/*
Integer num1=10;
Integer num2=20;
Integer num3=30;
*/
// It can be done easily as below
Integer num1=10, num2=20, num3=30;

// Relational Operators   > , >= , < , <= , == , != <> 
// it take two items and return true or false result 

// Check if num1 is greater than num2 and return the result into a variable
Boolean isNum1GreaterThanNum2 =  num1 > num2 ;   //false

System.debug('Is Num1 Greater Than Num2 : ' + isNum1GreaterThanNum2);

Boolean isNum2LessThanNum3 =   num2 < num3 ;   //true

System.debug('Is Num2 Less Than Num3 : ' + isNum2LessThanNum3 );

// Compare num1 is greater than or equals num3 and directly print out the result
// in this format : Is Num1 Greater Than Num3 : falseOrTrue


		// use paranthesis to see (num01>=num03) as one than concatenate
System.debug('Is Num1 Greater Than Num3: '+(num1>=num3) );

// == checking for equality of two items, = is assignment operator

// check if num03 value is 30 or not

System.debug('Is num02 and num03 equal? : '+ (num3==num2) );

// checking for Inequlity of 2 items <>, !=
System.debug('Is num01 not equal to num02: '+ (num1<>num2) );
System.debug('Is num01 not equal to num02: '+ (num1!=num2) );

String langage='Apex';
// == on String equlity check is case insensitive
System.debug('Is the language Apex or not: '+(langage=='Apex') ); // true
System.debug('Is the language Apex or not: '+(langage=='apex') ); // true
System.debug('Is the language Apex or not: '+(langage=='ApEx') ); // true

// Logical Operators: AND (&&), OR (||), NOT (!)

Integer num4=40, num5=50, num6=60;

/// is num4 more than 20 and less than 45
// store the result into a boolean variable and print it out

Boolean isNum4Between20And45=(num4>20) && (num4<45); // true
System.debug('Is ' +num4+ ' Between 20 and 45: '+isNum4Between20And45) ; // true

// Check if num5 is greater than 100 or less than 20;
Boolean isNum5GreaterThan100OrLessThan20=(num5>100) || (num5<20); // false
System.debug('Is ' +num5+ ' Greater than 100 or Less than 20: '+isNum5GreaterThan100OrLessThan20);

System.debug( isNum4Between20And45 ); // true
System.debug( !isNum4Between20And45 ); // false

System.debug(!true); // false
System.debug(!false); // true

// --------Compound Operator: += -= *= /=

Integer score=100;

// increase the value of the score by 5

//score=score+5; // 105
  score += 5;
  System.debug('increase the value of the score by 5: '+score);
// decrease the value of the score by 55

//score=score-55; // 50
  score -= 55; // 50
  System.debug('decrease the value of the score by 55: '+score);
// double the value of score
//score=score * 2; 
  score *= 2; // 100
  System.debug('double the value of score: '+score);
// divide the current value of score by 4 and reassign
//score=score / 4; // 25
  score /= 4; // 25
  system.debug('divide the current value of score by 4: '+score);

// using += for String
String myName='Jon';
//myName = myName + 'Snow';
myName += ' Snow'; // Jon Snow
myName += ' of Winterfell';
// Jon Snow of Winterfell
System.debug('Name: ' + myName);

// Increment and Decrement Operator ++ --

Integer age=20;

// increase the value by 1 
//age = age + 1 ;  // 21
//age += 1 ;  // 21
++age ; // 21
System.debug('age after ++ is ' + age);

// decrease the value of age by 1
// age = age - 1; // 20
// age -= 1; // 20;
--age; // 20
System.debug('age fter -- is ' + age);
