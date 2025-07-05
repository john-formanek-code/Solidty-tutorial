// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
contract MyEnum{

    enum State { ON, OFF}
    State public state; // access publicaly

    constructor() {
        state = State.ON; // constructor nastaví state na ON HNED PŘI SPUŠTĚNÍ
    }

    function activate() public{
        state = State.OFF; // přepnutí funkce na OFF
    }

    function isOFF() public view returns(bool){
        return state == State.OFF; // funkce vrací true pokud je stav OFF
    }
    
} 