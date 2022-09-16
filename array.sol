// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

    contract Array{
        
    uint[] public a = [1,2,3];
    uint[5] public b = [4,5,6,7];

    function example() external {
        a.push(4);
        uint x = a[2];
        a[2] = 5;
        delete a[3];
        a.pop();
        uint y = b.length;

        uint[] memory c = new uint[](4);
        c[1] = 123;
    }
}
