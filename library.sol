// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

library math{
    function great(uint x, uint y) internal pure returns(uint){
        return x >= y ? x : y;
    }
}

contract Lib{
    function testgreat(uint a, uint b) external pure returns(uint){
        return math.great(a,b);
    } 
}


library arr{
    function array(uint[] storage aray, uint index ) external view returns(uint){
        for(uint i=0; i < aray.length; i++){
            if(aray[i] == index){
                return i;
            }
        }
        revert("Not Found");
    }
}

contract testarr{
    using arr for uint[];
    uint[] public arrr = [3,4,7];
    function testfind() external view returns(uint){
        return arrr.array(7);
    }
}