pragma solidity ^0.8.4;

contract modifierAssignment {
    mapping(address => uint256) userBalance;
    uint fee = 5;
    function deposit(uint256 funds) public {
        userBalance[msg.sender] += funds;
    }
    function checkBalance() public view returns (uint256) {
        return userBalance[msg.sender];
    } 
    modifier checkFee(uint256 _amount) {
        require(_amount > fee, AmountToSmall());
        _;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "You are not the owner");
        _;
    }
    address owner;
    function withdraw(uint256 funds) public onlyOwner {
        require(userBalance[msg.sender] >= funds, "You don't have enough funds");
        userBalance[msg.sender] -= funds;
    }
    function addFund(uint256 _amount) public checkFee hasDeposited {
        require(userBalance[msg.sender] > 0, "User must have deposited funds before adding more");
        require(_amount > fee, "Insufficient funds");
        userBalance[msg.sender] += _amount;
    }
    modifier hasDeposited {
        require(userBalance[msg.sender] > 0, "User must have deposited funds before adding more");
        _;
    }  
}