// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract piggybank{
    event deposit(uint amount, address sender);
    event Withdraw(uint amount);

    address public owner = msg.sender;

    receive() external payable{
        emit deposit(msg.value, msg.sender);
    }

    function withdraw() external {
        require(owner == msg.sender, "You are not owner");
        emit Withdraw(address(this).balance);
        selfdestruct(payable(msg.sender));
    }
}