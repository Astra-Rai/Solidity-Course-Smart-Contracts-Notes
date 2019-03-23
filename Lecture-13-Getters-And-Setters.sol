
pragma solidity ^0.5.1.;



//create a contract MessageContract

contract MessageContract {
    
    //decare variable, name it MessageContract
    //make varible private 
    //data type of message is string
    //define variable, data type string, set to the string "Hello World"
    
    string private message = "Hello Fam";
    //getter gets and returns specified value     
    function getmessage() public view returns (string memory){
        return message;
    }
    
    //function that resets value of thee variable message 
    function setMessage (string memory _newMessage) public {
        //set message variable to variable _newMessage
        message = _newMessage;
    }    
}


//you can change the prefined string for the variable message
//public view automatically have a getter function
//setter, set the value 
//the function setMessage is public 
//setMessage resets value of variable message 