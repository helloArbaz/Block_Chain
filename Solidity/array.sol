// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;


contract arrayContract {
    uint [4] public _declare = [1,2,3,4];

    function setter(uint _index, uint _val) public {
        _declare[_index] = _val;
    }

    function getLength() public view returns(uint){
        return _declare.length;
    }


    uint[] public _dynamic;

    function add(uint _val) public  {
        _dynamic.push(_val);
    }

    function getDynamic() public view returns (uint){
        return _dynamic.length;
    }
}