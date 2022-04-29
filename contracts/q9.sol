pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol";

contract q9{
    using SafeMath for uint;
    
    uint first;
    uint second;

    function EnterNo(uint f, uint s) public{
        first= f;
        second=s;
    }

    function Add() public view returns(uint){
        uint sum;
        sum= first+second;
        return sum;
    }

    function Sub() public view returns(uint){
        uint diff;
        if(first > second){
             diff= first-second;
        }
        else{
             diff = second - first;
        }
        return diff;
    }

    function Mul() public view returns(uint){
        uint mul;
        mul=first* second;
        return mul;
    }
    
    function Div() public view returns(uint){
        uint div;
        div=first/second;
        return div;
    }
}