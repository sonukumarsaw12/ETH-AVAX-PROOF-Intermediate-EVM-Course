// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BaseContract {
    // State variable to store an integer
    uint256 public storedData;
    
    // Payable function to receive Ether and set storedData
    function setStoredData(uint256 _data) public payable {
        require(msg.value > 0, "Ether must be sent to set data.");
        storedData = _data;
    }
    
    // View function to read the stored data
    function getStoredData() public view returns (uint256) {
        return storedData;
    }
    
    // Pure function to add two numbers and return the result
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}

