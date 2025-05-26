// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Token.sol";

contract TestContract is Test {
    Token c;

    function setUp() public {
        c = new Token(0);
    }

    function testInit() public {
        assertEq(uint(2), uint(2), "ok");
    }

    function testMint() public {
        c.mint(address(this), 100);
        assertEq(c.BalanceOf(address(this)) , 100 , "ok");
       
    }


    
}
