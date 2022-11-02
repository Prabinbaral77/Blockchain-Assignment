// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Token {
    string public _name;
    string public _symbol;
    uint public _decimal;
    uint public _totalSupply;
    address public _minter;

    mapping(address => uint) public balances;

    constructor() {
        _symbol = "Pc";
        _name = "PANLOC COIN";
        _decimal = 0;
        _totalSupply = 100;
        _minter = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        balances[_minter] = _totalSupply;
    }

    event Transfer(address from, address to, uint value);

    function mint(address account, uint amount) public returns (bool) {
        balances[account] += amount;
        _totalSupply += amount;
        emit Transfer(msg.sender, account, amount);
        return true;
    }

    function burn(address account, uint amount) public returns (bool) {
        uint accountBalances = balances[account];
        require(accountBalances >= amount, "exceed burn amount");
        balances[account] = accountBalances - amount;
        _totalSupply -= amount;
        emit Transfer(msg.sender, account, amount);
        return true;
    }
}
