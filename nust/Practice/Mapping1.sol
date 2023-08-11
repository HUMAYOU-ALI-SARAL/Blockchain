// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract Mapper {
  mapping (address=>mapping(string=>mapping(string=>uint))) NameTOBalance;

    function setNameTOBalance(address _addr,string memory Name,string memory WalletName,uint Balance)public{
        NameTOBalance[_addr][Name][WalletName]=Balance;
    }


    function getNameToBalance(string memory name,string memory WalletName,address _addr)public view returns(uint){
        return NameTOBalance[_addr][name][WalletName];
    }

    function deleteNameToBalance(string memory name,string memory WalletName,address _addr)public{
        delete NameTOBalance[_addr][name][WalletName];
    }
}