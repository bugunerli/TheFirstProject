
// Get 1 Account Record (Name, AnnualRevenue, Rating) 
// SELECT Name, AnnualRevenue, Rating FROM Account LIMIT 1
// and Store it into Account variable

// Apex and SOQL Work seamlessly together
// We can use SOQL   to get date and store it into
// sObject type or List of sObject type
// [YOUR SOQL GOES HERE]

Account a1 = [SELECT Name, AnnualRevenue, Rating, Phone 
                FROM Account LIMIT 1];
System.debug('a1 value is : ' + a1);
// a1 value is : Account:{Name=Test_Account2, AnnualRevenue=1000000, Rating=Hot, Id=001Dn00000Lq86EIAR}

// Only fields that available are
// the fields that showed up in SELECT line
System.debug('a1.Phone value is : ' + a1.Phone);// a1.Phone value is : 5412487896

// Get All the Account record with Rating field not null
// include, Id, Name, Rating, AnnualRevenue
// Store it into List<Account>
List<Account> accList = [SELECT Id, Name, Rating, AnnualRevenue
                            FROM Account
                            WHERE Rating != NULL];
// Print out the size of the List
System.debug('accList.size() value is : ' + accList.size());// accList.size() value is : 11

// Print out the Name, Rating in the loop
for(Account each : accList) {
    System.debug('Name value : ' + each.Name +  
                ' Rating value : ' + each.Rating );
}
/**
Name value : Test_Account2 Rating value : Hot
Name value : SUPER COOL ACCOUNT Rating value : Hot
Name value : Sample Account  3 Rating value : Hot
Name value : Sample Account  1 Rating value : Hot
Name value : Edge Communications Rating value : Hot
Name value : Burlington Textiles Corp of America Rating value : Warm
Name value : Grand Hotels & Resorts Ltd Rating value : Warm
Name value : Express Logistics and Transport Rating value : Cold
Name value : University of Arizona Rating value : Warm
Name value : United Oil & Gas Corp. Rating value : Hot
Name value : GenePoint Rating value : Cold
 */


// Get All the Lead Name, Status if the status is Working - Contacted
// Store it into the list and loop through each item
// print out the name and Status

List<Lead> leadLst = [SELECT Name, Status  FROM Lead
                      WHERE Status = 'Working - Contacted'];

for(Lead each : leadLst) {
    System.debug(each.Name + ' -- '   + each.Status);
}
/**
Name value : Test_Account2 Rating value : Hot
Name value : SUPER COOL ACCOUNT Rating value : Hot
Name value : Sample Account  3 Rating value : Hot
Name value : Sample Account  1 Rating value : Hot
Name value : Edge Communications Rating value : Hot
Name value : Burlington Textiles Corp of America Rating value : Warm
Name value : Grand Hotels & Resorts Ltd Rating value : Warm
Name value : Express Logistics and Transport Rating value : Cold
Name value : University of Arizona Rating value : Warm
Name value : United Oil & Gas Corp. Rating value : Hot
Name value : GenePoint Rating value : Cold
Abddefg snow SNOW -- Working - Contacted
Shelly Brownell -- Working - Contacted
Norm May -- Working - Contacted
Kristen Akin -- Working - Contacted
David Monaco -- Working - Contacted
Sandra Eberhard -- Working - Contacted
Betty Bair -- Working - Contacted
Bertha Boxer -- Working - Contacted
Patricia Feager -- Working - Contacted
Brenda Mcclure -- Working - Contacted
Violet Maccleod -- Working - Contacted
Kathy Snyder -- Working - Contacted
Tom James -- Working - Contacted
Young -- Working - Contacted
 */
    
    



