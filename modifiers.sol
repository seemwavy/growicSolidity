// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract modifierAssignment {
    mapping(address => uint256) userBalance;
    address owner;
    struct User {
        string name;
        uint256 age;
    }
    mapping(address => User) userData;
    function setUserDetails(string memory name, uint256 age) public {
        userData[msg.sender] = User(name, age);
        owner = msg.sender;
    } 
    modifier onlyOwner {
        require(msg.sender == owner, "You are not the owner");
        _;
    }
    modifier checkFee(uint256 _amount) {
        uint fee = 5;
        if (_amount <= fee) {
            revert("Amount is too small. Minimum fee is 5.");
        }
        _;
    }

    modifier hasDeposited {
        require(userBalance[msg.sender] > 0, "User must have deposited funds before adding more");
        _;
    }  

    function getUserDetail() public view returns (string memory, uint256) {
        return (userData[msg.sender].name, userData[msg.sender].age);
    }
    function deposit(uint256 funds)  public {
        userBalance[msg.sender] += funds;
    }
    function checkBalance() public view onlyOwner returns (uint256) {
        return userBalance[msg.sender];
    } 
    
   
    
    function withdraw(uint256 funds) public onlyOwner hasDeposited {
        require(userBalance[msg.sender] >= funds, "You don't have enough funds");
        userBalance[msg.sender] -= funds;
    }
    function addFund(uint256 _amount) checkFee(_amount) hasDeposited public hasDeposited {
        userBalance[msg.sender] += _amount;
    }
    
}