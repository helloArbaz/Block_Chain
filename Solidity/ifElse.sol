// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;


contract ifElse {
    function check(int _checker) public pure returns(string memory){
        string memory _val='';
        if(_checker > 10){
            _val="Grater";
        }else{
            _val="Less";
        }
        return _val;
    }
}