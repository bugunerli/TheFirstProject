






// method chaining
// calling one method after another method
// it's possible as long as the method you are calling
// is the method available from the Data type of returned value
String str = 'cookie';
//System.debug('str value is: ' + str); // str value is: cookie

String result = str.toUpperCase().left(4).reverse();
//System.debug('result value is : ' + result); // result value is : KOOC


/**
## split(regExp)
Returns a list that contains each substring of the String that is terminated by either the regular expression regExp or 
the end of the String.

Returns a list that contains each substring of the String that is split by the 
by the given string, for example if you split sentence by space you get list of string 
conationing each words

*/

// how many word does this sentence have?
String message = 'VA Weather is beautiful Today';
// split this sentence by space so we can get list of string that contains words
List<String> wordList = message.split(' ');
//System.debug('wordList value is : ' + wordList); 


for(String each : wordList) {
    System.debug('Current value : ' + each);
}// It returns as below:
// Current value : VA
// Current value : Weather
// Current value : is
// Current value : beautiful
// Current value : Today

System.debug('how many word does this sentence have : ' + wordList.size()); // how many word does this sentence have : 5

for(String each : wordList) {
    System.debug('Current value : ' + each + ' : length is ' + each.length());
}// It returns as below:
// Current value : VA : length is 2
// Current value : Weather : length is 7
// Current value : is : length is 2
// Current value : beautiful : length is 9
// Current value : Today : length is 5

String name = 'Mario Cruz';
// if you split any String by empty string,
// you end up with list of each character
List<String> charList = name.split('');
System.debug('charList value is : ' + charList); // charList value is : (M, a, r, i, o,  , C, r, u, z)


    


    