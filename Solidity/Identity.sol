// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract  IdentityData
{

    uint  age;
    string name;

    constructor() public {
        age=12;
        name="salim";
    }

    function getName() view public returns(uint)  {
        return age;
    }

 }