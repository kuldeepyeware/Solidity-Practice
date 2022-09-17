// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract enumeg{
    enum status{
        none,
        reveiwing,
        transacting,
        completed,
        deliver
    }

    status public state;

    function get() public view returns(status){
        return state;
    }

    function set(status _state) public {
        state = _state;
    }

    function deliver() public {
        state = status.deliver;
    }

    function reset() public {
        delete state;
    }
 }