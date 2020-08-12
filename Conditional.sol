pragma solidity >=0.4.22 <0.7.0;

contract Conditional {
    address public owner;
    
    constructor() public{
        owner = msg.sender;
    }
    
    function isOwner() public view returns(bool){
        if(msg.sender == owner){
            return true;
        }else{
            return false;
        }        
    }
    
}    
