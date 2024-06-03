// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AdminOnly {
    address public admin;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call this function");
        _;
    }

    function changeAdmin(address newAdmin) public onlyAdmin {
        admin = newAdmin;
    }

     function adminFunction1(address payable recipient, uint256 amount) public onlyAdmin {
        require(address(this).balance >= amount, "Insufficient balance in contract");
        recipient.transfer(amount);
    }

}
