// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract Ticket{
enum TicketType{
    Economy,
    Bussiness,
    FirstClass
}
enum Days{
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday,
    Sunday
}

struct Info{
    string pass_name;
    TicketType ticketType;
    Days day;
    bool isBooked;
}


Info[] public passInfo;


function BookTicket(string memory name,TicketType _ticktype,Days _day) public{
   passInfo.push(Info(name,_ticktype,_day,true));
}

function getTicketType(uint index)public pure returns(TicketType){
return TicketType(index);
}

function getTicketDay(uint index) public pure returns(Days){
    return Days(index);
}

function ToggleStatus(uint index)public view returns(bool){
return passInfo[index].isBooked;
}

}