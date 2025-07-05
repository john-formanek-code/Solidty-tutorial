// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Contract {
    Person[] public people; //obsahuje seznam všech osob - array

    uint256 peopleCount;

    //struct - více typů pod jedním typem
    struct Person {
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName )public{
        people.push(Person(_firstName,_lastName)); // vloží novou strukturu do pole
        peopleCount += 1;
    }

    function getPersin(uint256 index) public view returns(string memory, string memory){
        Person memory person = people[index];
        return (person._firstName ,  person._lastName);
    }
}
