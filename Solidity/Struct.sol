// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

// struct Student {
//     uint roll;
//     string name;
// }


// contract Struct { 

//     Student public s1;

//     constructor(uint _roll , string memory _name){
//         s1.roll = _roll;
//         s1.name = _name;
//     }

//     function _change(uint _roll, string memory _name) public {
//         Student memory new_std = Student({
//             roll:_roll,
//             name:_name
//         });

//         s1 = new_std;
//     }

// }

contract Struct {
    struct Emp  { 
        string name;
        uint age;
        address acc;
    }

    Emp public emp;
}