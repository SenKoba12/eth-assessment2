// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract BankExample {
    uint256 public total;

    function deposit(uint256 value) public {
        require(value > 0, "Invalid Deposit");
        assert(total + value > total);
        total += value;
    }

    function withdraw(uint256 value) public {
        require(value > 0, "Invalid Withdrawal");
        if (value > total) {
            revert("Need More Money");
        }
        total -= value;
    }
}
