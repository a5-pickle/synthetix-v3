//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Module that enables calling multiple methods of the system in a single transaction.
 */
interface IMulticallModule {
    /**
     * @notice Executes multiple transaction payloads in a single transaction.
     * @dev Each transaction is executed using `delegatecall`, and targets the system address.
     */
    function multicall(bytes[] calldata data) external payable returns (bytes[] memory results);
}
