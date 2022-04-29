pragma solidity ^0.8.0;

contract q12{

    mapping(address=> bool) whiteaddr;

    function whitelist(address add) public{
       require(!whiteaddr[add]);
       whiteaddr[add]=true;
    }

    function selfWhitelist() public{
        require(!whiteaddr[msg.sender]);
        whiteaddr[msg.sender]=true;
    }

    function check(address addr) public view returns(bool){
        return whiteaddr[addr];
    }

}