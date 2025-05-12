## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHiddenFixed/CallReturnValueNotCheckedHiddenFixed.sol
### External Call To User-Supplied Address
- SWC ID: 107 in Contract `CallReturnValueNotCheckedHidden`
- Function name: `withdraw()`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHiddenFixed/CallReturnValueNotCheckedHiddenFixed.sol:13
```
payable(msg.sender).call{value: amount}("")
```
### Transaction Order Dependence
- SWC ID: 114 in Contract `CallReturnValueNotCheckedHidden`
- Function name: `withdraw()`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHiddenFixed/CallReturnValueNotCheckedHiddenFixed.sol:13
```
payable(msg.sender).call{value: amount}("")
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHiddenFixed/CallReturnValueNotCheckedHiddenFixed.sol

## External Call To User-Supplied Address
- SWC ID: 107
- Severity: Low
- Contract: CallReturnValueNotCheckedHidden
- Function name: `withdraw()`
- PC address: 197
- Estimated Gas Usage: 2116 - 36870

#### Description

A call to a user-supplied address is executed.
An external message call to an address specified by the caller is executed. Note that the callee account might contain arbitrary code and could re-enter any function within this contract. Reentering the contract in an intermediate state may lead to unexpected behaviour. Make sure that no state modifications are executed after this call and/or reentrancy guards are in place.
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHiddenFixed/CallReturnValueNotCheckedHiddenFixed.sol:13

#### Code

```
payable(msg.sender).call{value: amount}("")
```

#### Initial State:

Account: [CREATOR], balance: 0x0, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x0, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [ATTACKER], function: withdraw(), txdata: 0x3ccfd60b, value: 0x0


## Transaction Order Dependence
- SWC ID: 114
- Severity: Medium
- Contract: CallReturnValueNotCheckedHidden
- Function name: `withdraw()`
- PC address: 197
- Estimated Gas Usage: 2116 - 36870

#### Description

The value of the call is dependent on balance or storage write
This can lead to race conditions. An attacker may be able to run a transaction after our transaction which can change the value of the call
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHiddenFixed/CallReturnValueNotCheckedHiddenFixed.sol:13

#### Code

```
payable(msg.sender).call{value: amount}("")
```

#### Initial State:

Account: [CREATOR], balance: 0x0, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x0, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [ATTACKER], function: withdraw(), txdata: 0x3ccfd60b, value: 0x0


