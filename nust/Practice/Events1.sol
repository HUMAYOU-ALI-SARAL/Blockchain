// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
pragma solidity ^0.8.17;
contract Events{
 enum Quality{
 Good, Moderate, Bad
 }
 struct specs{
 string microprocessor;
 uint RAM;
 }
 uint Rom=10;
 //A single event can have multiple parameters
 event multi(string laptop, uint price);
 event Qualit(Quality indexed  Quality,specs Spec,uint _Rom);
 //You can also emit enums and structs as well
 //An event can have upto 3 indexed parameters
 event multiple(string laptop, uint indexed price, Quality indexed q,
specs indexed s);
 //Naming the variable in an event is not necessary
 event mu(string, Quality);

 //You can also emit empty events
 event empty();
 function emits() public{
     emit Qualit(Quality.Moderate,specs("intel",20),Rom);
 emit multi("Hp", 150000);
 emit multiple("dell", 100000, Quality.Good, specs("intel", 128));
 emit mu("Lenovo", Quality.Moderate);
 emit empty();
 }
}