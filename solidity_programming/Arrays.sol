// SPDX-License-Identifier: MIT
pragma solidity^0.8.0;

contract Arrays{
    uint256[] public myArray = [1, 2, 3];
    string[] public myString = ["Apple", "Orange", "Grapes"];
    string[] public value;
    uint[][] public array2D = [[1, 2, 3], [4, 5, 6]];

    // function to add the value into the array
    function addValue(string memory _value) public {
        value.push(_value);
    }

    // function to get the value at the specific position
    function positionValue() public view returns(uint) {
        return value.length;
    }
 }