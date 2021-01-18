pragma solidity ^0.7.0;

contract CloneTarget {
    string public name;

    function init(string memory newName) public {
        name = newName;
    }
}