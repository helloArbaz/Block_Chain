// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract modifierData
 {
    uint storeData = 23;

    function set(uint x) public {
        storeData=x;
    }

    function get() public view returns (uint) {
        return storeData;
    }
}