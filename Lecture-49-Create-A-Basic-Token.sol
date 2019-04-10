pragma solidity ^ 0.5.1;

contract BasicToken {
    //define a mapping of addresses to uint256
    //name of 
    //will store all the balances of the wallets that have the token  
    mapping(address => uint256) public balaceOf;
    //this will give the person who created the contact, the initial supply of...
    //tokens when contract is deployed
    constructor(uint initialSupply) public {
    //this gives sender all the tokens
    balaceOf[msg.sender] = initialSupply;
    }
    //function that can transfer ownership of token from one address to another
    function transfer (address _to, uint256 _value) public returns (bool success) {
    //restrictions
    //check if sender has enough tokens  to send
    require(balaceOf[msg.sender]>= _value);
    //overflow check, value should be greater or equal to value of receiver
    //when we add moneny, we will not overflow the transaction
    require(balaceOf[_to] + _value >= balaceOf[_to]);
    //deduct money from the sender account
    balaceOf[msg.sender] -= _value;   
    //add money to address we want to send money to
    balaceOf[_to] += _value;
    return true;
    }
}
