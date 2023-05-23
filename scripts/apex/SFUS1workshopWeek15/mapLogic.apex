Map<Integer, String> numberName = new Map<Integer, String>{1 => 'Josh', 2 => 'Ben'};
numberName.put(3, 'Mary');

System.debug(numberName); // {1=Josh, 2=Ben, 3=Mary}
// .keySet() method retrieves all the keys of the Map:
System.debug(numberName.keySet()); // retrieves ALL THE KEYS (unique-Set) ==> {1, 2, 3}
// .values() method retrieves all the values of the Map:
System.debug(numberName.values()); // retrieves ALL THE VALUES (can be duplicate-List) ==> (Josh, Ben, Mary)
// .get(yourKeysGoesHere) method retrieves the value of key:
System.debug(numberName.get(1) + ' is the value of key 1'); // retrieves the VALUE of KEY 1 ==> Josh is the value of key 1
