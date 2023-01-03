pragma solidity ^0.8.4;

contract structAssignment {
    mapping(address => uint) userBalance;

    function deposit(uint256 funds) public {
        userBalance[msg.sender] += funds;
    }

    function checkBalance() public view returns (uint256) {
        return userBalance[msg.sender];
    }

    struct User {
        string name;
        uint256 age;
    }
    User public user;
    function setUserDetails(string memory name, uint256 age) public {
        user = User(name, age);
    }

    function getUserDetail() public view returns (string memory, uint256) {
        return (user.name, user.age);
    }
}
