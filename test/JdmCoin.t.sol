// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import { JdmCoin } from "../src/JdmCoin.sol";

contract JdmCoinTest is Test {

    JdmCoin public jdmCoin;
    address testAccount = address(0x123);

    function setUp() public {
        jdmCoin = new JdmCoin(testAccount);
    }

    function testSymbol() public view {
        string memory symbol = jdmCoin.symbol();
        assertEq(symbol, "JDM");
    }

    function testName() public view {
        string memory name = jdmCoin.name();
        assertEq(name, "JdmCoin");
    }

    function testDecimals() public view {
        uint8 decimals = jdmCoin.decimals();
        assertEq(decimals, 18);
    }

    function testGetBalance() public view {
        uint256 balance = jdmCoin.getBalance(testAccount);
        assertEq(balance, 1000000 * 10 ** 18);
    }

}