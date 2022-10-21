pragma solidity ^0.8.9;

// SPDX-License-Identifier: UNLICENSED

contract Eatz {
    // Some identifiers
    string public name = "Eatz";
    string public symbol = "ETZ";
    string public description = "Eatz is a loyalty reward for restaurants";
    string public version = "0.1.0";

    // There are 100 tokens in total
    uint public totalSupply = 100;

    // An address type variable to store the address of the owner of the contract
    address public owner;

    // Store each account's address
    mapping(address => uint) public balances;


    // The Transfer event helps off-chain aplications understand
    // what happens within your contract.
    event Transfer(address indexed from, address indexed to, uint256 amount);

    /**
     * Contract initialization
     */

    constructor() {
        // totalSupply assigned to the owner
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }

    function transfer(address to, uint256 amount) external {
        // Check if the sender has enough eatz. 
        require(balances[msg.sender] >= amount, "Not enough ETZ.  Sorry, friend.");

        // Transfer the amount
        balances[msg.sender] -= amount;
        balances[to] += amount;

        // Notify off-chain applications of the transfer
        emit Transfer(msg.sender, to, amount);
    }

    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }
}
