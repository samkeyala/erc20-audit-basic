// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract BasicToken {
    mapping(address => uint256) public balanceOf;
    string public name = "BasicToken";
    string public symbol = "BSC";
    uint8 public decimals = 18;
    uint256 public totalSupply;

    event Transfer(address indexed from, address indexed to, uint256 value);

    constructor(uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value, "Not enough balance");
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
        return true;
    }
}
