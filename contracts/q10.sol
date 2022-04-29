pragma solidity ^0.8.0;

contract q10{

    function check(uint n) external pure returns(string memory){
        if(n%2==0){
            return "Even";
        }
        else{
            return "Odd";
        }
    }
}