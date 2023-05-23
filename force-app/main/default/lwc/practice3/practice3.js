import { LightningElement } from 'lwc';

export default class Practice3 extends LightningElement {

    message = "Offer Received";

    handleChange(){
        console.log('User typed something');
    }


}