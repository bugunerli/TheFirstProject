// Contact c1 = Utils.getContact('Snow');
// System.debug('c1 value is : ' + c1);// c1 value is : Contact:{LastName=Snow}
// // insert c1;


// System.debug('Utils.getContact(\'ABC\') value is : ' 
//                     + Utils.getContact('ABC'));
// // Utils.getContact('ABC') value is : Contact:{LastName=ABC}

// List<Contact> myContacts = Utils.getContacts('Snow', 10);
// // size of myContacts should be 10
// System.debug('myContacts value is : ' + myContacts); 


// Account newAcc = Utils.insertNewAccount('Acc from Method');
// System.debug('newAcc value is : ' + newAcc);
// // newAcc value is : Account:{Name=Acc from Method, Id=001Dn00000QLbQ8IAL}


// EmailManager.sendMail('gunerlibulent@gmail.com', 'Email from Apex', 'Hello there!!!');


// Account myAcc = Utils.getAccountAndContacts('Acc with Contact', 4);
// System.debug('myAcc value is : ' + myAcc);

// // get all the child contacts that belong to above Account here
// List<Contact> childContacts = [SELECT LastName FROM Contact
//                                 WHERE AccountId = :myAcc.Id];
// System.debug('childContacts value is : ' + childContacts);

Account acc = [SELECT Name, Id, (SELECT LastName FROM Contacts)
                FROM Account
                WHERE Name = 'Acc with Contact'
                LIMIT 1];

// Print account name
System.debug('acc.Name value is : ' + acc.Name);
// how do we access child subquery part of parent to child query
System.debug('acc.Contacts value is : ' + acc.Contacts);

List<Contact> accChildContacts = acc.Contacts;
// print the contact lastName
for(Contact each : accChildContacts) {
    System.debug('Contact name value : ' + each.LastName);
}
/**
Contact name value : Acc with Contact contact 1
Contact name value : Acc with Contact contact 2
Contact name value : Acc with Contact contact 3
Contact name value : Acc with Contact contact 4
 */
    




