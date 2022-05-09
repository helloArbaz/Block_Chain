// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract Global {

    address public owner;

    constructor() public {
        owner = msg.sender;
    }
    
    function blockCall() public view returns (address){
        return owner;
    }
    function getBalance() public view returns(uint256){
        return owner.balance;
    }


}