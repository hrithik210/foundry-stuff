// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Token.sol";

contract TestContract is Test {
    Token c;

    function setUp() public {
        c = new Token();
    }

    function testInit() public {
        assertEq(2, 2, "ok");
    }


    
}
