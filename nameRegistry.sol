// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract NameRegistry {
  mapping(string => address) registry;

  function registerName(string memory name, address addr) public returns (bool) {
    registry[name] = addr;
    return true;
  }

  function getContractAddress(string memory name) public view returns(address) {
    return registry[name];
  }
}