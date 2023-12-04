// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/AccessControl.sol";

contract AccessControlBase is AccessControl {
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant REGULATOR_ROLE = keccak256("REGULATOR_ROLE");

    modifier onlyAdmin() {
        require(hasRole(ADMIN_ROLE, msg.sender), "Must have admin role");
        _;
    }

    modifier onlyRegulator() {
        require(hasRole(REGULATOR_ROLE, msg.sender), "Must have regulator role");
        _;
    }

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(ADMIN_ROLE, msg.sender);
        _grantRole(REGULATOR_ROLE, msg.sender);
    }

    function addAdmin(address _admin) external onlyAdmin {
        _grantRole(ADMIN_ROLE, _admin);
    }

    function removeAdmin(address _admin) external onlyAdmin {
        revokeRole(ADMIN_ROLE, _admin);
    }

    function addRegulator(address _regulator) external onlyAdmin {
        _grantRole(REGULATOR_ROLE, _regulator);
    }

    function removeRegulator(address _regulator) external onlyAdmin {
        revokeRole(REGULATOR_ROLE, _regulator);
    }
}
