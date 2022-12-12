// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BZAccessControl.sol";

contract AdminContract {
    BZAccessControl private _accessControl;

    constructor() {}

    function setAccessControl(address _address) external {
        _accessControl = BZAccessControl(_address);
    }

    function hasRole(bytes32 role, address account)
        external
        view
        returns (bool)
    {
        return _accessControl.hasRole(role, account);
    }

    function grantRole(bytes32 role, address account) external {
        _accessControl.grantRole(role, account);
    }

    function revokeRole(bytes32 role, address account) external {
        _accessControl.revokeRole(role, account);
    }

    function renounceRole(bytes32 role, address account) external {
        _accessControl.renounceRole(role, account);
    }

    function setRoleAdmin(bytes32 role, bytes32 adminRole) external {
        _accessControl.setRoleAdmin(role, adminRole);
    }

    function getRoleAdmin(bytes32 role) external view returns (bytes32) {
        return _accessControl.getRoleAdmin(role);
    }

    function getRoleAt(bytes32 role, uint256 index)
        external
        view
        returns (address)
    {
        return _accessControl.getRoleAt(role, index);
    }

    function getRoleCount(bytes32 role) external view returns (uint256) {
        return _accessControl.getRoleCount(role);
    }
}
