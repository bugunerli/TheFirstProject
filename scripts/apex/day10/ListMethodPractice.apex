/**
Create a Liest of String taht store 4 names
print out the size
print out the item 3

print out the item 1
print out every item using for loop

 */
List<String> names = new List<String>();
names.add('Hakan');
names.add('Nina');
names.add('Ali');
names.add('Ilaha');
names.add('Cristina');
names.add('Sean');
names.add('Mariana');
names.add('Suat');
names.add('Hyder');

System.debug(names); // (Hakan, Nina, Ali, Ilaha, Cristina, Sean, Mariana, Suat, Hyder)
// print out size
System.debug('Item count in the list is ' + names.size()); // Item count in the list is 9
// print out item 3
System.debug('Item 3 in the list is ' + names.get(2)); // Item 3 in the list is Ali
// print out item 1
System.debug('Item 1 in the list is ' + names.get(0)); // Item 1 in the list is Hakan

// store the value of number 2 item into a variable
// then print out
String item2 = names.get(1);
System.debug('item2 value is ' + item2); // item2 value is Nina

for (Integer index = 0; index < names.size(); index++) {
  // System.debug(names.get(index));
  // Index X value is Y
  System.debug('Index ' + index + ' is ' + names.get(index));
}

for (String each : names) {
  System.debug(
    'this is using for each loop without using get() method: ' + each
  );
}


