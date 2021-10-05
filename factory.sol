// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract Factory {
  Child[] childList;

  function createChildContract() public payable {
    Child child = new Child(msg.sender);
    childList.push(child);
  }

  function getDep
}

contract Child {
  address owner;

  constructor(address _owner) {
    owner = _owner;
  }
}