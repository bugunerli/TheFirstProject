trigger BookOwnerTrigger on Book__c (before insert, before update) {
    System.debug('Trigger is running for Event : ' + Trigger.operationType); 
    
    // This trigger has below logic
    // Whenever book is created or updated

    // Since we can not write SOQL inside the Loop,
    // we have to get all the contacts  
    // that associated with Books that entered the trigger
    // outside the loop using SOQL
    // and best way to get those contacts is using Id of Contact

    // Multiple books can|will enter the same time
    // not all the books might have Contact__c filled
    Set<Id> contactIdSet = new Set<Id>();
    // Loop through each Book that entered the trigger
    for (Book__c each : Trigger.new) {
    if (each.Contact__c != null) {
      contactIdSet.add(each.Contact__c);
    }
  }
    //SELECT Id,Name, OwnerID FROM Contact
    //WHERE Id IN ('003Dn00000Go29DIAR', '003Dn00000Go29DIAB', '003Dn00000Go29DIAC')
    List<Contact> contactList = [SELECT Id,Name, OwnerID FROM Contact
                                WHERE Id IN :contactIdSet];
    // We need to convert this list to Map<Id, Contact>
    Map<Id, Contact> parentContactsMap = new Map<Id,Contact>(contactList);

    for(Book__c each : Trigger.new) {
         // add the Contact__c(Id of Parent contact)
         // into the contactIdSet if exists
        if( each.Contact__c != null ){
            // assign the value of book Owner Id to the Owner Id of the contact
            // Assign the owner of the book to the sane owner of the contact
            each.OwnerId = parentContactsMap.get(each.Contact__c).OwnerId;
        }
    }
    




    // for(Book__c each : Trigger.new) {
    //     // if the Contact look up field is not empty
    //     if( each.Contact__c != null ){
    //         // assign the owner of this Book to the same Owner of Contact Record
    //         System.debug('Contact is not null'); 
    //         // above line print null for ownerId or any other fields of parent
    //         // because any record within the context of Trigger.new
    //         // has no access to parent fields, SOQL is needed!
           
    //         // System.debug(parentContact.Name); 
    //         // System.debug(parentContact.OwnerId); 
            
    //     }
        
    // }
        
    
    
}