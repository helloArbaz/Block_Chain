// SPDX-License-Identifier: GPL-3.0
pragma solidity < 0.9.0;
contract A {
    uint public x=100;
    address public owner = msg.sender;

    function fun1() public pure returns(string memory) {
        return "From f_1";
    }
    
    function fun2() public pure returns(string memory) {
        return "From f_2";
    }
    
    function fun3() public pure returns(string memory) {
        return "From f_3";
    }
    
    function fun4() public pure virtual returns(string memory) {
        return "From f_4";
    }
}


contract B is A {

    address public newOnwer = msg.sender;

    function fun4() public pure virtual override returns(string memory) {
        return "From B f_4";
    }
}

contract C is B{
    
    function fun4() public pure override returns(string memory) {
        return "From C f_4";
    }

}
