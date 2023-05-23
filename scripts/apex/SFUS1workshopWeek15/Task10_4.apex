/*
4. Create a Lead with required Fields filled up 
   - insert it into your org 
   - Create a variable with Task sObject type and assign the value 
   - fill up the below fields for this task
      - WhoId with the Id of the lead created above 
      - Priority 'High'
      - ActivityDate  Date 7 days from now 
*/

Lead lead1 = new Lead(LastName = 'Young');
lead1.Company = 'Avangers Coop.';
lead1.Status = 'Working - Contacted';

insert lead1;

Task taskLead1 = new Task();
taskLead1.WhoId = lead1.Id;
taskLead1.Priority = 'High';
taskLead1.ActivityDate = Date.today() + 7;
//taskLead1.ActivityDate = Date.today().addDays(7);
taskLead1.Subject = 'Follow up ' + lead1.Company;

insert taskLead1;