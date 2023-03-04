// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Variables{
    // variables and data types
    // state variables
    uint256 public myUint256 = 1;
    int256 public myInt256 = 1;
    uint8 public myInt8 = 1;

    string public myString = "Hello Ethereum";
    bytes32 public myBytes = "Hello Ethereum";

    address public myAddress = 0xd9145CCE52D386f254917e481eB44e9943F39138;

    // Struct keyword
    struct MyStruct {
        uint256 myIntStruct;
        string myStringStruct;
    }

    MyStruct public mystruct = MyStruct(1, "Hello Web3.0");

    // local variables
    function loaclVariable() public pure returns(uint256) {
        uint256 count = 1;
        return count;
    }
}