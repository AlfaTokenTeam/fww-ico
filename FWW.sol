pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract FWW is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function FWW(address _owner)  UpgradeableToken(_owner) {
    name = "FWW";
    symbol = "FFW";
    totalSupply = 420000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}