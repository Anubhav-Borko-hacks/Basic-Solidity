pragma solidity ^0.8.0;

contract q8{
    
    string public name="A";
    address owner;
    // function getName(string memory _name) public {
    //     name=_name;
    // }
    event Display(address _owner,string message);
    constructor() {
        owner=msg.sender;
        emit Display(owner,name);
    }
    function checkOwner() public view returns(address){
        return owner;
    }
    function getAddress()public view returns(address){
        return msg.sender;
    }

}