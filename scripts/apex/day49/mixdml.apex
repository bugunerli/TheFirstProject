// Get currently loggedin user 
// and store it into User variable


// insert an Account here 
Account a = new Account(Name='cool'); 
insert a; 

AsyncUtil.updateCurrentUserRoleToCFO();

// IF WE DO SOMETHING LIKE THIS IN TRIGGER
// WE WILL GET AN ERROR CALLED MIXED DL ERROR
// IT'S SAYING YOU CAN NOT PERFORM DML ON
// SET-UP OBJECTS(USER, PROFILE, GROUP,QUEUE)
// AND NON-SETUP OBJECT (ACCOUNT CONTACT, YOURCISTOMOBJECT__C AND SO ON)
// TOGETHER