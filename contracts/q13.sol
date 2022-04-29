pragma solidity ^0.8.0;

contract q13{
    mapping(uint=>string) Student;

    event Success(uint rollno);

    function enroll(string memory name, uint roll) public{
        Student[roll]=name;
        emit Success(roll);
    }
}