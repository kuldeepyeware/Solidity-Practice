// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract imu{
    address public immutable owner;
    constructor(){
        owner = msg.sender;
    }
}