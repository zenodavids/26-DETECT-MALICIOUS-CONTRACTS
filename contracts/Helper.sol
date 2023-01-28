//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Declare a contract named "Helper"
contract Helper {
// Declare a mapping that maps addresses to booleans, named "userEligible"
mapping(address => bool) userEligible;

// Declare a function named "isUserEligible" that takes an address as input and returns a boolean
function isUserEligible(address user) public view returns(bool) {
    // Returns the value in the "userEligible" mapping for the given user address
    return userEligible[user];
}

// Declare a function named "setUserEligible" that takes an address as input and sets the value in the "userEligible" mapping for that address to true
function setUserEligible(address user) public {
    userEligible[user] = true;
}

// Declare a fallback function that can be called when no other function matches the function signature
fallback() external {}
}