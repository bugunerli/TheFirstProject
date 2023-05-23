/**
Declare List variable initialize it's value
and add aall the items in one shot

List<DataType>lstName = List<DataType>{item1, item2, item3, .... itenN};
 */

List<String> groceries=new List<String>{'Milk', 'Bread', 'Egg', 'Coffee'};
System.debug(groceries); // (Milk, Bread, Egg, Coffee)

// create list of Integer and add 5 values in one shot
List<Integer> numList=new List<Integer>{5,10,15,20,25};
// create List of Decimal and add 5 values in one shot 
List<Decimal> prices=new List<Decimal>{1.99, 2.99, 5.88, 100.99, 0.99};
System.debug(prices);
// create List of Id and  and add 5 values in one shot
List<Id> accountIds=new List<Id>{'0018W0000251OK6QAM',
                                 '0038W00001v1xurQAA',
                                 '0017W0000251OK6BGM',
                                 '0017W0000251OK6BAZ',
                                 '0017W0000298OK6JGM'
                                 };
System.debug(accountIds);

// create List of Boolean add 5 items into it
List<Boolean> answers=new List<Boolean>{true, false, true, true, false};
System.debug(answers);
