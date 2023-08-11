// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract ForLoop{
    int[5] public arr = [-9, 8, 7, -2, 1];
int[] public positarr;
int[] public negarr;
function positivepart() public{
for(uint i = 0; i < arr.length; i++){
if(arr[i] >= 0){
positarr.push(arr[i]);
}
}
}
function Negative()public{
    for(uint i=0;i<arr.length;i++){
        if(arr[i]<0){
            negarr.push(arr[i]);
        }
    }
}
function getposit() public view returns(int[] memory){
return positarr;
}
function getnegit() public view returns(int[] memory){
return negarr;
}



function createFact(uint n) public pure returns(uint){
  uint factValue = 1;

        if (n == 0 || n == 1) {
            return factValue;
        }

        for (uint i = 2; i <= n; i++) {
            factValue *= i;
        }

        return factValue;
}

}