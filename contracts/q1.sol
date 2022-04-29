pragma solidity ^0.8.0;

/**
 * @title SafeMath
 * @dev Math operations with safety checks that throw on error
 */
library SafeMath {
  function mul(uint256 a, uint256 b) internal returns (uint256) {
    uint256 c = a * b;
    assert(a == 0 || c / a == b);
    return c;
  }

  function div(uint256 a, uint256 b) internal returns (uint256) {
    // assert(b > 0); // Solidity automatically throws when dividing by 0
    uint256 c = a / b;
    // assert(a == b * c + a % b); // There is no case in which this doesn't hold
    return c;
  }

  function sub(uint256 a, uint256 b) internal returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  function add(uint256 a, uint256 b) internal returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }
}


contract q1{
    
    using SafeMath for uint256;

    struct User{
      uint256 invested_amount;
      uint256 profit;
      uint256 profit_withdrawn;
      uint256 start_time;
      uint256 exp_time;
      bool time_started;
    }
    /*User public user;
    function setValues(uint256 _invested, uint256 _reg, uint256 _denom) public {
        user.invested_amount = _invested
    }*/
    uint256 public den= 1000000; //decimal 
    uint256 public reg_fees=1690; //registration fees
    uint256 public reward=1710; //reward
    
    mapping(address => User) public invest_map;//creates mapping with balances of user

    function minAmount (uint256 invested_amount) public returns (uint256){
        uint256 calc = reg_fees.div(den);
        return invested_amount.sub(calc);
    }
    function Reward(uint invested_amount) public returns(uint256){
        uint256 arith = reward.div(den);
        return invested_amount.mul(arith);
    }
    function invest() public payable {
        uint256 balance = minAmount(address(this).balance);//invest_map[invested_amount]; address(invest_map[0]).balance 
        require(msg.value >= balance,"Amount should be more than reg fees");
        if (invest_map[msg.sender].time_started == false) {
            invest_map[msg.sender].start_time = block.timestamp;
            invest_map[msg.sender].time_started = true;
            invest_map[msg.sender].exp_time = block.timestamp + 1 days;
        }
        invest_map[msg.sender].invested_amount += msg.value;
        invest_map[msg.sender].profit += Reward(msg.value);

    }
    function profitCalculation() public view returns(uint256){
       uint256 calcprofit;
       calcprofit = (((invest_map[msg.sender].profit + invest_map[msg.sender].profit_withdrawn) * (block.timestamp - invest_map[msg.sender].start_time)) /  (1 days)) - invest_map[msg.sender].profit_withdrawn;
       
    }
}
