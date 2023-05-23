

// just like @future method
// we can put a code into Class that implements Queueable interface
// and provide detail of execute method
// in order to run the code
// System.enqueueJob

System.debug('Running apex-anon'); 

// 

Queueable q = new AccountUpdateAsync('AWESOME');
System.enqueueJob(q);