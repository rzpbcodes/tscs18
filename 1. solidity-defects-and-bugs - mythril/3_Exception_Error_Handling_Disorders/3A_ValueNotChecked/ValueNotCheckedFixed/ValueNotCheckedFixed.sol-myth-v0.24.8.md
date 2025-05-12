## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotCheckedFixed/ValueNotCheckedFixed.sol
### Transaction Order Dependence
- SWC ID: 114 in Contract `ValueNotCheckedFixed`
- Function name: `withdraw()`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotCheckedFixed/ValueNotCheckedFixed.sol:23
```
payable(msg.sender).send(toSend)
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotCheckedFixed/ValueNotCheckedFixed.sol

## Transaction Order Dependence
- SWC ID: 114
- Severity: Medium
- Contract: ValueNotCheckedFixed
- Function name: `withdraw()`
- PC address: 449
- Estimated Gas Usage: 20437 - 116278

#### Description

The value of the call is dependent on balance or storage write
This can lead to race conditions. An attacker may be able to run a transaction after our transaction which can change the value of the call
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotCheckedFixed/ValueNotCheckedFixed.sol:23

#### Code

```
payable(msg.sender).send(toSend)
```

#### Initial State:

Account: [CREATOR], balance: 0x0, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x40000000000000000, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [ATTACKER], function: deposit(uint256), txdata: 0xb6b55f250000000000000000000000000000000000000000000000000000000000000001, decoded_data: (1,), value: 0x1
Caller: [ATTACKER], function: withdraw(), txdata: 0x3ccfd60b, value: 0x0


