// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

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
