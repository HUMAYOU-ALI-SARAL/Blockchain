 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract StorageDLoc {
//  uint[] arr = [1,2,3]; // state variable
//  function fStorage() public{
//  // Declare a local storage variable xStorage
//  uint[] storage xStorage = arr;
//  xStorage[0] = 100;
//  }
//  function get() public view returns (uint[] memory){
//  return arr;    
//  }


//  function fCalldata(uint[] calldata _x) public pure
// returns(uint[] calldata){
// //  _x[0] = 0;
//  return(_x);
//  }
    // People public person1=People({favouriteNumber:10,Name:"Ijlal"});

struct CAR{
    string Make;
    string Model;
    uint Variant;
}
CAR car=CAR("toyota","car",2002);
function initCar1() public view returns(CAR memory state, CAR memory local) {
 CAR storage _car = car;
 state=_car;
local = CAR("Honda", "SUV", 2021); 

}
function initCar2() public view returns(CAR memory state, CAR memory local) {
 CAR memory _car = car;
 state=_car;
 local = CAR("Honda", "SUV", 2021); 
}

}