/**
 * 
 * Create a contact with fields 
 *  LastName , Level__c
 * insert it into Salesforce
 * 
 * Create 3 books under this contact 
 *   with Book Name : Book (1,2,3) + lastName 
 * 
 * insert these books 
 */

Contact c1 = new Contact(LastName = 'Snow', Level__c = 'Primary');
insert c1;

List<Book__c> bookList = new List<Book__c>();


bookList.add(new Book__c(Name = 'Book1 ' + c1.LastName, Contact__c = c1.Id));
bookList.add(new Book__c(Name = 'Book2 ' + c1.LastName, Contact__c = c1.Id));
bookList.add(new Book__c(Name = 'Book3 ' + c1.LastName, Contact__c = c1.Id));

insert bookList;
/**
Trigger.operationType value is : BEFORE_INSERT
Running awesome Before Insert logic here
Trigger.operationType value is : AFTER_INSERT
Running awesome After Insert logic here
Trigger is running for Event : BEFORE_INSERT
Trigger is running for Event : AFTER_INSERT
 */
