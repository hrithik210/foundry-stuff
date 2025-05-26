// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract Token is ERC20{

  constructor(uint _initial_value) ERC20("Test Token", "TT") {
    //can mint initial tokens
  }
}
