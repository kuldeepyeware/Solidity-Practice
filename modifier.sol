// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract modifiered{
    uint public count;
    bool public Paused;

    modifier cap()
    {
        require(!Paused, "Transaction on pause");
        _;
    }

    function pause(bool _paused) public 
    {
        Paused = _paused;
    }

    function inc() public cap
    {      
        count += 1;
    }

    function dec() public cap
    {
        count -= 1;
    }

}
