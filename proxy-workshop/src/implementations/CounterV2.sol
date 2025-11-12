// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract CounterV2 {
    uint256 public total;
    function add() external {
        total += 2;
    }
    function reset() external {
        total = 0;
    }
}
