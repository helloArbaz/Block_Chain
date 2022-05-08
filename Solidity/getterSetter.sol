// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract getterSetter {
    uint public age;
    string public name;

    function set() public  {
        age=100*1;
    }
}