// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract A{
    function hello() public virtual pure returns(string memory){
        return "Hello Everyone";
    }

    function bye() public  pure returns(string memory){
        return "Bye Everyone";
    }
}

contract B is A{
    function hello() public virtual override pure returns(string memory){
        return "Good Morning";
    }   

    function tp() public pure returns(string memory){
        return "I am contract B";
    }  
}

contract C is A,B{
    function hello() public virtual override( A, B) pure returns(string memory){
        return "Good Afternoon";
    } 
}