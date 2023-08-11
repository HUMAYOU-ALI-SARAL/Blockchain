// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract Elections{
    struct Peoples{
        uint id;
        string name;
        bool hasVoted;
    } 

Peoples[] public person;


function addPeoples(uint _id,string memory name)public{
    person.push(Peoples(_id,name,false));
}

function Vote(uint index)public{
    person[index].hasVoted=true;
}

function checkAll()public view returns(Peoples[] memory){
    return person;
}

}



