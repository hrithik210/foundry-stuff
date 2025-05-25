// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Counter { 
  uint public nums;
  
  constructor(uint _nums){
    nums = _nums;
  }

  function Increment() public{
    nums++;
  }
  
  function Decrement() public{
    nums--;
  }
}
