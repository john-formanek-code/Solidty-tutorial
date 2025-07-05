// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract MyContract {
    string value;

    constructor()  {
        value = "myValue";
    }

    function get() public view returns(string memory){  //public - tato funkce může být volána anyone kdo má access do contractu, returns(string) - víme co čteme --> víme co bude výstupem, view - pouze čte nic nemění, memory - proměnná je dočasná, pouze během běhu funkce.

        return value; //čte hodnotu string value
    }

    function set(string memory _value) public{
        value = _value;
    }
}