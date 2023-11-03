// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import { Switchboard } from "@switchboard-xyz/evm.js/contracts/core/testnet/Switchboard.sol";

contract PriceFetcher {
    Switchboard switchboard = Switchboard(0xE746D2c8547691436C42d22Fa0740AEd3DCD289D);

    function getLatestPrice() public view returns (uint256 value, uint256 timestamp) {
        (value, timestamp) = switchboard.getLatestResult();
    }
}
