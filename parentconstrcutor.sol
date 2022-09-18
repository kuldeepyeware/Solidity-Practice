// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract A{
    string public name;
    constructor(string memory _name){
        name = _name;
    }
}

contract B {
   string public text;
   constructor(string memory _text){
       text = _text;
   }
}

contract C is A("a"),B{
    constructor(string memory _text) B(_text){}
}