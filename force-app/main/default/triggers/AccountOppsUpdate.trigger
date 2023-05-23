trigger AccountOppsUpdate on Account (after update) {

//if Account updated to be inactive (Active__c set to No)
//update all the 'Open' opportunities StageName to 'Closed Lost'

    //1. Create a Set<Id> to store only those Accounts Id
    // that entered the Trigger with active field updted to No
    Set<Id> accIds = new Set<Id>();
    for(Account each : Trigger.new) {
        Account eachOld = Trigger.oldMap.get(each.Id);
        if( each.Active__c != eachOld.Active__c && each.Active__c == 'No' ){
            accIds.add(each.Id);
        }
    }
    // if no accounts that entered the trigger has Active__c fields changed to No
    // the set is empty, get out of the trigger, do not proceed
    if( accIds.isEmpty() ){
        System.debug('No accounts that entered the trigger has Active__c fields changed to No'); 
        
    }
    //2. Get all the Open Opps belong to those Accounts 
    List<Opportunity> toBeUpdatedOpps = [SELECT Name, AccountId, StageName
                                        FROM Opportunity
                                        WHERE IsClosed = false 
                                        AND AccountId IN :accIds];

    //3. Update all the open Opps above StageName to ClosedLost
    for(Opportunity each : toBeUpdatedOpps) {
        each.StageName = 'Closed Lost';
    }    
    //4. Perfom DML to update in Salesforce allContacts if it's not empty
    if( !toBeUpdatedOpps.isEmpty() ){
        update toBeUpdatedOpps;
    }



}