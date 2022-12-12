// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BZAccessControl.sol";

contract InheritContract is BZAccessControl {
    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
    }
}