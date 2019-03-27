pragma solidity ^0.5.1;
 
//name contract
contract ChangeArrayValue {
    //array 
    uint[20] public arr;
 
    function startChange() public {
        firstChange(arr);
        secondChange(arr);
    }
    function firstChange(uint[20] storage x) internal {
        x[0] = 4;
    }
    function secondChange(uint[20] memory x ) internal pure {
        x[0] = 3;
    }
}

//browser/Lecture-17-Memory-vs-Storage.sol:15:27: 
//TypeError: Data location must be "storage" or "memory" for parameter in function, 
//but none was given.
//function secondChange(uint[20] x ) internal pure {
//                          ^--------^
//if line 15, memory x, error noted above removed
