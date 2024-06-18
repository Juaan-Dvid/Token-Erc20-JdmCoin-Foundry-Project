// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import { Script } from "forge-std/Script.sol";
import { JdmCoin } from "../src/JdmCoin.sol";
import { console} from "forge-std/console.sol";

contract JdmCoinDeploy is Script {

    function run() public {
        vm.startBroadcast();
        address owner = vm.envAddress("OWNER");
        JdmCoin jdmCoin = new JdmCoin(owner);
        console.log("JdmCoin deployed at: ", address(jdmCoin));
        vm.stopBroadcast();
    }

}