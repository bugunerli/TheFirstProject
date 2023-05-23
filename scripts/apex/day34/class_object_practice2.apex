// Account a = new Account(Name = 'Apex cc', Rating = 'Hot');

// Student s1 = new Student('Ilaha', 'H',100);

Student s1 = new Student();// Message from Constructor
System.debug('s1 value is : ' + s1);
// s1 value is : Student:[firstName=unknown, lastName=unknown, studentId=0]


Student s2 = new Student();// Message from Constructor
System.debug('s2 value is : ' + s2);
// s2 value is : Student:[firstName=unknown, lastName=unknown, studentId=0]

Student s3 = new Student('Ilaha', 'H', 100);
System.debug('s3 value is : ' + s3);
// s3 value is : Student:[firstName=Ilaha, lastName=H, studentId=100]



// House h1 = new House();
// System.debug('h1 value is : ' + h1);

// House h2 = new House('Victorian');
// System.debug('h2 value is : ' + h2);
// // h2 value is : House:[hasGarage=null, squareFootage=null, style=Victorian, year=null]

// House h3 = new House('Victorian', 2023, true, 5000);
// System.debug('h3 value is : ' + h3);
// // h2 value is : House:[hasGarage=true, squareFootage=5000, style=null, year=2023]

BankAccount b1 = new BankAccount('Zhamilia', 132456321, 13000000);
b1.showDetails();
// Account Holder name Zhamilia, Number : 132456321, Balance : 13000000


Student s4 = new Student('Abbas', 'Mollayev', 101);
// Account Holder name Zhamilia, Number : 132456321, Balance : 13000000
s4.study();// Abbas study
s4.study(5);// Abbas study5 hours


List<Student> studentLst = new List<Student>();
studentLst.add(new Student('Abbas', 'Mollayev', 101));
studentLst.add(new Student('Shay', 'A', 102));
studentLst.add(new Student('Cavidan', 'Mercan', 103));
studentLst.add(new Student('Gurkan', 'Duran', 104));
studentLst.add(new Student('Neslihan', 'Kaya', 101));

System.debug('studentLst value is : ' + studentLst);

// Loop through each item in this List 
// and call the study method on each student
for(Student each : studentLst) {
    each.study(11);
}
    

