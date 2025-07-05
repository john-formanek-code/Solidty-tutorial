// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract MyContract {
    string public value = "myValue";//protože jsem tam public nemusím zjišťovat hodnotu
    string public constant name = "John";
    bool public myBool = true;
    int public myInt = 1;
    uint104 public myUint104 = 80000;

}