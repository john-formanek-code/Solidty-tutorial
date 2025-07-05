// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Contract {
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;
    //struct - více typů pod jedním typem

    address owner; //address je data type, modifier je owner

    modifier onlyOwner(){ 
        require(msg.sender == owner);
        _;
    }
    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    constructor(){
        owner = msg.sender;
    }

    function addPerson(string memory _firstName, string memory _lastName )public onlyOwner{
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

    function incrementCount() internal {
        peopleCount += 1;
    }
}
