// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;


contract Mapping {
    
    struct Student {
        string name;
        uint class;
    }

    mapping(uint=>Student) public data;

    constructor(uint _class, string memory _name) public {
        data[_class] = Student(_name,_class);
    }


    // mapping(uint=>string) public _dsa;

    // function set(uint _index, string memory _val) public{
    //     _dsa[_index] = _val;
    // }

    // mapping(string)

}