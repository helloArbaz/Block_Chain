// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract ENUM {

    // const variable
    enum user { allowed , not_allowed, back_bencher }
    // string memory public  _val = users.allowed;
    
    user public u1 = user.allowed;

}