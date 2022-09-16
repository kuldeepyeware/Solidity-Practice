// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract ownable{

    address public owner;

    constructor()
    {
        owner = msg.sender;
    }

    modifier onlyowner(){
        require(owner == msg.sender, "You are not owner");
        _;
    }

    function newowner(address _addr) public onlyowner
    {
        require(_addr != address(0), "Add appropriate address");
        owner = _addr; 
    }

    function any() public pure
    {
        revert("Any one can click me");
    }

    function ownerfun() public view onlyowner
    {
        revert("You are the owner of contract");
    }

}
