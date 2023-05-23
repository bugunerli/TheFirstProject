// sObject type practice

// create a varible of sObject Case
// and assign the value
// assign couple common fields value
// Subject, Description , Status

Case c1 = new Case();
c1.Subject = 'Apex is not working';
c1.Description = 'Not enough coffee, apex does not work';
c1.Status = 'New';

System.debug('c1 value is : ' + c1); 
System.debug(c1.Id); // null
// c1 value is : Case:{Subject=Apex is not working, Description=Not enough coffee, apex does not work, Status=New}
// use DML statement insert to add the record to Salesforce
// insert c1;
// System.debug(c1.Id); // 500Dn000006JKkJIAW

// create another Case variable and assign its value and Subject value in one shot

Case c2 = new Case(Subject='In one shot Case Subject');
System.debug('c2 value is : ' + c2); // c2 value is : Case:{Subject=In one shot Case Subject}
// create another Case variable and assign its value and Subject, Priority values in one shot

Case c3 = new Case(Subject='Apex subject', Priority='High');
System.debug('c3 value is : ' + c3); 
// c3 value is : Case:{Subject=Apex subject, Priority=High}

// create a List of Case and add above 3 Cases
List<Case> caseList = new List<Case>{c1,c2,c3};
// add one more item to the List with subject of Apex Subject2
Case cBla = new Case(Subject='Apex Subject2');
caseList.add(cBla);
// OR IN ONE SHOT AS BELOW:
//caseList.add(new Case(Subject='Apex Subject2'));

// insert this list of Case into Salesforce using insert
System.debug('-----------Before Inserting List--------------------'); 
System.debug('caseList'); 
insert caseList;
System.debug('caseList'); System.debug('-----------After Inserting List--------------------'); 
System.debug('caseList'); 



