pragma solidity ^0.7.0;

import "@nomiclabs/buidler/console.sol";

contract AssemblyTester {

    event Encoded(bytes32 requestId, bytes data);

    function firstTest(bytes32 requestId, uint firstData, uint secondData) public returns (bytes memory){

        bytes memory data = abi.encode(requestId, firstData, secondData);

        bytes32 result;

        assembly{
            result := mload(add(data, 0x20))
        }
        console.logBytes32(requestId);
        console.logBytes32(result);

        emit Encoded(requestId, data);
    }
}