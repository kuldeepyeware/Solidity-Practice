// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

  contract MappingIterate
{   
  mapping(address => uint) public balances;
  mapping(address => bool) public inserted;
  address[] public keys;

  function set(address _key, uint _val) external {
      balances[_key] = _val;
      if(!inserted[_key]){
          inserted[_key] = true;
          keys.push(_key);
      }
  }

  function getsize() public view returns(uint) {
      return keys.length;
  }

  function firstbal() public view returns(uint) {
      return balances[keys[0]];
  }

  function lastbal() public view returns(uint) {
      return balances[keys[keys.length - 1]];
  }

  function get(uint _i) public view returns(uint) {
      return balances[keys[_i]];
  }

}
