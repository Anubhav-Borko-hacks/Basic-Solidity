pragma solidity ^0.6.0;

contract q15 {

    address payable public landlord;
    string public name;
    uint public age;
    string public occupation;

    event Success(string str, uint value);

    constructor (string memory _name, uint _age, string memory _occupation) public{
        name = _name;
        age = _age;
        occupation = _occupation;
        landlord = msg.sender;
    }

    receive() external payable {
        emit Success("Payment received", msg.value);
    }
}