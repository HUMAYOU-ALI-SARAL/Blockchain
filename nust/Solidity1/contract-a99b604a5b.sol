// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract Counter{
  uint public count;
  function Increment() external returns(uint){
   return count++;
  }
  function Decrement() external returns(uint){

  } 
}

interface ICounter {
  function Increment() external;
  function Decrement() external;
}

contract myCounter{
function Myincrement(address _Addr) public{
ICounter(_Addr).Increment();
}
enum Week{
  monday,tuesday,wednesday,thursday,friday
}

 struct People{
        string Name;
        uint8 age;
        Week day;
    }
mapping (address => People) public D_officer;
function set(Week _week,address _add,string memory name,uint8 age) public{
D_officer[_add].Name= name;
D_officer[_add].age= age;
D_officer[_add].day= _week;
}


 
    

}