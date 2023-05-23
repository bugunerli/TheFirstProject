
// List<Opportunity> myOpps = Utils.getManyOpps('Batch Opp', 500, true);
// System.debug('myOpps.size() value is : ' + myOpps.size());


// delete[SELECT Id FROM Lead WHERE CreatedDate = TODAY];

OverdueOppProcessor ovp = new OverdueOppProcessor();
// Database.executeBatch(ovp, 150); // 500/150 => 150-150-150-50
// Database.executeBatch(ovp, 200);  // 500/200  3

Database.executeBatch(ovp, 100) ;