// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract mapping {
    mapping(address => uint256) userBalance;
    function deposit(uint256 funds) public {
        userBalance[msg.sender] += funds;
    }
    function checkBalance() public returns (uint256) {
        return userBalance[msg.sender];
    }
}