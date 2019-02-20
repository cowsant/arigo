pragma solidity 0.4.24;

import "./BasicToken.sol";
import "./ERC20.sol";

contract BurnableToken is ERC20, BasicToken {
    function burn(uint256 _value) public {
        require(_value > 0);

        address burner = msg.sender;
        totalSupply = totalSupply.sub(_value);
        balances[burner] = balances[burner].sub(_value);
        emit Transfer(burner, address(0), _value);
    }
}