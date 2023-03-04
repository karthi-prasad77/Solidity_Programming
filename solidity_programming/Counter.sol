// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter{
    uint256 myUint256;

    function getCount() public view returns(uint256) {
        return myUint256;
    }

    function incrementCount() public {
        myUint256++;
    }
}