// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ABSCoinERC20 {
    /**
     */

    string public constant _coin_name = "ABS_COIN";
    string public constant _coint_symbol="ABS";
    uint public _coin_decimals;

    event Transfer(address indexed from, address indexed to, uint tokens);
    
    mapping(address=>uint) _balance;

    constructor(uint coin_decimals)  {
        _coin_decimals = coin_decimals;
        _balance[msg.sender] = _coin_decimals;
    }

    function transferCoins(address receiver , uint tokens) public  {
        require(tokens <= _balance[msg.sender]);
        _balance[msg.sender] -= tokens;
        _balance[receiver]+= tokens;
        emit Transfer(msg.sender,receiver,tokens);
    }

    function getBalanceCoins() public view returns (uint){
        return _balance[msg.sender];
    }
}