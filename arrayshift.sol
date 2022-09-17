// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Arrayshift
{   
    uint[] public arr = [1,2,3,4];

    function addelement(uint no) public {
        arr.push(no);
    }

    function remove(uint _index) public {
        require(_index < arr.length, "Index is greater than array length");

        for(uint i = _index; i < arr.length - 1; i++){
            arr[i] = arr[i + 1]; 
        }
        arr.pop();
    }

}
