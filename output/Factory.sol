pragma solidity ^0.7.0;

import "./Target.sol";

contract Factory {

    event CloneCreated(address indexed clone, address indexed owner);

    function createClone(string memory name) public returns (address cloneAddress) {
        Target clone = new Target(name);
        cloneAddress = address(clone);
        emit CloneCreated(cloneAddress, msg.sender);
    }
}