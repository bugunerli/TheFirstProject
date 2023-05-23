/**
Create  variable called starCount
initialize it to 0

use loop, to print out below
0 star ranger
1 star ranger
2 star ranger
3 star ranger
4 star ranger
5 star ranger
6 star ranger
 */

 Integer starCount=0;

// while(starCount<7){
//     System.debug(starCount + 'star ranger ');
//     starCount++;
// }


// when your inside loop, if the the starCount is
// 0 print out, almost there to ranger status 
while(starCount<7){
    if(starCount==0){
        System.debug('Almost There to 1 star');
    }else if(starCount==6){
        System.debug('All star ranger');
    }else{
        System.debug(starCount + ' star ranger ');
    }
    starCount++;
}
/**
 */


//  do{
//     System.debug(starCount+' star ranger') ; 
//     starCount++;
// } while( starCount < 7) ;


