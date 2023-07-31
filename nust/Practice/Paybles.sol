// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract Payables{
    function getPaid()public payable {
         require(msg.value>=1e18,"Didn't Send Enough Fund!");
    
    }
} 