// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

// story
// we can get the VM balance
// user can purchased the itmes
// each items is > 2 ether
// stockup the values

contract VendingMachine {
    // init the user wallet address
    address public owner;
    mapping(address=>uint) public _VM_Balance;

    constructor() {
        // assign the owner with the wallet address id
        owner=msg.sender;
        _VM_Balance[address(this)] = 100;
    }

    function checkOwner() public view returns(bool){
        return msg.sender == owner;
    }

    function getVMBalance() public view returns(uint){
        return _VM_Balance[address(this)];
    }

    function purchased(uint amount) public payable{
        require(msg.value >= 2 ether , "You Must have at least 2 ether" );
        require(_VM_Balance[address(this)] >= amount , "Not allowed" );
        _VM_Balance[address(this)]-=amount;
        _VM_Balance[owner] +=amount;
    }

    function getOwnerBalance() public view returns(uint){
        return owner.balance;
    }

    function restore(uint _restore) public {
        require(msg.sender == owner,"Not the owner");
        _VM_Balance[address(this)] += _restore;
    }

}