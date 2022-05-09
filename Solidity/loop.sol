// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;


contract loop {
    uint[3] public _loopArray;
    uint public counter;

    function _modifyWileLoop() public {
        while(counter<_loopArray.length){
            _loopArray[counter]=counter++;
            counter++;
        }
    }

     function random() private view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, _loopArray)));
    }

    function _modifyForLoop() public {
        for(uint i = counter ; i < _loopArray.length; i++){
            _loopArray[counter] = random()%_loopArray.length;
            counter++;
        }
    }
}

