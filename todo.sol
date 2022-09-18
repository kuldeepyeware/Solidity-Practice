// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract todo{
    struct Todo{
        string text;
        bool completed;
    }

    Todo[] public todos;

    function addtask(string calldata _text) public {
        todos.push(Todo({text : _text, completed : false}));
    } 

    function updatetask(uint _index, string calldata _text) public {
        todos[_index].text = _text;
    }

    function gettask(uint _index) public view returns(string memory, bool){
        Todo memory _todo = todos[_index];
        return (_todo.text, _todo.completed);
    }

    function togglecomplete(uint _index) public {
        todos[_index].completed = !todos[_index].completed;
    }
}