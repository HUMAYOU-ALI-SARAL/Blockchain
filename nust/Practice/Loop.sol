// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract Loop{
    uint[] public numbers;
    function evenNumb() public returns(uint[] memory){
        for(uint i=0;i<=20;i=i+2){
            numbers.push(i);
        }
        return numbers;
    }
}