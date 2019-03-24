//specify version pragma
pragma solidity ^0.5.1;
//define our contract 
contract Messenger{
    //define a variable address called owner
    address owner;
    //define an empty array of strings, called messages
    string[] messages;
    constructor() public {
    //person who deploeyed contract is defined as owner of contract
    owner = msg.sender;
    
    }
    function add(string memory newMessage) public {
    //prevents anyone else, outside of owner of contract from adding anything to array of messages
    require( msg.sender == owner);
    //adds a new message to array of messages
    messages.push(newMessage);
        
    }
    //this function will return unsigned integer
    function count() view public returns(uint){
        //will return length of array
        return messages.length;
    }
    
    function getMessages(uint index) view public returns(string memory){
        //returns message of index 
        return messages[index];
    }
}
