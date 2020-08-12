pragma solidity >=0.4.22 <0.7.0;

contract Variables {
    //state variables
    uint256 public myUint56 = 10;
    string public myString = " Hello";   
  
    //local variables inside function
    function getLocalVariable() public pure returns(uint256){
        uint256 myLocalVariable = 10;
        return myLocalVariable;
    }
}
