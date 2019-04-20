pragma solidity 0.5.1;

/*
-contract for token is here, from lesson 49 and 53
-contract BasicToken, coded is changed to...
-contract BasicToken is owned
-is owed, creating a central manager to control tokens though tokens are normally decentralized
*/


contract owned{
    
    public address owner;
    
    constructor{
    
        owner = msg.sender;    
    }
    
    //modifer that's used to restrict access to certain function 
    
    modifier = onlyOwner{
        
        require(msg.sender == owner);
        //placeholder
        _;
    }
    function transferOwnership(address newOwner) onlyOwner{
        owner = newOwner;
    }

}