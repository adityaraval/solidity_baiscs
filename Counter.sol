pragma solidity >=0.4.22 <0.7.0;


contract Counter {
    uint256 count;

    constructor () public{
        count = 0;
    }
    
    function getCount () public view returns(uint256){
        return count;
    }
    
    function incrementCount () public {
        count++;
    }
}
