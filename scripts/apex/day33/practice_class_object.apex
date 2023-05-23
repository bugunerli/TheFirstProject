Person p1 = new Person();
p1.name = 'Hakan';
p1.age = 38;
p1.height = 178; // cm

//System.debug('p1 value is : ' + p1);
// p1 value is : Person:[age=38, height=178, name=Hakan]
p1.printName(); // printing the person name Hakan
p1.printAge();// age of the person is : 38
p1.describePerson();// Hakan is 38 and Heidght is 178
p1.changeName('Hyder 2.0');
p1.printName();// printing the person name Hyder 2.0
p1.setAgeAndHeight(21, 180);
p1.describePerson();// Hyder 2.0 is 21 and Heidght is 180
p1.setPersonInfo('Hyder 3.0', 18, 190);
p1.describePerson();// Hyder 3.0 is 18 and Heidght is 190

System.debug('---------------------------------------'); 


Person p2 = new Person();
p2.name = 'Marina';
p2.age = 21;
p2.height = 170;

//System.debug('p2 value is : ' + p2);// p2 value is : Person:[age=21, height=170, name=Marina]
p2.printName();// printing the person name Marina
p2.printAge();// age of the person is : 21
p2.describePerson();// Marina is 21 and Heidght is 170
p2.changeName('AI Marina');
p2.printName();// printing the person name AI Marina
p2.setAgeAndHeight(18, 178);
p2.describePerson();// AI Marina is 18 and Heidght is 178
p2.setPersonInfo('AI Marina v2', 16, 175);
p2.describePerson();// AI Marina v2 is 16 and Heidght is 175