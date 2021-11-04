//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../proxy/UUPSImplementation.sol";

contract Bricker is UUPSImplementation {
    // Missing _slot0 => all storage is offseted by one slot
    bytes32 private _slot1;
    bytes32 private _slot2;
    bytes32 private _slot3;
    bytes32 private _slot4;
    bytes32 private _slot5;
    bytes32 private _slot6;
    bytes32 private _slot7;
    bytes32 private _slot8;
    bytes32 private _slot9;

    address private _implementation;
    bool private _simulatingUpgrade;

    function upgradeTo(address newImplementation) public override {
        if (_getImplementation() != newImplementation) {
            _setSimulatingUpgrade(true);
            _setImplementation(newImplementation);
        }
        if (_getSimulatingUpgrade()) {
            _setSimulatingUpgrade(false);
        }
    }

    function _setImplementation(address newImplementation) internal override {
        _implementation = newImplementation;
    }

    function _getImplementation() internal view override returns (address) {
        return _implementation;
    }

    function _setSimulatingUpgrade(bool simulatingUpgrade) internal virtual override {
        _simulatingUpgrade = simulatingUpgrade;
    }

    function _getSimulatingUpgrade() internal view override returns (bool) {
        return _simulatingUpgrade;
    }
}
