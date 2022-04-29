pragma solidity ^0.8.0;

contract q7{
    string internal name;

   // modifier Name(){
     //   require(msg.sender == tx.origin, " contract call");
    //}
    function getName(string memory _name) public {
        name=_name;
    } 

    function displayName() external view returns(string memory){
        require(msg.sender==tx.origin);
        return name;
    }

}