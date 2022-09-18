// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract wallet{

    address payable public  owner;

    constructor(){
        owner = payable(msg.sender);
    }

    receive() external payable{}

    function withdraw(uint amount) external {
        require(owner == msg.sender, "You are not owner");
        payable(msg.sender).transfer(amount);
    }

    function getbalance() external view returns(uint) {
        return address(this).balance;
    }

}