// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Loop {
    function loop() public pure{
        for (uint i = 0; i < 8; i++) {
            if (i == 3) {
                continue;
            }
            if (i == 4) {
                break;
            }
        }

        uint j;
        while (j < 10) {
            j++;
        }
    }
}
