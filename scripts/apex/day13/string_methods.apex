/**
String is a Data type to store text

It has a lot of reusable methods that we can us directly
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_methods
 */

String message = 'Hello World';

// https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_length

// length() method: return the charecter count inside the String
System.debug('message.length() value is : ' + message.length()); // message.length() value is : 11

// isEmpty(yourStringHere) method: return true if it's not '' or null else false
System.debug('String.isEmpty(message) value is : ' + String.isEmpty(message)); // String.isEmpty(message) value is : false

String msg1 = ' '; // space is a character because of this will return false
System.debug('String.isEmpty(msg1) value is : ' + String.isEmpty(msg1)); // String.isEmpty(message) value is : false

// isBlank(inputString) method: Returns true if the specified String is white space, empty (''), or null; otherwise, returns false.
System.debug('String.isBlank(msg1) value is : ' + String.isBlank(msg1)); // String.isBlank(msg1) value is : true

// toUpperCase() method: return the UPPERCASE version of the text
System.debug('message.toUpperCase() value is : ' + message.toUpperCase());// message.toUpperCase() value is : HELLO WORLD


// toLowerCase() method:return the LOWERCASE version of the text
System.debug('message.toLowerCase() value is : ' + message.toLowerCase()); // message.toLowerCase() value is : hello world

String season = 'sUmMer';
switch on season.toLowerCase() {// remember switch statement is case sensitive
    when 'spring' {
        System.debug('value Spring match');
    }
    when 'summer' {
        System.debug('value Summer match');
    }
    when 'fall' {
        System.debug('value Fall match');
    }
    when else {
        System.debug('nothing match');
    }
}


// -------------Checking for String contains some substring
/**
contains(substring) method:
Returns true if and only if the String that called the method contains the specified sequence of characters in substring.

Example:
'abcd' contains 'ab' true
'abcd' contains 'ac' true
 */

 System.debug('message.contains(\'Hello\') value is : ' + message.contains('Hello')); // message.contains('Hello') value is : true


