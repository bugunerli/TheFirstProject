/**
 
*/
// Creating a Contact variable and initializing it's value
Contact c1 = new Contact();
// assigning the field values
c1.FirstName = 'Zeynep';
c1.LastName = 'Yildiz';
c1.Email = 'zeynep@force.com';
// printing
System.debug('c1 value is : ' + c1); // c1 value is : Contact:{FirstName=Zeynep, LastName=Yildiz, Email=zeynep@force.com}

// or you can directly provide fields value inside ()
// while asigning the value to the variable
Contact c2 = new Contact(FirstName='Gulya', LastName='Kadyrova');
System.debug('c2 value is : ' + c2); // c2 value is : Contact:{FirstName=Gulya, LastName=Kadyrova}

// Create a List of Contact and initialize it's value
List<Contact> contacts = new List<Contact>();
// store above 2 Contact instances into the List
contacts.add(c1);
contacts.add(c2);
contacts.add( new Contact(FirstName='Natalya', LastName='Tsoy') );

System.debug('contacts value is : ' + contacts); 
/**
contacts value is : (Contact:{FirstName=Zeynep, LastName=Yildiz, Email=zeynep@force.com}, Contact:{FirstName=Gulya, 
LastName=Kadyrova}, Contact:{FirstName=Natalya, LastName=Tsoy})
*/ 
System.debug('======================================='); 

// Print out the first item in the List (either with list syntax or array)
System.debug('contacts.get(0) value is : ' + contacts.get(0)); // contacts.get(0) value is : Contact:{FirstName=Zeynep, LastName=Yildiz, Email=zeynep@force.com}
System.debug('contacts[0] value is : ' + contacts[0]); // contacts[0] value is : Contact:{FirstName=Zeynep, LastName=Yildiz, Email=zeynep@force.com}
// Print out the first item First name in the List (either with list syntax or array)
System.debug('#######################################'); 
// String firstContactFirstName = contacts.get(0).FirstName;
String firstContactFirstName = contacts[0].FirstName;
System.debug('firstContactFirstName value is : ' + firstContactFirstName);// firstContactFirstName value is : Zeynep 

// Print out the second item in the List (either with list syntax or array)


// Print out the second item last name in the List (either with list syntax or array)

// Loop through eah item and print them out

insert contacts;

 


