pragma solidity ^0.7.0;

contract Target {
    string public name;

    constructor(string memory newName) {
        name = newName;
    }
}