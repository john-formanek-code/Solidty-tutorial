// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Contract {
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;
    uint256 public openingTime = 1751699716;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyWhileOpen() {
        require(block.timestamp >= openingTime, "Contract not open yet");
        _;
    }

    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    function addPerson(
        string memory _firstName,
        string memory _lastName
    )
        public
        onlyWhileOpen
    {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

    function incrementCount() internal {
        peopleCount += 1;
    }
}
