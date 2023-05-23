public class RecursionDemo {


    // count from 1 to N in this method
    // and print it out 
    public static void printNumber(Integer n){

        System.debug('n value is : ' + n);

        if (n>1) {
            printNumber(n-1);
        }

        // 2nd APPROACH :
        // if (n<=1) {
        //     System.debug('we are done!'); 
        //     return;
        // }
        // printNumber(n-1);  
    }



}
    