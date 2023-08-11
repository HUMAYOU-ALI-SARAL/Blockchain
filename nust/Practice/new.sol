// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract New{

    
event Log(address indexed sender, string msg);
event Log(string name,address contractAddr,string Department);
 event AnotherLog();

 function test() public {
 emit Log(msg.sender, "Hello Web3.0");
 emit Log(msg.sender, "It's all about Decentralization");
 
 emit AnotherLog();
 }

 function AnotherEvent(string memory _name,string memory _department)public{
     emit Log(_name,msg.sender,_department);
 }



struct PersonalInfo{
string name;
uint age;
string rollNo;
}

PersonalInfo public p1;


event Update(PersonalInfo oldvalue,PersonalInfo newvalue,uint timeStamp,uint blockNumber);


function setPersonInfo() public{
    PersonalInfo memory oldValue=p1;
    oldValue.name="humayou";
    oldValue.age=21;
    oldValue.rollNo="100-blockchain";
    emit Update(oldValue,p1,block.timestamp,block.number);
}


function setP1(string memory _name,uint _age,string memory _rollNo)public{
    p1.name=_name;
    p1.age=_age;
    p1.rollNo=_rollNo;
}









}