// store many names -->> List <String>

// store unique names -->> Set<String>

// set student names and score -->> Map<String, Integer>

// store all the groups ( that contains many names) into a collection

// how to represent one group that have many names-->> List<String>

// how to represent many groups -->> List <List<String>>

List<String> group1Names = new List<String>{'Zhamilia', 'Marina', 'Madina', 'Vita'};
List<String> group2Names = new List<String>{'Ali', 'Hyder', 'Dua', 'Elif'};
List<String> group3Names = new List<String>{'Jon', 'Snow', 'Know', 'nothing'};

List< List<String> > groupList = new List<List<String>>{group1Names, group2Names, group3Names};
System.debug('groupList value is : ' + groupList);
// groupList value is : ((Zhamilia, Marina, Madina, Vita), (Ali, Hyder, Dua, Elif), (Jon, Snow, Know, nothing))


// accessing the item in the List, we use index and it starts from 0

// what if we want to make it slightly easier to access the group that contains names


// for example if we provide 1 => (Zhamilia, Marina, Madina, Vita)
// for example if we provide 2 => (Ali, Hyder, Dua, Elif)
// for example if we provide 3 => (Jon, Snow, Know, nothing)
// Map< Integer, List<String> > = new Map< Integer, List<String> >{};

// for example if we provide group1 => (Zhamilia, Marina, Madina, Vita)
// for example if we provide group2 => (Ali, Hyder, Dua, Elif)
// for example if we provide group3 => (Jon, Snow, Know, nothing)
// Map< String, List<String> > = new Map< String, List<String> >{};




