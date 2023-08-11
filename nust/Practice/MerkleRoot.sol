// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract MekleRoot{
    uint[] public arr;
function Merkle() public returns (uint[] memory) {
    while (arr.length > 1) {
        uint[] memory root = new uint[](arr.length / 2); 
        for (uint i = 0; i < arr.length; i += 2) {
            if (i + 1 < arr.length) {
                root[i / 2] = arr[i] + arr[i + 1];
            } else {
                root[i / 2] = arr[i]; 
            } 
        }
        arr = root;
    }
    return arr;
}
function push(uint numbers)public{
    arr.push(numbers);
}
function get()public view returns(uint[] memory){
return arr;
}

    
}