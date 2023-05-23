# Tasks Set 2 : 
:D1::D1::D1::D1::D1::D1::D1::D1::D1::D1::D1: 
1. Write an Apex code that store two numbers in Integer variables 
   - Print out the bigger number 

2. Write an Apex code that store 3 numbers in Integer variables
   - Print out the smallest number 

3. Write an Apex that store 2 Booleans value into isBaby1Laughing, isBaby2Laughing
   - if both value true print out 'both laughing'
   - if only isBaby1Laughing then print out 'only first baby laughing'
   - if only isBaby2Laughing then print out 'only second baby laughing'
   - else print 'no babies are laughing'

3.1 in the same file, continue to write code to implement below logic : 
       - Print 'both in same mood'  if Both Babies are laughing or Both Babies are not laughing
      - otherwise print 'Not in a same mood' 

4. Write an Apex that store caseStatus as String 
   - if  caseStatus is New print 'Case need attention'
   - if  caseStatus is Working print 'Case in progress'
   - if  caseStatus is Escalated print 'Case need to be reassigned and manager need to be notified'
   - if  caseStatus is Closed print 'Case has been resolved'


5. Write and Apex code that store opportunityStage as String and probabilityPercentage as Decimal
   - if the stage is 'Prospecting', assign the value of probabilityPercentage to 0.1
   - if the stage is 'Qualificationn', assign the value of probabilityPercentage to 0.2
   - if the stage is 'Need Analysis', assign the value of probabilityPercentage to 0.3
   - if the stage is 'Closed Won', assign the value of probabilityPercentage to 1.0
   - if the stage is 'Closed Lost', assign the value of probabilityPercentage to 0

   - at the end Print out message 'State is X and probability Percentage is X %'

6. Write and Apex code that store leadScore as Integer initialize it's value to 50 and hasEmail, hasPhone, hasTwitter as Boolean variables 
   - in 3 separate if statements (without else) do as below : 
   - if hasEmail equal true , increase the value of leadScore by 20
   - if hasPhone equal true , increase the value of leadScore by 18
   - if hasTwitter equal true , increase the value of leadScore by 12
   - at the end , print out 'The lead store is  XX'


6. Write an Apex code that store contactEmail and mailingState as String 
   - check if a Contact's email is not null (!=null) and it's mailing state is Californina, 
   - if both conditions are true, print out 'Valid Californnia Contact'

7. Write an Apex code that strore Case's Priority (casePriority) as String and is Tier One Customer or not(isTierOneCustomer) as Boolean.
   - if isTierOneCustomer value true , print 'Tier 1 Customer, handle within 1 hour'
   - else
     - check if a Case's Priority is either 'High' or 'Critical' 
       - if so , print out 'urgent case handle inn 6 hours'
       - else print out 'handle within 2 days'