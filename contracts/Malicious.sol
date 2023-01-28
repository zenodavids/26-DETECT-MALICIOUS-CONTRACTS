//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Set the owner of the contract
contract Attack {
    // Variable to store the owner's address
    address owner;
    // Mapping to store eligible users
    mapping(address => bool) userEligible;

    constructor() {
         // Sets the owner of the contract to the address of the person that deployed the contract
        owner = msg.sender;
    }

        // Function to check if a user is eligible
    function isUserEligible(address user) public view returns(bool) {
            // Checks if the user is the owner
        if(user == owner) {
            // If they are, returns true
            return true;
        }
        // Otherwise, returns false
        return false;
    }

        // Function to set a user as eligible
    function setUserEligible(address user) public {
         // Sets the user as eligible in the mapping
        userEligible[user] = true;
    }

     // Fallback function for when a transaction is sent to the contract
    fallback() external {}
}