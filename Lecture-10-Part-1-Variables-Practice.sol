pragma solidity 0.5.1;

//define contact
contract VariableExamples{
    //variables only accessbile to owner and deriviate contracts if set to private
    //boolean value 
    bool public switchedOn = true;
    //address holds a 20 byte variable, which is size of solidity contract
    address public owner = msg.sender;
    uint8 public number = 8;
    //gas cost 21748, note gas cost for same string content is less expensive
    bytes32 public awesome1 = "Solidity is awesome";
    //gas cost 22684
    string public awesome2 = "Solidity is awesome!";
}
