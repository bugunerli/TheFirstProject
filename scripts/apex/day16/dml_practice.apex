/**
DML : Data Manipulation Language 
 allow you to interact with Salesforce Database of your org 
    insert
    update
    upsert
    delete
    undelete
    merge

    https://trailhead.salesforce.com/content/learn/modules/apex_database/apex_database_dml
 */

 // Create an variable with sObject type of Account
 // assign the Name field value

 Account a1 = new Account(Name='Acc from Apex');
 System.debug('a1 value before insert is : ' + a1); // a1 value before insert is : Account:{Name=Acc from Apex}
 // insert the Account into Salesforce org
 insert a1;
 System.debug('a1 value after insert is : ' + a1);// a1 value after insert is : Account:{Name=Acc from Apex, Id=001Dn00000Kr3mvIAB}
 // print out the Id of the a1
 System.debug('a1.Id value is : ' + a1.Id); // a1.Id value is : 001Dn00000Kr3sUIAR
 // change the name of a1 to -> Update Name from Apex
 a1.Name = 'Account_Inserted_Updated_Deleted_Undeleted';
// update the Billing State field
a1.BillingState = 'VA';
 // use update DML operation to update the record that already in Salesforce
 update a1;
 System.debug('a1 value after update is : ' + a1); // a1 value after update is : Account:{Name=Update Name from Apex, Id=001Dn00000Kr3sUIAR}

// delete this record from Salesforce
// you can find deleted record under Recycle Bin
 delete a1;
 System.debug('a1 value after delete is : ' + a1); 
// restore thid deleted record from Recycle Bin
undelete a1;
System.debug('a1 value after undelete is : ' + a1);