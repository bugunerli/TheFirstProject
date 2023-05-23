// Get 1 Account Record (Name, AnnualRevenue, Rating)
// SELECT Name, AnnualRevenue, Rating FROM Account LIMIT 1
// and Store it into Account variable

// Apex and SOQL Work seamlessly together
// We can use SOQL to get data and store it into
// sObject type or list of sObject type
// [ YOUR SOQL GOES HERE]

// This will throw an error since we are trying to store many Account
// into a variable that hold single account
// system.QueryException: List has more than 1 row for addignment to sObject
// AnonymousBlock: line 11, column 1
// Account a = [Select Name from Account];
// System.debug('a value is : ' + a);

String str = 'Green';

// Get all the Contact FirstName, LastName
// if the LastName field value is whatever variable str has
// SELECT FirstName, LastName FROM Contact
// WHERE LastName = 'Green'

// SOQL Query inside [] is not a String
// If we want to use a variable, we must add : in front of the variable
// this is called Bind Variable : simply a variable inside SOQL

List<Contact> contactLst = [
  SELECT FirstName, LastName
  FROM Contact
  WHERE LastName = :str
];

System.debug('contactLst value is : ' + contactLst);
// contactLst value is : (Contact:{FirstName=Avi, LastName=Green, Id=003Dn000009y96sIAA})

// Create 2 String variables for caseStatus and casePriority
// Get All the cases with status of caseStatus and Priority of casePriority
// Store the result in List of Case

String caseStatus = 'Closed';
String casePriority = 'High';

List<Case> caseList = [
  SELECT Subject, Status, Priority
  FROM CASE
  WHERE Status = :caseStatus AND Priority = :casePriority
];
// print out Subject, Status, Priority for each Case
for (Case each : caseList) {
  System.debug('-------------------------');

  System.debug(each.Subject + '--' + each.Status + '--' + each.Priority);
}
