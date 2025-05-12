## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol
### Transaction Order Dependence
- SWC ID: 114 in Contract `ValueNotChecked`
- Function name: `withdraw()`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol:23
```
payable(msg.sender).send(toSend)
```
### Unchecked return value from external call.
- SWC ID: 104 in Contract `ValueNotChecked`
- Function name: `withdraw()`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol:23
```
payable(msg.sender).send(toSend)
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol

## Transaction Order Dependence
- SWC ID: 114
- Severity: Medium
- Contract: ValueNotChecked
- Function name: `withdraw()`
- PC address: 447
- Estimated Gas Usage: 20412 - 116253

#### Description

The value of the call is dependent on balance or storage write
This can lead to race conditions. An attacker may be able to run a transaction after our transaction which can change the value of the call
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol:23

#### Code

```
payable(msg.sender).send(toSend)
```

#### Initial State:

Account: [CREATOR], balance: 0x0, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x537f0003ffff00002, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [ATTACKER], function: deposit(uint256), txdata: 0xb6b55f250000000000000000000000000000000000000000000000000000000000000001, decoded_data: (1,), value: 0x1
Caller: [ATTACKER], function: withdraw(), txdata: 0x3ccfd60b, value: 0x0


## Unchecked return value from external call.
- SWC ID: 104
- Severity: Medium
- Contract: ValueNotChecked
- Function name: `withdraw()`
- PC address: 447
- Estimated Gas Usage: 20412 - 116253

#### Description

The return value of a message call is not checked.
External calls return a boolean value. If the callee halts with an exception, 'false' is returned and execution continues in the caller. The caller should check whether an exception happened and react accordingly to avoid unexpected behavior. For example it is often desirable to wrap external calls in require() so the transaction is reverted if the call fails.
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol:23

#### Code

```
payable(msg.sender).send(toSend)
```

#### Initial State:

Account: [CREATOR], balance: 0x0, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x0, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [SOMEGUY], function: deposit(uint256), txdata: 0xb6b55f250000000000000000000000000000000000000000000000000000000000000001, decoded_data: (1,), value: 0x1
Caller: [SOMEGUY], function: withdraw(), txdata: 0x3ccfd60b, value: 0x0


