// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract HelloWorld {
    string message = "Hellow World";
    address public issuer;
    constructor() {
        issuer = msg.sender;
    }

    function getMessage() public view returns(string memory) {
        return message;
    }

    function setMessage(string memory newmessage) public returns(string memory ) {
        if (issuer != msg.sender) {
            message = "Not A Owner!";
            return message;
        }
        message = newmessage;
        return message;
    }

}