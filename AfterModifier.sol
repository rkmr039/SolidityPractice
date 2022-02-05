// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity >=0.5.0<0.9.0;
// After running the function code. execute the modifier code
contract AfterModifier {
    uint public a;
    constructor() { 
        a = 10;
    }
    
    modifier conditionalChangeAtoThirty() {
        _;
        if (a == 20) {
            a = 30;  
        }
    }
    
    function changeaToTwenty() public conditionalChangeAtoThirty {
        a = 20;
    }
}