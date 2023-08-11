// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract Loop1{
uint[] public arr;
 function ODDNum(uint max) public{
 uint i = 1;

 while(i <= max){
 if (i % 2 != 0)
 arr.push(i);
 i++; }
 }
 function get() public view returns(uint[] memory){
 return arr;
 }
}