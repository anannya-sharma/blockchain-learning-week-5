pragma solidity ^0.8.0;

contract Exercise_2_Corrected {
    mapping(address => uint256) public balances;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function deposit(uint256 amount) public payable {
        require(msg.value == amount, "Sent value does not match the amount");
        balances[msg.sender] += amount;
    }

    function withdraw(uint256 amount) public {
        require(amount <= balances[msg.sender], "Insufficient balance");
        balances[msg.sender] -= amount;
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Transfer failed");
    }

    function addBalances(uint256 amount) public {
        balances[msg.sender] += amount;
    }

    function subtractBalances(uint256 amount) public {
        require(amount <= balances[msg.sender], "Insufficient balance");
        balances[msg.sender] -= amount;
    }

    function destroyContract() public {
        require(msg.sender == owner, "Only the owner can destroy the contract");
        selfdestruct(payable(owner));
    }
}
