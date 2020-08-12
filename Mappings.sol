pragma solidity >=0.4.22 <0.7.0;

contract Basics {
    struct Person {
        string title;
        string name;
    }
     
    mapping(uint256=>string) public names;
    mapping(uint256=>Person) public people;
    
    constructor()public{
        names[1] = 'Aditya';
    }
        
    function addPerson(uint256 _id,string memory _title,string memory _name) public{
        people[_id] = Person(_title,_name);
    }
}
