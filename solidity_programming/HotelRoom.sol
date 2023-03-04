// SPDX-License-Identifier: MIT
pragma solidity^0.8.0;

contract HotelRoom{
    enum statues {
        Vacant,
        Occupied
    }
    statues public currentStatus;

    event Occupy(address _occupant, uint256 _value);

    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
        currentStatus = statues.Vacant;
    }

    modifier onlyWhileVacant() {
        require(currentStatus == statues.Vacant, "Currently occupied");
        _;
    }

    modifier costs(uint256 _amount) {
        require(msg.value > _amount, "Not enough ether provided.");
        _;
    }

    function book() public payable onlyWhileVacant costs(2 ether) {
        currentStatus = statues.Occupied;

        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        require(true);

        emit Occupy(msg.sender, msg.value);
    }
}