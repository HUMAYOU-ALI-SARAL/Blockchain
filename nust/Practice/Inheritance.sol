// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
import "./Day2.sol";
contract Inheritance is simpleStorage{
    mapping(string=>uint) Persons;

function setNames(string memory name,uint Number)public{
Persons[name]=Number;
}
function getNumByName(string memory Name)public view returns(uint){
return Persons[Name];
}
function store(uint Number) public override{
    favouriteNumber=Number+5;
}

}