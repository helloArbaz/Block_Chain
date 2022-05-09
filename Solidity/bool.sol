// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract Bool { 
    bool public _val;

    function setBol() public returns(bool val){
        _val=true;
        return _val;
    }
}