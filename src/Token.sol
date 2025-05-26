// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract Token is ERC20{
  address public owner;
  
  constructor(uint _initial_value) ERC20("Test Token", "TT") {
    //can mint initial tokens
    owner = msg.sender;
    _mint(msg.sender , _initial_value);
  }

  function mint(address to , uint amount) public {
    require(msg.sender == owner, "only owner can mint to some other address");
    require(to != address(0), "cannot mint to zero address");
    _mint(to , amount);
  }

  function BalanceOf(address account) public view returns (uint){
    return balanceOf(account);
  }
}
