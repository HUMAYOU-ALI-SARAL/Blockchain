// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


import "./Day2.sol";
contract StorageFactory{
simpleStorage[] public SimpleStorageArray;
function DeploySimpleStorageContract() public{
  simpleStorage _simpleStorage=new simpleStorage();
  SimpleStorageArray.push(_simpleStorage);
}

function GetStore(uint StorageIndex,uint FavouriteNumber) public {
  simpleStorage _simpleStorage=SimpleStorageArray[StorageIndex];
  _simpleStorage.store(FavouriteNumber);
 
}
function Retrieve(uint Index)public view returns(uint){
simpleStorage _simpleStorage=SimpleStorageArray[Index];
return _simpleStorage.retrieve();
}
}