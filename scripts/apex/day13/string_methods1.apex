/**
String is a Data type to store text

It has a lot of reusable methods that we can us directly
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_methods
 */
 String message = 'Hello World';


// -------------Checking for String contains some substring
/**
contains(substring) method:
Returns true if and only if the String that called the method contains the specified sequence of characters in substring.

Example:
'abcd' contains 'ab' true
'abcd' contains 'ac' true
 */

 System.debug('message.contains(\'Hello\') value is : ' + message.contains('Hello')); // message.contains('Hello') value is : true
 System.debug('message.contains(\'hello\') value is : ' + message.contains('hello')); // message.contains('Hello') value is : false
 System.debug('message.contains(\'Jon\') value is : ' + message.contains('Jon')); // message.contains('Hello') value is : false

 /**
 containsIgnoreCase(substring) method:
Returns `true` if the current String contains the specified sequence of characters without regard to case; otherwise, returns `false`.
  */
  System.debug('message.containsIgnoreCase(\'hello\') value is : ' + message.containsIgnoreCase('hello')); //message.containsIgnoreCase('hello') value is : true

/**
`  containsNone(inputString) method:  `
Returns `true` if the current String doesn’t contain any of the characters in the specified String; otherwise, returns `false`.
 */
 System.debug('message.containsNone(\'Hlo\') value is : ' + message.containsNone('hlo')); // message.containsNone('Hlo') value is : false
 System.debug('message.containsNone(\'AB\') value is : ' + message.containsNone('AB')); // message.containsNone('AB') value is : true
 System.debug('message.containsNone(\'LO\') value is : ' + message.containsNone('LO')); // message.containsNone('LO') value is : true 

 System.debug('message has no Number : ' + message.containsNone('0123456789')); // message has no Number : true

System.debug('==================================='); 
 /**
 `  containsOnly(inputString) method:  `
Returns true if the current String contains characters only from the specified sequence of 
characters and not any other characters; otherwise, returns false.
  */
// Helo Wrd

  System.debug('message.containsOnly(\'Helowrd\') value is : ' + message.containsOnly('Helowrd')); // message.containsOnly('Helo Wrd') value is : true


  System.debug('message.containsOnly(\'He\') value is : ' + message.containsOnly('He')); // message.containsOnly('He') value is : false

  System.debug('message.containsOnly(\'ABC\') value is : ' + message.containsOnly('ABC')); // message.containsOnly('ABC') value is : false

  String text = 'aaaaoooeee';
  System.debug('text value is : ' + text); 
  // check if this text only contains vowel : a e o u i
  System.debug('text.containsOnly(\'aeoui\') value is : ' + text.containsOnly('aeoui')); 

  System.debug('=============Equality=================='); 
  System.debug('is message == Hello World ' + (message=='Hello World'));  // true
  System.debug('is message == hello World ' + (message=='hello world'));  // true

  // equals(anotherString) method for checking equality in case sensitive manner
  System.debug('message.equals(\'Hello World\') value is : ' + message.equals('Hello World')); // true
  System.debug('message.equals(\'hello world\') value is : ' + message.equals('hello world')); // true

  /**
  ` equalsIgnoreCase(secondString) method : `
Returns true if the secondString isn’t null and represents the same sequence of characters 
as the String that called the method, ignoring case.
This is literally the method version of ==
   */
   System.debug('message.equalsIgnorecase(\'hello world\') value is : ' + message.equalsIgnorecase('hello world')); // true

   /**
   ` join(iterableObj, separator) method : `
Joins the elements of the specified iterable object, such as a List, into a single String separated by the specified separator.
    */

/**
7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated 
   by hyphen(-) and last item should not have -
   - Example : Your list `{'This','is','The','Way','Student'}`
     - value of joinedText `'This-is-The-Way-Student'`
 */


    List<String> strList = new List<String>{
  'This',
  'is',
  'The',
  'Way',
  'Student'
};
String joinedText = String.join(strList, '-');
System.debug('joinedText value is : ' + joinedText); // joinedText value is : This-is-The-Way-Student

String str = 'abcabc';
/**
` remove(substring) method: `
Removes all occurrences of the specified substring and returns the String result.
 */
System.debug('str.remove(\'a\') value is : ' + str.remove('a')); // str.remove('a') value is : bcbc
str = str.remove('a');
System.debug('str.remove(\'a\') value is : ' + str);

