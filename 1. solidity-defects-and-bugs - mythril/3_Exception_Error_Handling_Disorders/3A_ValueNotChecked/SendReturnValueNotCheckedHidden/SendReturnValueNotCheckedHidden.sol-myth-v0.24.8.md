## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedHidden/SendReturnValueNotCheckedHidden.sol
### Transaction Order Dependence
- SWC ID: 114 in Contract `SendReturnValueNotCheckedHidden`
- Function name: `withdraw()`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedHidden/SendReturnValueNotCheckedHidden.sol:13
```
payable(msg.sender).send(amount)
```
### Unchecked return value from external call.
- SWC ID: 104 in Contract `SendReturnValueNotCheckedHidden`
- Function name: `withdraw()`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedHidden/SendReturnValueNotCheckedHidden.sol:13
```
payable(msg.sender).send(amount)
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedHidden/SendReturnValueNotCheckedHidden.sol

## Transaction Order Dependence
- SWC ID: 114
- Severity: Medium
- Contract: SendReturnValueNotCheckedHidden
- Function name: `withdraw()`
- PC address: 196
- Estimated Gas Usage: 1823 - 36294

#### Description

The value of the call is dependent on balance or storage write
This can lead to race conditions. An attacker may be able to run a transaction after our transaction which can change the value of the call
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedHidden/SendReturnValueNotCheckedHidden.sol:13

#### Code

```
payable(msg.sender).send(amount)
```

#### Initial State:

Account: [CREATOR], balance: 0x0, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x0, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [ATTACKER], function: withdraw(), txdata: 0x3ccfd60b, value: 0x0


## Unchecked return value from external call.
- SWC ID: 104
- Severity: Medium
- Contract: SendReturnValueNotCheckedHidden
- Function name: `withdraw()`
- PC address: 196
- Estimated Gas Usage: 1823 - 36294

#### Description

The return value of a message call is not checked.
External calls return a boolean value. If the callee halts with an exception, 'false' is returned and execution continues in the caller. The caller should check whether an exception happened and react accordingly to avoid unexpected behavior. For example it is often desirable to wrap external calls in require() so the transaction is reverted if the call fails.
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedHidden/SendReturnValueNotCheckedHidden.sol:13

#### Code

```
payable(msg.sender).send(amount)
```

#### Initial State:

Account: [CREATOR], balance: 0x0, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x0, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [CREATOR], function: withdraw(), txdata: 0x3ccfd60b, value: 0x0
Caller: [SOMEGUY], function: withdraw(), txdata: 0x3ccfd60b, value: 0x0


