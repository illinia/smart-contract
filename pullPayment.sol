// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract WithdrawalContract {
  using SafeMath for uint256;
  mapping(address => uint256) private _deposits;

  function deposit() public payable {
    uint256 amount = msg.value;
    _deposits[msg.sender] = _deposits[msg.sender].add(amount);
  }

  function withdraw() public {
    uint256 amount = _deposits[msg.sender];
    _deposits[msg.sender] = 0;
    payable(msg.sender).transfer(amount);
  }
}