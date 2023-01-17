// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract A {
    address public owner;
    uint public FEE;

    constructor (uint _fee) {
        owner = msg.sender;
        FEE = _fee;
    }
}

contract B is A {
    constructor (uint _fee) A(_fee) {
        owner = msg.sender;
    }
    function getFee() public view returns (uint) {
        return FEE;
    }
}