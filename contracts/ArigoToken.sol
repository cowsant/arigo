pragma solidity 0.4.24;

import "./lib/PausableToken.sol";
import "./lib/BurnableToken.sol";

contract ArigoToken is PausableToken, BurnableToken {  
    string public constant name = "Arigo";
    string public constant symbol = "ARGO";
    uint8 public constant decimals = 18;

    uint256 public constant INITIAL_SUPPLY = 1000000000 * (10 ** uint256(decimals));

    constructor(address reserve) public {
        totalSupply = INITIAL_SUPPLY;
        balances[reserve] = INITIAL_SUPPLY;
        emit Transfer(address(0), reserve, INITIAL_SUPPLY);
    }

}