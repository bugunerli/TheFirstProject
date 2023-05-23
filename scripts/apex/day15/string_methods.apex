/**

*/

String message = '    I    learn   Apex  ';
System.debug('message value is    : ' + message); // message value is    :     I    learn   Apex 

/**
trim()
Returns a copy of the string that no longer contains any leading or trailing white space characters.
*/
System.debug('message.trim() value is : ' + message.trim()); // message.trim() value is : I    learn   Apex

/**
normalizeSpace()
Returns the current String with leading, trailing, and repeating white space characters removed.
*/

System.debug('message.normalizeSpace() value is : ' + message.normalizeSpace()); // message.normalizeSpace() value is : I learn Apex

/**
deleteWhitespace()
Returns a version of the current String with all white space characters removed.
*/
System.debug('message.deleteWhitespace() value is : ' + message.deleteWhitespace()); // message.deleteWhitespace() value is : IlearnApex


