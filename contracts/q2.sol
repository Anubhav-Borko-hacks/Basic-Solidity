pragma solidity ^0.8.0;

contract q2{
    uint[] public Array=[10,20,30];
    uint[] public Array1;
    function insert(uint _value) external{ //adding values
        Array1.push(_value);
    }

    uint256 public len = Array.length;

    function count() public view returns(uint) { //length of array
        return Array1.length;
    }

    function Display() public view returns(uint[] memory) { 
        return Array1; //passing array helps us store the value in memory
    }

    function Sum() public view returns(uint){
        uint sum=0;
        for(uint i=0 ; i< Array1.length; i++){
            sum=sum+Array1[i];
        }
        return sum;
    }

    function Search(uint n) public view returns(bool){
        uint i;
        for(i=0; i < Array1.length; i++){
            if(n == Array1[i]){
                return true;
            }
        }
        if(i >= Array1.length){
            return false;
        }
    }
}