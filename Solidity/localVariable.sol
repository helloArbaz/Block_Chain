// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract localVariable {

    // string variable by-default gets store on contract level
    // string name = 'abs'

    // local variable are store in function as stack not on the ether network
    function getLocalVariable() pure public returns(uint){
        // to save variable into local use memory keyword to save in local variable
        string memory name = "abs";
        uint local  = 20;
        return local;
    }
}