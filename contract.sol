// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
  uint storedData;
}

contract SimpleAuction {
  event HighestBidIncreased(address bidder, uint amount);
  function bid() public payable {
    emit HighestBidIncreased(msg.sender, msg.value);
  }
}

contract Purchase {
  address public seller;
  modifier onlySeller() {
    require (
      msg.sender == seller,
      "Only seller can call this."
    );
    _;
  }
  function abort() public view onlySeller {

  }
}

contract SetOwnerContract {
  address owner;
  constructor() {
    owner = msg.sender;
  }
}