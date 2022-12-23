// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract dataTypes {
    //signed integers
    int numbersPositiveOrNegative = -1;
    //unsigned intergers
    uint onlyPositiveNumbers = 5;
    //boolean
    bool trueOrFalse = true;
    //address
    address cryptoWalletAddress = 0xd49CAfcDd07c2e029d1Ba2f390f4d4eAd3E6224b;
    //enum
    enum restrictedVariableWithPredefinedValues  { apple, orange, grapes }
    //bytes 
    bytes32 smallDataTypeComputerReadableValues = "This is really 0's and 1's";
    //string
    string justABunchOfWords = "Woogidey Woogidey";
    //struct
    struct aDataContainerLikeJavascriptObjects  {
        string variabes; 
        bool thatYouCan;
        uint assignLater;
    }
}