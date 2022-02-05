// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity >=0.5.0 <= 0.9.0;

contract ArrrayExample{
    uint[] public dynamicArray;

    function pushElement(uint element) public {
        dynamicArray.push(element);
    }

    function getLength() public view returns(uint) {
        return dynamicArray.length;
    }

    function popUpElement() public {
        dynamicArray.pop();
    }
}