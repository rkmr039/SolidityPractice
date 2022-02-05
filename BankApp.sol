pragma solidity ^0.4.18;

contract SimpleBank{
    mapping(address => uint) private balance;
    address public owner;
    event LogDepositMade(address accountAddress, uint amount);
    constructor() public {
        owner = msg.sender;
    }


    function deposite() public payable returns(uint) {
        require((balance[msg.sender] + msg.value) >= balance[msg.sender]);
        balance[msg.sender] += msg.value;
        return balance[msg.sender];
    }

    function withdraw(uint withdrawAmount) public returns(uint) {
        require(withdrawAmount <= balance[msg.sender]);
        msg.sender.transfer(withdrawAmount);
        return balance[msg.sender];
    }
    function getBalance() view public returns (uint) {
        return balance[msg.sender];
    }
}