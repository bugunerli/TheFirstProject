
Schedulable s = new ScheduledTaskCleanUp();

// crone expression is used to
// define time itervals programatically
// It has 6 part
// second minute hour dayOfMonth Month dayOfWeek
// anything you do not want to fill up
//use ? mark

// String crex = '0 0 12 28 4 ? ';

String crex = '0 6 12 ? 4 FRI';

System.schedule('Task job', crex, s);