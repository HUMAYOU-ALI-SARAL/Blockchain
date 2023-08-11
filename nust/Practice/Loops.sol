// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Loops{
     uint[] public arr;
 function NaturalNum(uint max) public returns(uint[] memory){
 uint i = 4;
 while(i <= max){
 arr.push(i);
 i+=4;
 }
 return arr; }



// calculate Average

 function calculateSumAndAverage(uint256[5] memory numbers) public pure
returns (uint256 sum,uint Average) {
 uint256 totalSum = 0;
 uint256 i = 0;
 while(i < numbers.length) {
 totalSum += numbers[i];
 i++;
 }
 sum = totalSum;
 Average=sum/numbers.length;
 return (sum,Average);
 }




function generateFibonacci(uint256 n) public pure returns(uint256[] memory){
    uint i=2;
    uint256[] memory fibonacciSeries=new uint256[](n);
    if(n>=1){
        fibonacciSeries[0]=0;
    }
    if(n>=2){
        fibonacciSeries[1]=1;
    }
   
   while(i<n){
       fibonacciSeries[i]=fibonacciSeries[i-1]+fibonacciSeries[i-2];
    i++;
   }
   return fibonacciSeries;

}
}


