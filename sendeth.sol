// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract sendether{
    constructor() payable{}
    
    function sendviatransfer(address payable _addr) external payable{
        _addr.transfer(123);
    }

    function sendviasent(address payable _addr) external payable{
       bool sent = _addr.send(123);
       require(sent, "send failed");
    }

    function sendviacall(address payable _addr) external payable{
       (bool success, ) =  _addr.call{value:123}("");
       require(success, "Call Failed");
    }
}

contract ethreceiver{
    event log(uint amount, uint gas);
    receive() external payable{
        emit log(msg.value, gasleft());
    }
}