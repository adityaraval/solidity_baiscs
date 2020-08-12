pragma solidity >=0.4.22 <0.7.0;

contract HotelRoom {
    address payable public owner;

    //enums
    enum Statuses {Vaccant, Occupied}
    Statuses currentStatus;
    
    constructor() public{
        owner = msg.sender;
        currentStatus = Statuses.Vaccant;
    }
    
    //modifier to check status before book
    modifier allowVaccant (){
        require(currentStatus==Statuses.Vaccant,"Currently Occupied");
        _;
    }
    
    //modifier to check amount before book
    modifier costs (uint _amount){
        require(msg.value >= _amount,"Not enough Ether Provided");
        _;
    }
    
   // event which will be emitted when room will be occupied
   event Occupy(address occupant, uint _amount);
    
    //it will be special function which is called when someone pay from external wallet, i.e from metamask
    receive() external payable allowVaccant costs (2 ether) {
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        //emit event that user has booked the room
        emit Occupy(msg.sender, msg.value);
    }
}    
