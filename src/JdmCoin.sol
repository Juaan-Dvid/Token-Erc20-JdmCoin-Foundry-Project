// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import { ERC20 } from "solmate/tokens/ERC20.sol";


contract JdmCoin is ERC20{

    constructor(address owner) ERC20("JdmCoin", "JDM", 18) {
        _mint(owner, 1000000 * 10 ** 18);
    }

    function getBalance(address _address) public view returns(uint256) {
        return balanceOf[_address];
    }

}
