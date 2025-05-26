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
        c.mint(address(this), 1000);
        assertEq(c.BalanceOf(address(this)) , 1000 , "ok");
       
    }

    function testTransfer() public {
        c.mint(address(this), 199);
       
        c.TranferTo(0x075c299cf3b9FCF7C9fD5272cd2ed21A4688bEeD, 100);
        assertEq(c.BalanceOf(0x075c299cf3b9FCF7C9fD5272cd2ed21A4688bEeD), 100, "ok");
       
    }

    function testApproval() public{
        c.mint(address(this) , 100);

        c.approve(0x075c299cf3b9FCF7C9fD5272cd2ed21A4688bEeD, 10);
        assertEq(c.allowance(address(this), 0x075c299cf3b9FCF7C9fD5272cd2ed21A4688bEeD),10 , "ok");

        vm.prank(0x075c299cf3b9FCF7C9fD5272cd2ed21A4688bEeD);
        c.transferFrom(address(this), 0x075c299cf3b9FCF7C9fD5272cd2ed21A4688bEeD, 5);
        assertEq(c.balanceOf(address(this)) , 95 , "ok");
        assertEq(c.balanceOf( 0x075c299cf3b9FCF7C9fD5272cd2ed21A4688bEeD), 5 , "ok");
        assertEq(c.allowance(address(this), 0x075c299cf3b9FCF7C9fD5272cd2ed21A4688bEeD),5 , "ok");

    }


    



    
}
