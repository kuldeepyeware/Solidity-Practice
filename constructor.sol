// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract con{
    address public owner;
    uint public no;

    constructor(uint _no){
        owner = msg.sender;
        no = _no;
    }
}