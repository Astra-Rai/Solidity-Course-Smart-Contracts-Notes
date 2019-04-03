pragma solidity^0.5.1;
 
contract Score {
    //deine a dynamic array
    uint24[] score;
 
   function addScore(uint24 s) public returns(uint24[] memory) {
    //adds new element to array
    score.push(s);
    return score;
   }
 
   function getLength() view public returns(uint) {
    //returns lenght of array
    return score.length;
   }   
 
   function clearArray() public returns(uint24[] memory) {
       //clears element in array completely
       delete score;
       return score;
   }   
}  