pragma solidity ^0.8.0;

//StructDemo question

contract q3{

    struct Employee{
        uint empid;
        string name;
        string dept;
        string des;
    }
    Employee []emps;

    function addEmployee(uint empid, 
    string memory name, 
    string memory dept, 
    string memory des) public{
        Employee memory e = Employee(empid,name,dept,des);
        emps.push(e);
    }

    function getEmployee(uint empid) public view returns (string memory,
        string memory,
        string memory){
            for(uint i=0; i < emps.length; i++){
                Employee memory e = emps[i];
                if(empid == e.empid){
                    return (e.name , e.dept , e.des);
                }
            }
            return("Name not found", "Department not found", "Designation not found");
        }

}