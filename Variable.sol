// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Variable{
    //State Variable 
    uint public a=10;

    function localvariable() external pure returns(uint){
        //Local Variable
        uint b=20;
        return b;
    }

    function globalvariable() external view returns(address, uint, uint){
        //Global Variable
        address addr = msg.sender;
        uint blocktimestamp = block.timestamp;
        uint blocknumber = block.number;
        return(addr, blocktimestamp, blocknumber);
    }
}