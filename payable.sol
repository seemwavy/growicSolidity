// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract payableAssignment {
    mapping(address => uint256) userBalance;
    function deposit(uint256 funds) payable public {
        userBalance[msg.sender] += funds;
    }
    function checkBalance() public view returns (uint256) {
        return userBalance[msg.sender];
    }
}