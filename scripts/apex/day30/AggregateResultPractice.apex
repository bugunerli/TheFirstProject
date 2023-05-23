// SELECT Count(Id) FROM Account 

AggregateResult result = [SELECT Count(Id), MAX(AnnualRevenue) FROM Account];
System.debug('result value is : ' + result);// result value is : AggregateResult:{expr0=82, expr1=24300234000}
// get the count value out of AggregateResult
// we have get() method that accept the column name and return the value
System.debug('Count of Account is : ' + result.get('expr0'));// Count of Account is : 82
System.debug('MAX(AnnualRevenue) is : ' + result.get('expr1'));// MAX(AnnualRevenue) is : 24300234000

// SELECT Count of Opps and Min Opps amount for All opportunities
// Store the result into a variable and print it out
// give alias to your aggregate fundtion as CountOfOpps, LowestAmount

AggregateResult oppResult = [SELECT COUNT(Id) CountOfOpps, MIN(Amount) LowestAmount
                            FROM OPPORTUNITY];

System.debug('Count of Account is : ' + oppResult.get('CountOfOpps'));// Count of Account is : 48
System.debug('MIN(Amount) is : ' + oppResult.get('LowestAmount'));// MIN(Amount) is : 10000.00

// If the SOQL Query return single row, we can store it into one AggregateResult variable
// When we have multiple rows as a result of GROUP BY
// Then we will get multiple AggregateResult for each row
// and we can store it in a List or Array 
// List<AggregateResult> or just AggregateResult[]

AggregateResult[] allResults = [SELECT StageName, COUNT(Id) CountOfOpps
                                FROM Opportunity
                                GROUP BY StageName ];
// System.debug('allResults value is : ' + allResults);
for(AggregateResult each : allResults) {
    //System.debug('Current value : ' + each);
    // print in this format: StageName --> CountOfOpps
    System.debug( each.get('StageName') + '-->' + each.get('CountOfOpps') ); 
    
}
/**
Current value : AggregateResult:{StageName=Prospecting, CountOfOpps=13}
Current value : AggregateResult:{StageName=Qualification, CountOfOpps=1}
Current value : AggregateResult:{StageName=Needs Analysis, CountOfOpps=1}
Current value : AggregateResult:{StageName=Value Proposition, CountOfOpps=2}
Current value : AggregateResult:{StageName=Id. Decision Makers, CountOfOpps=3}
Current value : AggregateResult:{StageName=Perception Analysis, CountOfOpps=1}
Current value : AggregateResult:{StageName=Proposal/Price Quote, CountOfOpps=2}
Current value : AggregateResult:{StageName=Negotiation/Review, CountOfOpps=2}
Current value : AggregateResult:{StageName=Closed Won, CountOfOpps=21}
Current value : AggregateResult:{StageName=Closed Lost, CountOfOpps=2}
 */

/**
Prospecting-->13
Qualification-->1
Needs Analysis-->1
Value Proposition-->2
Id. Decision Makers-->3
Perception Analysis-->1
Proposal/Price Quote-->2
Negotiation/Review-->2
Closed Won-->21
Closed Lost-->2
 */


// TASK :  Store the result of below query and print each item out 
/**
// SELECT isClosed, COUNT(Id)
// FROM Opportunity
// GROUP BY IsClosed
 */
 System.debug('--------------------------------------------'); 
 
AggregateResult[] caseResults = [SELECT isClosed, COUNT(Id) FROM Opportunity
                                GROUP BY IsClosed];
for(AggregateResult each : caseResults) {
    System.debug( each.get('isClosed') + '-->' + each.get('expr0') ); 
}
/**
false-->25
true-->23
 */




    
