pragma solidity >=0.7.0 < 0.9.0;

contract Payable {

    function pay() public payable {

    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function getAddress() public view returns(address){
        return msg.sender;
    }

    function transfer(address payable _address)  payable public {
        _address.transfer(1 ether);
    }
}