// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract CounterV1 {
    uint256 public total;
    function add() external {
        total += 1;
    }
}
