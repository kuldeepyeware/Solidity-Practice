// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Fallback{
    event log(string func, address sender, uint val, bytes data);

    fallback() external payable{
        emit log("Fallback", msg.sender, msg.value, msg.data);
    }
    
    receive() external payable{
        emit log("Receive", msg.sender, msg.value, "");
    }
}