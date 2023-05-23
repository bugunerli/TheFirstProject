/**
# String methods: 

## equals(stringOrId)
Returns true if the passed-in object is not null and represents the same binary sequence of characters as the current string. 
Use this method to compare a string to an object that represents a string or an ID.

## equalsIgnoreCase(secondString)
Returns true if the secondString isn’t null and represents the same sequence of characters as the String that called the method, 
ignoring case.







## indexOfIgnoreCase(substring)
Returns the zero-based index of the first occurrence of the specified substring without regard to case. If the substring does not occur, 
this method returns -1.









*/

 /**
 ## reverse()
Returns a String with all the characters reversed.
*/
  String message = 'You can do it';
  System.debug('message value is : ' + message); // message value is : You can do it
  String reversedMessage = message.reverse();
  System.debug('reversedMessage value is : ' + reversedMessage); // reversedMessage value is : ti od nac uoY

  // INTERVIEW QUESTION:
  // Palindrome:
  // A palindrome is a word, number, phrase, or other sequence of symbols that reads the same backwards as forwards, 
  // such as the words madam or racecar, level, anna, noon, mom, lol, kayak rotator, hannah, ..

  // Write a Pex code to check if a String is palindrome or not
  // the logic to solve this is: reverse and compare two Strings

  String word = 'ahA'; 
 String reversedWord = word.reverse() ; 
 if( word == reversedWord ){
    System.debug('Palindrome!!!!'); 
 }else{
     System.debug('NOT Palindrome!!!!'); 
 }

//  word = word.toUpperCase();
//  System.debug('word value is : ' + word); 


/**
## indexOf(substring)
Returns the index of the first occurrence of the specified substring. If the substring does not occur, 
this method returns -1 .
*/
 //   index    012345678910
String str1 = 'Hello world';
System.debug('str1 value is : ' + str1); // str1 value is : Hello world

System.debug('str1.indexOf(\'o\') value is : ' + str1.indexOf('o')); // str1.indexOf('o') value is : 4
System.debug('str1.indexOf(\'wor\') value is : ' + str1.indexOf('wor')); // str1.indexOf('wor') value is : 6
System.debug('str1.indexOf(\'worX\') value is : ' + str1.indexOf('worX')); // str1.indexOf('worX') value is : -1


/**
## indexOf(substring, index)
Returns the zero-based index of the first occurrence of the specified substring from the point of the given index. 
If the substring does not occur, this method returns -1 .
*/
//   index    012345678910
//           'Hello world';

System.debug('str1.indexOf(\'o\', 5) value is : ' + str1.indexOf('o', 5)); // str1.indexOf('o', 5) value is : 7
System.debug('str1.indexOf(\'o\', 9) value is : ' + str1.indexOf('o', 9)); // str1.indexOf('o', 9) value is : -1


/**
## left(length)
Returns the leftmost characters of the current String of the specified length.
*/
String str2 = 'abcdefg';
System.debug('str2 value is : ' + str2); // str2 value is : abcdefg

System.debug('First character: ' + str2.left(1)); // First character: a
System.debug('First 3 characters: ' + str2.left(3)); // First 3 characters: abc
// if we go out of range, it just returns the whole string without error
// System.debug('str2.left(300) value is : ' + str2.left(300)); // str2.left(300) value is : abcdefg

/**
## right(length)
Returns the rightmost characters of the current String of the specified length.
*/
System.debug('Last character value is : ' + str2.right(1)); // Last character value is : g
System.debug('Last 2 characters value is : ' + str2.right(2)); // Last 2 characters value is : fg
System.debug('Last 3 characters value is : ' + str2.right(3)); // Last 3 characters value is : efg

 /**
 ## mid(startIndex, length)
Returns a new String that begins with the character at the specified zero-based startIndex with the number of characters 
specified by length.
*/
// index     0 1 2 3 4 5 6
// str2      a b c d e f g
System.debug('2 characters starting from index 3 : ' + str2.mid(3, 2)); // 2 characters starting from index 3 : de
System.debug('start from index 100 and get 2 characters ' + str2.mid(1000, 2)); // start from index 100 and get 2 characters

// quick task: print out first and last character of the String
System.debug('first and last character: ' + str2.left(1) + str2.right(1)); // first and last character: ag

// quick task: print the second from the last characte
// solution 1:
// get last two characters then get the first one of that
// for example: abcdefg => fg => f

//String secondFromLast = str2.right(2).left(1); // f

//System.debug('secondFromLast value is : ' + secondFromLast); // secondFromLast value is : f

// Solution 2:
// find the index of 2nd dhaacters from the end
// use mid to start from that index and get 1 character

// index     0 1 2 3 4 5 6
// str2      a b c d e f g
System.debug('index of last character: ' + (str2.length()-1)); // index of last character: 6
System.debug('index of second character from the last: ' + (str2.length()-2)); // index of second character from the last: 5

// mid(startingIndex, characterCountYouWant);
String secondFromLastChar =  str2.mid( str2.length()-2 ,  1 ); 
System.debug('secondFromLastChar value is : ' + secondFromLastChar); // secondFromLastChar value is : f














