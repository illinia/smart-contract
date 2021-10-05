// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

import "@openzeppelin/contracts/security/Pausable.sol";

contract PausableSample is Pausable {
  constructor() payable {}

  function normalFunction() public whenNotPaused {

  }
}