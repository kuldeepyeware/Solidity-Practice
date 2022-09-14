// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract valuetypes{
    bool public b = true;
    uint public u = 123;
    int public i = -123;

    int public minint = type(int).min;
    int public maxint = type(int).max;

    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    bytes3 public b1 = 0x612345;
    bytes public b2 = "abc";
}