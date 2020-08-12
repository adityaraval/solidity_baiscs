pragma solidity >=0.4.22 <0.7.0;

contract Basics {    
    uint256[] public myArray = [1,3,5];
    string[] public myStringArray = ['abc','xyz'];
    
    function addValue(string memory _value) public{
        myStringArray.push(_value);
    }
    
    function getLength() public view returns(uint256){
        return myStringArray.length;
    }
}
