// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/ChainlinkClient.sol";

contract ChainlinkBase is ChainlinkClient {
    uint256 public verifiedAmount;

    // Chainlink oracle address and job ID
    address private oracle = 0x83dA1beEb89Ffaf56d0B7C50aFB0A66Fb4DF8cB1;
    bytes32 private jobId = "your-job-id";

    // Chainlink payment amount in LINK tokens
    uint256 private fee = 0.1 * 10**18; // 0.1 LINK

    function verifyTransaction(uint256 _amount) internal returns (bool) {
        // Create a Chainlink request to fetch data from gov.br or Receita Federal
        Chainlink.Request memory request = buildChainlinkRequest(jobId, address(this), this.fulfill.selector);
        
        // Send the request
        sendChainlinkRequestTo(oracle, request, fee);

       verifiedAmount = _amount;

        return true;
    }

    // Callback function to handle the response from the Chainlink oracle
    function fulfill(bytes32 _requestId, uint256 _amount) public recordChainlinkFulfillment(_requestId) returns (bytes32) {
        // Compare the received amount with the stored verified amount
        if (_amount > verifiedAmount) {
             verifiedAmount = 0; // Reset the verified amount
            return _requestId;
        } else {
            verifiedAmount = 0; // Reset the verified amount
            return bytes32(0);
        }
    }
}
