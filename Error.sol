// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract errorcontract{

    uint i=10;

    function required() public {
        require(i<=12, "i is smaller");
        i--;
    }

    function reverted() public {
        if(i<=12){
            revert("i is smaller");
        }
        else{
            i--;
        }     
    }

    error firsterror(address caller, uint no);

    function customerror(uint _i) public view{
        if(_i<=12){
            revert firsterror(msg.sender, _i);
        }
    }
}    