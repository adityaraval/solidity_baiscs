pragma solidity >=0.4.22 <0.7.0;

contract Basics {
    struct Person {
        string title;
        string name;
    }
    Person public myPerson = Person("Mr",'Aditya');
}
