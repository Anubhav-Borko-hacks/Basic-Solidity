pragma solidity ^0.8.0;

contract q18{
    address[] public keys; //array to store the key valu of mapping
    mapping(address => uint) public values;//main mapping
    mapping(address => uint) public track; //mapping to keep track if main mapping got the value

    function Insert(address addr, uint _val) external {
        values[addr] = _val;

        if(!track[addr]){
            track[addr]=true;
            keys.push(_val);
        }
    }

    function count() external view returns(uint){
        return keys.length;
    }

    function get(uint i) external view returns(uint){
        return values[track[i]];
    }
}