//SPDX-License-Identifier: MIT
pragma solidity >=0.8.11 <0.9.0;

import {UUPSProxyWithOwner} from "@synthetixio/core-contracts/contracts/proxy/UUPSProxyWithOwner.sol";

contract Proxy is UUPSProxyWithOwner {
    constructor(
        address firstImplementation,
        address initialOwner
    ) UUPSProxyWithOwner(firstImplementation, initialOwner) {} // solhint-disable-line no-empty-blocks
}
