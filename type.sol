// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract BoolType {
  bool a = true;
  bool b = false;

  bool c = a || b;
  bool d = b && a;
}

contract IntType {
  uint a = 3;
  uint b = 2;

  uint c = a / b * 2;
  uint d = 3 / 2 * 2;
}

contract AddressType {
  address payable x = msg.sender;
  address myAddress = address(this);
  if (x.balance < 10 && myAddress.balance >= 10) x.transfer(10);
}

contract ByteType {
  bytes2 b = 'ba';
  bytes memory a = 'baaaaaaa';
  string memory name = 'Miguel';
}

contract Enum {
  enum Colors {Red, Blue, Green}
  Colors color;

  function getColor() public view returns (Colors) {
    return color;
  }

  function setColor() public {
    color = Colors.Blue;
  }
}

contract TypeArray {
  uint[] memory a = new uint[](6);
  a[6] = 8;


}