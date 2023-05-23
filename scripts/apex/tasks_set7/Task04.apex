/**
4. Write an Apex code that create List or Array of 10 String values
   - create a empty Set of String 
   - store all the string that is not equal to admin or developer in it
   - print out the size and items in loop
 */
String[] positions = new String[]{'admin','developer','sdet','manager','specialist','pm','po','sales rep','hr','receptionist'};
Set<String> employee = new Set<String>(positions);
// employee.add(YourValueHere); 
for(String each : employee) {
    if( each == 'admin'   ){
        employee.remove(each);
    }
    if( each == 'developer' ){
        employee.remove(each);
    }
}
System.debug('employee value is : ' + employee); 
    


