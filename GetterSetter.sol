pragma solidity ^0.8.7;

contract GetterSetterExample {
    uint value; // State variable
    constructor() public {
        value = 100;
    }

    function setData(uint x) public {
        value = x;
    }

    function getData() public view returns(uint)    {
        return value;
    }
}