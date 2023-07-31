// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract simpleStorage{
    // People public person=People({favouriteNumber:10,Name:"Humayou"});
    // People public person1=People({favouriteNumber:10,Name:"Ijlal"});
    mapping(string name=>uint256) public Number;
    struct People{
        uint256 favouriteNumber;
        string Name;
    }
People[] public person;
uint256 public favouriteNumber;
function store(uint256 _favouriteNumber) public virtual {
favouriteNumber=_favouriteNumber;
}
function retrieve()public view returns(uint){
    return favouriteNumber;
}
function addperson(string memory _name,uint _favouriteNumber) public {
person.push(People(_favouriteNumber, _name));
Number[_name]=_favouriteNumber;
}

}
