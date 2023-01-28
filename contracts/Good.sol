//SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

//This line is importing the "Helper" contract from the same directory
import "./Helper.sol";

//This line is declaring a contract named "Good"
contract Good {
//This line is declaring a variable "helper" of type "Helper"
Helper helper;
//This line is declaring the constructor function which is called when the contract is deployed
//This constructor function takes an address as input, named "_helper"
//The "payable" keyword allows the contract to receive ether
constructor(address _helper) payable {
//This line is assigning the address passed as input to the "helper" variable
helper = Helper(_helper);
}
    //This function is used to check if a user is eligible
    //It is public, view and returns a boolean value
function isUserEligible() public view returns(bool) {
    //This line calls the "isUserEligible" function from the "helper" contract and passes the msg.sender (the address of the user calling this function) as input
    //It returns the boolean value returned by the "isUserEligible" function
    return helper.isUserEligible(msg.sender);
}

    //This function is used to add a user to the list
    //It is public
function addUserToList() public  {
    //This line calls the "setUserEligible" function from the "helper" contract and passes the msg.sender (the address of the user calling this function) as input
    helper.setUserEligible(msg.sender);
}

//This function is the fallback function. It is executed when the contract receives a call or transaction that is not handled by any other function.
//The "external" keyword specifies that this function can be called from outside of the contract, but not internal
fallback() external {}
}

/* * To aviod issues;
instead of doing Helper(_helper) where you are typecasting _helper address into a contract which may or may not be the Helper contract, create an explicit new helper contract instance using new Helper().
 *  replace line 11 with => Helper public helper;
 *  replace line 11 with => helper = new Helper();
 */