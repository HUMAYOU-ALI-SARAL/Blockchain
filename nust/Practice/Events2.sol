// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract Nums{

    event LocalVar(string message);
    function numgive(int num)public returns(int){
        int neg;
        int positiveEven;
        int positiveOdd;
        if(num%2==0 && num>1){
            positiveEven=num;
            emit LocalVar("positive even");
            return positiveEven;
        }
        else if(num%2!=0 && num>0){
            positiveOdd=num;
            emit LocalVar("possitive Odd");
            return positiveEven;
        }
        else{
            neg=num;
            emit LocalVar("Negative Number");
            return neg;
        }
        
    }
}