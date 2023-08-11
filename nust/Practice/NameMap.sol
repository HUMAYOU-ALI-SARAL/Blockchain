//SPDX-License-Identifier:MIT
pragma solidity 0.8.18;
contract NameMape{
    mapping(uint=>mapping(address=>mapping(string=>string))) UserMap;
    function setMap(uint _yearofbirth, address _wallet, string memory _codename, string memory _username)public{
       UserMap[_yearofbirth][_wallet][_codename]=_username;
    }
    function getMap(uint _yearofbirth, address _wallet, string memory _codename)public view returns(string memory _username){
       return  UserMap[_yearofbirth][_wallet][_codename];
    }
    function deleteMap(uint _yearofbirth, address _wallet, string memory _codename)public{
        delete UserMap[_yearofbirth][_wallet][_codename];
    }
}