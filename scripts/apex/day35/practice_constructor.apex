// How do we access static field
// we use ClassName.staticFieldName

Order.taxRate = 0.3;

Order o1 = new Order('Coffee', 'Duaa', 3.99);
o1.printOrder();//Order: customerName= Duaa, price= 3.99, product= Coffee

// System.debug( o1);

Order o2 = new Order('Tea', 'Natalya', 7.99);
o2.printOrder();//Order:[customerName=Natalya, price=7.99, product=Tea]


// System.debug('Order.taxRate value is : ' + Order.taxRate);
// Order.taxRate value is : 0.3

Order.showTaxRate();// taxRate value is : 0.3
Order.taxRate = 0.4;
Order.showTaxRate();// taxRate value is : 0.4
o1.printOrder();
// Order:[customerName=Duaa, price=3.99, product=Coffee, taxRate=0.4]
o2.printOrder();
// Order:[customerName=Natalya, price=7.99, product=Tea, taxRate=0.4]



