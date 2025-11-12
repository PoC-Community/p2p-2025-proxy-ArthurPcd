// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract ProxyV1 {
    uint256 public count;
    address public implem;

    constructor(address _implem) {
        implem = _implem;
        count = 0;
    }

    fallback() external payable {
        (bool success, bytes memory returnData) = implem.delegatecall(msg.data);
        require(success, "Delegatecall failed");
        assembly {
            return(add(returnData, 32), mload(returnData))
        }
    }

    receive() external payable {}
}
