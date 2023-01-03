pragma solidity ^0.8.4;

contract events {
    mapping(address => uint256) userBalance;
    uint fee = 5;
    event fundsDeposited(address indexed _from, uint256 _amount);
    event profileUpdated(address indexed _from, string _name, uint256 _age);
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
        emit profileUpdated(msg.sender, user.name, user.age);
    }
    function deposit(uint256 funds) public {
        userBalance[msg.sender] += funds;
        emit fundsDeposited(msg.sender, funds);
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
    function withdraw(uint256 funds) public onlyOwner hasDeposited {
        require(userBalance[msg.sender] >= funds, "You don't have enough funds");
        userBalance[msg.sender] -= funds;
    }
    function addFund(uint256 _amount) public checkFee hasDeposited {
        require(_amount > fee, "Insufficient funds");
        userBalance[msg.sender] += _amount;
    }
    modifier hasDeposited {
        require(userBalance[msg.sender] > 0, "User must have deposited funds before adding more");
        _;
    }  
}