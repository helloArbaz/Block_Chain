// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;


contract pureVsView {
    uint public age=20;

    // view and pure are used in such cases where we not update any state variable but we might update local variable

    // in view read  allowed

    // in pure react and write are not allowed

    function getAge() public view returns (uint){
        return age;
    }

    function pureFunction() public pure returns(uint){
        uint localVal = 12;
        return localVal;
    }
}