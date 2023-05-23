/**
Declare and initialize variable muffin
Countdown from 20 -> 0 decrease by 2

// if number is greater than 10
    // print out muffin count is XX
// else
    // print out muffin count is XX, I am getting full
    
*/


 Integer muffin=20;

// while(muffin>=0){
//     if(muffin>10){
//         System.debug('Muffin count is '+muffin);
//     }else{
//         System.debug('Muffin count is '+muffin+', I am getting full');
//     }
//     muffin-=2; // muffin=muffin-2
// }


/**
Declare and initialize variable muffin
Countdown from 20 -> 0 decrease by 2

// if number is greater than 10
    // print out first half: muffin count is XX
    // decrase the muffin by 3
// else
    // print out second half: muffin count is XX
    // decase the muffin by 2

*/

while(muffin>=0){
    if(muffin>10){
        System.debug('First Half: Muffin count is '+muffin);
        muffin-=3;
    }else{
        System.debug('Second Half: Muffin count is '+muffin);
        muffin-=2;
    }
}

