## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/Unexpected_Throw_Or_Revert/Unexpected_Throw_Or_Revert.sol
### Transaction Order Dependence
- SWC ID: 114 in Contract `UnexpectedThrowOrRevert`
- Function name: `bid()`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/Unexpected_Throw_Or_Revert/Unexpected_Throw_Or_Revert.sol:12
```
payable(_highestBidder).send(_highestBid)
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/Unexpected_Throw_Or_Revert/Unexpected_Throw_Or_Revert.sol

## Transaction Order Dependence
- SWC ID: 114
- Severity: Medium
- Contract: UnexpectedThrowOrRevert
- Function name: `bid()`
- PC address: 137
- Estimated Gas Usage: 14242 - 89183

#### Description

The value of the call is dependent on balance or storage write
This can lead to race conditions. An attacker may be able to run a transaction after our transaction which can change the value of the call
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/Unexpected_Throw_Or_Revert/Unexpected_Throw_Or_Revert.sol:12

#### Code

```
payable(_highestBidder).send(_highestBid)
```

#### Initial State:

Account: [CREATOR], balance: 0x0, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x2, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [ATTACKER], function: bid(), txdata: 0x1998aeef, value: 0x1


