// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrivacyBase {
    function hashIdentifier(address _address, uint256 _timestamp) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(_address, _timestamp));
    }
}
