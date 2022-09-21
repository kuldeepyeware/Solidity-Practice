// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract destroy{
    constructor() payable{}

    function test() external pure returns(uint) {
        return 123456789;
    }

    function demolish() external  {
        selfdestruct(payable(msg.sender));
    }
}

contract helper{
    function balance() external view returns(uint){
        return address(this).balance;
    }

    function kill(destroy _demo) external {
        _demo.demolish();
    }
}