/*
5. Create List of Opportunity 
   - Add 10 items in it with valid Opportunity required fields filled up 
      - Name,  Opp - 1(2,3,4,5..10)
      - ClosedDate (10 days from Today), 
      - StageName ='Prospecting', 
      - Amount  random Integer between 0-100000
   - insert the list into your org 

   - Create an Account with Name = 'Parent of Cool Opps'
   - insert into Salesforce org 

   - Create an empty List of Opportunity called coolOppsList
      - Loop through your entire List of 10 items 
      - If amount is greater than 60000
         - Update AccountId field to Id of Account you created earlier
         - Add the Opportunity to coolOppsList

   - Update the coolOppsList in your org 
   - Go to user interface and observe you have filled up Account Name field of all opportunities
     that has amount field over 60000 to 'Parent of Cool Opp'
*/

// Create List of Opportunity
List<Opportunity> opps = new List<Opportunity>();
// Add 10 items in it with valid Opportunity required fields filled up
for(Integer i=1; i<=10 ;i++) {
    Opportunity opp = new Opportunity();
    // Name,  Opp - 1(2,3,4,5..10)
    opp.Name = 'Opp - ' + i;
    // ClosedDate (10 days from Today)
    opp.CloseDate = Date.today() + 10;
    // StageName ='Prospecting'
    opp.StageName = 'Prospecting';
    // Amount  random Integer between 0-100000
    Double num = Math.random() * 100000;
    opp.Amount = num.round();

    opps.add(opp);
}
// insert the list into your org
insert opps;

// Create an Account with Name = 'Parent of Cool Opps'
Account acct = new Account(Name = 'Parent of Cool Opps');
// insert into Salesforce org
insert acct;

// Create an empty List of Opportunity called coolOppsList
List<Opportunity> coolOppsList = new List<Opportunity>();

// Loop through your entire List of 10 items
for(Opportunity eachOpp : opps) {
    // If amount is greater than 60000
    if( eachOpp.Amount > 60000 ){
        eachOpp.AccountId = acct.Id;
        coolOppsList.add(eachOpp);
    }
}
update coolOppsList;
    


