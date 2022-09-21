// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract test{
    function hash(string memory a, string memory b) external pure returns(bytes32){
        return keccak256(abi.encodePacked(a,b));
    }

    function encode(string memory a,uint num, string memory b) external pure returns(bytes32){
        return keccak256(abi.encode(a,num,b));
    }
}