// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract ZeroAddr{
    address public owner;
    address newowner;




    uint public num;
    event PrimeChecker(string,uint);

    event ZerAddressInputted(string message);
    event Owner(address owner,address newowner);
    constructor(){
        if(owner==0x0000000000000000000000000000000000000000){
            emit ZerAddressInputted("Zero Address inputted on deployment of contract");
        }
    }
    function newOwner(address _newOwner)public{
          newowner=_newOwner;
          emit Owner(owner,_newOwner);
    }


    function CheckPrimeNum()public{
         if(num!=1 && num%2!=0 && num!=2){
           emit PrimeChecker("this Number Is Prime",num);
         }
         else if(num==2){
           emit PrimeChecker("this Number Is Prime",num);
         }
         else{
             emit PrimeChecker("Not a Prime Number",num);
         }
    }


    function setNum(uint _num)public{
        num=_num;
    }
 




}


