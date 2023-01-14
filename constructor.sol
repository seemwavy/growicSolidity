// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract A {
    address public owner;
    uint public FEE;

    constructor (uint _fee) {
        owner = msg.sender;
        _fee = FEE;
    }
}


contract B is A{
    address public owner;
    constructor (uint _fee) A(20) {
        owner = msg.sender;
    }

}