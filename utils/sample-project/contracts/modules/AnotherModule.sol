//SPDX-License-Identifier: MIT
pragma solidity >=0.8.11 <0.9.0;

import "../interfaces/IAnotherModule.sol";

contract AnotherModule is IAnotherModule {
    uint256 private constant _SIXTY_FOUR = 64;
    // solhint-disable-next-line immutable-vars-naming
    uint256 private immutable _LEET = 1337;

    function getAnotherValue() public pure override returns (uint256) {
        return _SIXTY_FOUR;
    }

    function getAnotherImmutableValue() public pure override returns (uint256) {
        return _LEET;
    }
}
