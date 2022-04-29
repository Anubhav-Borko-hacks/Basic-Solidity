pragma solidity ^0.8.0;

contract q11{

    function getTime(uint currTime) public view returns(uint){
            if(currTime > block.timestamp){
                return currTime + 1 hours + 20 minutes + 30 seconds;
            }
            else 
                return 0;
    }
}