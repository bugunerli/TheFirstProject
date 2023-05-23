trigger ContactTrigger on Contact (before insert, after insert, 
                                   before update, after update,
                                   before delete, after delete,
                                   after undelete) {

    System.debug('Trigger.operationType value is : ' + Trigger.operationType); 

    
    //  Task 1 : 
    //     - add all 7 events 
    //     - write if statement to run code conditionally if it was before_insert
            if( Trigger.isBefore && Trigger.isInsert ){
                System.debug('Running awesome Before Insert logic here'); 
            }
    //     - write if statement to run code conditionally if it was after_insert

    /**
     * When the contact is created, if the Level__c field value is Primary
        * Create 3 books under this contact 
        *   with Book Name : Book (1,2,3) + lastName 
        * 
        * insert these books 
 */
     
            if( Trigger.isAfter && Trigger.isInsert ){
                System.debug('Running awesome After Insert logic here'); 
                // create an empty list of book so we can add all the books and insert only once
                List<Book__c> bookList = new List<Book__c>();
                // trigger loop to go through each Contact that entered the trigger
                for(Contact each : Trigger.new) {
                    
                    // if the level__c field value is Primary
                    if( each.Level__c == 'Primary' ){
                    // Create 3 books under this contact, add it to the book list
                        bookList.add(new Book__c(Name = 'Book1 ' + each.LastName, Contact__c = each.Id));
                        bookList.add(new Book__c(Name = 'Book2 ' + each.LastName, Contact__c = each.Id));
                        bookList.add(new Book__c(Name = 'Book3 ' + each.LastName, Contact__c = each.Id));
                    }
                }
                // outside the loop, insert it onde
                insert bookList ; 
                
            }
    //     - write if statement to run code conditionally if it was before_update
            if( Trigger.isBefore && Trigger.isUpdate ){
                System.debug('Running awesome Before Insert logic here'); 
            }
    //     - write if statement to run code conditionally if it was after_after
            if( Trigger.isAfter && Trigger.isUpdate ){
                System.debug('Running awesome After Insert logic here'); 
            }
    //     Insert and update some records and make these event happen
    
     

}