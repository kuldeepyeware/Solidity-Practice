// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract conditional{
    function if_else(uint _x) external pure returns(uint){
        if(_x <= 10){
            return 1;
        }
        else{
            return 2;
        }
    }
}