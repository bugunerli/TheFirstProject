// Create an Opportunity variable and assigning it's value
// fill up below fields
// Name, StateName, CloseDate
Opportunity o1 = new Opportunity();
o1.Name = 'Opp from Apex';
o1.StageName = 'Closed Won';
o1.CloseDate = Date.today();

System.debug('o1 value is : ' + o1); 
// o1 value is : Opportunity:{Name=Opp from Apex, StageName=Closed Won, CloseDate=2023-02-24 00:00:00}

Opportunity o2 = new Opportunity();
o2.Name = 'Opp 2 from Apex';
o2.StageName = 'Closed Won';
o2.CloseDate = Date.today();

// Create a List of Opportunity and add above 2 items
List<Opportunity> opps = new List<Opportunity>{o1, o2};
System.debug('opps value is : ' + opps); 
// insert these Opps into Salesforce
insert opps;



