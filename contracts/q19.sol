pragma solidity 0.6.0;

contract q19{
    mapping (address => uint256) public addressAmountFunded;

    constructor() public payable {}
    
    function fund() public payable {
        addressAmountFunded[msg.sender]+=msg.value;
    }
}