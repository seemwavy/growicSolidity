// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract payableAssignment {
    mapping(address => uint256) userBalance;
    function deposit() payable public {
        userBalance[msg.sender] += msg.value;
    }
    function checkBalance() public view returns (uint256) {
        return userBalance[msg.sender];
    }
}