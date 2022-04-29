pragma solidity ^0.8.0;

contract q16{
     struct Student{
        string name;
        uint class;
        uint joiningDate;
    }

    address public teacher;
    uint roll=0;

    event Adding (string name, uint class, uint joiningDate);
    mapping(uint=>Student) public StudDetails;

    constructor(){
        teacher=msg.sender; 
    }
    modifier isOwner(){
        require(teacher ==msg.sender,"Cant add !");
        _;
    }

    function Add(string memory name, uint class, uint joiningDate) public isOwner{
        require(class>0 && class<=12,"Standard is only from 1 to 12");
        Student memory stud = Student(name,class,joiningDate);
        roll++;
        StudDetails[roll]=stud;
        emit Adding(name, class , block.timestamp);
    }


}