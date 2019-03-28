pragma solidity ^0.5.1;
 
contract Bank {
    //mappings are used to structure value types
    //mapping, there is a key type and value type
    //key type, address, mappings can only use elementry types as keys
    //value type,uint 
    //visibility, public, this will create a getter, will return value type
    //name of mapping accounts
    mapping(address => uint) public accounts;
 
    function deposit(uint money) public {
    //get value of mapping as if it were an array
    //address of person calling function
    //only person calling function can deposit $ in account
       accounts[msg.sender] += money;
    }
    
    function withdraw(uint money) public {
        
    //withdraw money from sender account        
       accounts[msg.sender] -= money;
    }
}