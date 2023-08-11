// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract RegistrationSys{
    uint public BlockChain;
   uint public Artificial_Intelligence;
   uint public E_Commerce;
   uint public Arts;
   
    enum Department{
        Blockchain,
        Artificial_Intelligence,
        E_Commerce,
        Arts
    }


    enum Status{
        Enrolled,
        NotEnrolled,
        Graduated,
        Expelled
    }
 

    struct Students{
        string name;
        uint age;
        string Registration;
        Department dp;
        Status St;
        uint obtainedMarks;
    }


    

    mapping(uint=>Students) _Student;
    Students[] student;
    function getRegistered(string memory _name ,uint _age,string memory _Registration,Department _dp,Status _st ,uint _obtainedMarks)public{
        // student.push(Students("humayou",21,"5407",_dp.Blockchain,_st.Enrolled,700));
        if(_st==Status.Expelled || _st==Status.NotEnrolled){
            _obtainedMarks=0;
        }
        student.push(Students(_name,_age,_Registration,_dp,_st,_obtainedMarks));
    }

   function setRollNo(uint index,uint RollNo)public{
     _Student[RollNo]=student[index];
   }
    
   function Update(uint _rollNo,string memory _name ,uint _age,string memory _Registration,Department _dp,Status _st ,uint _obtainedMarks)public{
      _Student[_rollNo].name=_name;
      _Student[_rollNo].age=_age;
      _Student[_rollNo].Registration=_Registration;
      _Student[_rollNo].dp=_dp;
      _Student[_rollNo].St=_st;
      _Student[_rollNo].obtainedMarks=_obtainedMarks;
   }

   function getStd(uint rollNo)public view returns(Students memory){
       return _Student[rollNo];
   }

   
   
   function Count()public {
       BlockChain=0;
       Artificial_Intelligence=0;
       Arts=0;
       E_Commerce=0;
       for(uint i=0;i<student.length;i++){
                 if(student[i].dp==Department.Blockchain){
            BlockChain+=1;
        }
        else if(student[i].dp==Department.Artificial_Intelligence){
            Artificial_Intelligence+=1;
        }
        else if(student[i].dp==Department.Arts){
            Arts+=1;
        }
        else if(student[i].dp==Department.E_Commerce){
            E_Commerce+=1;
        }
       }
    }





Students[] BlockchainAchiever;
function getTopThreeBlockchainAchievers() public returns (Students[] memory) {
    for (uint i = 0; i < student.length; i++) {
        if (student[i].dp == Department.Blockchain) {
            BlockchainAchiever.push(student[i]);
        }
    }

    uint n = BlockchainAchiever.length;

    for(uint i = 0; i < n - 1; i++) {
        for(uint j = 0; j < n - i - 1; j++) {
            if(BlockchainAchiever[j].obtainedMarks < BlockchainAchiever[j + 1].obtainedMarks) {
                Students memory temp = BlockchainAchiever[j];
                BlockchainAchiever[j] = BlockchainAchiever[j + 1];
                BlockchainAchiever[j + 1] = temp;
            }
        }
    }

    Students[] memory topThree = new Students[](3);
    for (uint i = 0; i < 3 && i < n; i++) {
        topThree[i] = BlockchainAchiever[i];
    }

    return topThree;
}








// Students[] public BlockchainAchiever;
// function getTopThreeBlockchainAchievers() public returns(Students[] memory) {
//        uint Counter=1;
//         for(uint i=0;i<student.length;i++){
//           if(student[i].dp==Department.Blockchain){
//               BlockchainAchiever.push(student[i]);
//           }
//            if(BlockchainAchiever.length>0){
//                 if(BlockchainAchiever[Counter].obtainedMarks>BlockchainAchiever[Counter-1].obtainedMarks){
//                     Students memory temp=BlockchainAchiever[Counter];
//                     BlockchainAchiever[Counter]=BlockchainAchiever[Counter-1];
//                     BlockchainAchiever[Counter-1]=temp;
//                     Counter++;
//                 }
//               }
//         }
//         return BlockchainAchiever;
// }





// uint[10] public myarr=[1,2,3,4,5,6,7,8,9,0];
// function swap()public{
// uint temp=myarr[0];
// myarr[0]=myarr[5];
// myarr[5]=temp;
// }

}










