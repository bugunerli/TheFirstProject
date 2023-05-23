/**
4. Write a program that store 10 Long(data type) values into List of Long 
   (it should be combination of positive and negative numbers) 
   print out the sum of positive numbers 
   print out the count of positive numbers 
   print out the count of negative numbers
 */

List<Long> longNumbers=new List<Long>{15000786000L,21500006000L,-17500000000000L,5650000000L,-235680500000L,26350000000L,-369003300000L,
                            10006970000L,1250002300000L,3470008596562L};
Long sumOfPositiveNums=0;
for(Long eachNumber : longNumbers){
    if(eachNumber>0){
        sumOfPositiveNums+=eachNumber;
    }
}
System.debug('Sum of positive numbers is '+sumOfPositiveNums);

Integer countOfPositiveNumbers=0;
for(Long each : longNumbers){
    if(each>0){
        countOfPositiveNumbers+=1;
    }
}
System.debug('Count of the positive numbers is '+countOfPositiveNumbers);

Integer countOfNegativeNumbers=0;
for(Long each : longNumbers){
    if(each<0){
        countOfNegativeNumbers+=1;
    }
}
System.debug('Count of the negative numbers is '+countOfNegativeNumbers);