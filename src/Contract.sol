// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

contract Contract { 
  uint nums;
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
