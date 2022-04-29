pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";


// address(this) refers to the address of the instance of the contract where the call is being made.
// msg.sender refers to the address where the contract is being called from.
contract q21{
    
    using SafeERC20 for IERC20;

    address owner;

    mapping(address=>bool) isApproved;

    constructor(){
        owner = msg.sender;
    }

    function withdraw(address _token) public {
        require(isApproved[_token]);
        uint amount = IERC20(_token).balanceOf(address(this)); //sending amount of token from address(this) to msg.sender
        IERC20(_token).safeTransfer(owner, amount);
    }

    function deposit(address _token, uint _amount) public {
        IERC20(_token).safeTransferFrom(msg.sender,address(this),_amount);
        // emit an event that you can easily watch for offchain
        emit TokenRecieved(_token, _amount, msg.sender);
        // maybe add some data struct if you want to use information within contract
        Deposit storage deposit = deposits[id];
        deposit.amount = amount;
        deposit.token = token;
        id++;
    }
}