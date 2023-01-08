// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "./ERC20.sol";

contract inheritance is ERC20 {
    constructor(uint256 initialSupply) ERC20("WavyToken", "WAVY") {
        // I could hard code it like this :initialSupply = 5000000;
        // But using initialSupply as a variable I can choose the number during deployment.
        _mint(msg.sender, initialSupply);
    }
}