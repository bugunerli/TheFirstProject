
// Create List of Opportunity 
List<Opportunity> oppList = new List<Opportunity>();
// Add 10 items in it with valid Opportunity required fields filled up 
for(Integer i=1; i<=10 ;i++) {

    Opportunity opp = new Opportunity();
    // Name,  Opp - 1(2,3,4,5..10)
    opp.Name = 'Opp - ' + i;
    // ClosedDate (10 days from Today), 
    opp.CloseDate = Date.today().addDays(10);
    // StageName ='Prospecting',    
    opp.StageName = 'Prospecting';
    // Amount  random Integer between 0-100000
    opp.Amount = Math.round(Math.random() * 100000);
    // add it to the List
    oppList.add(opp);
}

// insert the list into your org 
insert oppList;
// Create an Account with Name = 'Parent of Cool Opps'
Account coolAccount = new Account(Name = 'Parent of Cool Opps');
// insert into Salesforce org 
insert coolAccount;
// Create an empty List of Opportunity called coolOppsList
List<Opportunity> coolOppsList = new List<Opportunity>();
// Loop through your entire List of 10 items 
for(Opportunity each : oppList) {
    // If amount is greater than 60000
    if( each.Amount > 60000 ){
    // Update AccountId field to Id of Account you created earlier
        each.AccountId = coolAccount.Id;
    // Add the Opportunity to coolOppsList
        coolOppsList.add(each);
    }
}
// Update the coolOppsList in your org 
update coolOppsList;
// Go to user interface and observe you have filled up Account Name field of all opportunities 
// that has amount field over 60000 to 'Parent of Cool Opp'
 