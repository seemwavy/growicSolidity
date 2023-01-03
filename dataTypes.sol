// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract dataTypes {
    //signed integers. Can be used to count positive or negative numbers for example the movement of tokens in a trade, -100 from one party +100 to another
    int public numbersPositiveOrNegative = -1;
    //unsigned intergers, used for only positive numbers for example number of tokens in a wallet.
    uint public onlyPositiveNumbers = 5;
    //boolean, can be used for conditional functions like if a user has an NFT send an airdrop
    bool public trueOrFalse = true;
    //address, example: walllet address for transactions
    address private cryptoWalletAddress = 0xd49CAfcDd07c2e029d1Ba2f390f4d4eAd3E6224b;
    //enum example: a dayOfWeek variable that can only have values of "sunday" monday" "tuesday" etc.
    enum restrictedVariableWithPredefinedValues  { apple, orange, grapes }
    //bytes variables stored in a small data type that can make transactions cheaper for example saving number variables as bytes instead of integers 
    bytes32 public smallDataTypeComputerReadableValues = "This is really 0's and 1's";
    //string: words the computer reads as text like "Hello World"
    string justABunchOfWords = "Woogidey Woogidey";
    //struct objects similar to Javascript that can hold different variables
    struct aDataContainerLikeJavascriptObjects  {
        string variables; 
        bool thatYouCan;
        uint assignLater;
    }
}