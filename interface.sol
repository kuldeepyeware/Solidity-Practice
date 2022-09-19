// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface Icounter {
    function count() external view returns(uint);
    function inc() external ;
}

contract Interface{
    uint public count;

    function example(address _counter) external {
        Icounter(_counter).inc();
        count = Icounter(_counter).count();
    }

}