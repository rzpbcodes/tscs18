## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedFixed/SendReturnValueNotCheckedFixed.sol
### Transaction Order Dependence
- SWC ID: 114 in Contract `SendReturnValueNotChecked`
- Function name: `withdraw()`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedFixed/SendReturnValueNotCheckedFixed.sol:13
```
payable(msg.sender).send(amount)
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedFixed/SendReturnValueNotCheckedFixed.sol

## Transaction Order Dependence
- SWC ID: 114
- Severity: Medium
- Contract: SendReturnValueNotChecked
- Function name: `withdraw()`
- PC address: 196
- Estimated Gas Usage: 1832 - 36303

#### Description

The value of the call is dependent on balance or storage write
This can lead to race conditions. An attacker may be able to run a transaction after our transaction which can change the value of the call
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedFixed/SendReturnValueNotCheckedFixed.sol:13

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


