BankAccount b1 = new BankAccount();
b1.accountHolder = 'Ali';
b1.accountNumber = 123456789;
b1.balance = 500000.35;

b1.showDetails();
// Account Holder name Ali, Number : 123456789, Balance : 500000.35

System.debug('b1.getBalance() value is : ' + b1.getBalance());
// b1.getBalance() value is : 500000.35

b1.deposit(5000.1) ; 
System.debug('b1.getBalance() value is : ' 
                + b1.getBalance());
//b1.getBalance() value is : 505000.45
b1.deposit(-500000) ;  //INVALID NUMBER!!!!

b1.withdraw(200000);
System.debug('b1.getBalance() value is : ' 
                + b1.getBalance());
b1.withdraw(500000); // CANNOT WITHDRAW THE MONEY YOU DON NOT HAVE!!!!

System.debug('-----------------------------------------'); 


BankAccount b2 = new BankAccount();
b2.setupAccount('Christina ', 987654321, 1000000);
b2.showDetails();
// Account Holder name Christina , Number : 987654321, Balance : 1000000
b2.deposit(1000000);

System.debug('b2.getBalance() value is : ' + b2.getBalance());
// b2.getBalance() value is : 2000000
b2.deposit(-200);// INVALID NUMBER!!!!
b2.withdraw(500000);
System.debug('b2.getBalance() value is : ' 
                + b2.getBalance());
// b2.getBalance() value is : 1500000
b2.withdraw(3000000);
// CANNOT WITHDRAW THE MONEY YOU DON NOT HAVE!!!!

b2.changeName('Christina 2.0');
b2.showDetails();
// Account Holder name Christina 2.0, Number : 987654321, Balance : 1500000






