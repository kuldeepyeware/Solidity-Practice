// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Payable{
    address payable public owner;
    constructor(){
        owner = payable(msg.sender);
    }

    function deposit() external payable{}

    function get() external view returns(uint){
        return address(this).balance;
    }
}