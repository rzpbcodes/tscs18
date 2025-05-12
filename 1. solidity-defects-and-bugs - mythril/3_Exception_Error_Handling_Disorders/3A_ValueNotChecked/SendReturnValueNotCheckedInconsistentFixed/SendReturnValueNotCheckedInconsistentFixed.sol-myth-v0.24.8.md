## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedInconsistentFixed/SendReturnValueNotCheckedInconsistentFixed.sol
### Transaction Order Dependence
- SWC ID: 114 in Contract `SendReturnValueNotCheckedInconsistent`
- Function name: `bid()`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedInconsistentFixed/SendReturnValueNotCheckedInconsistentFixed.sol:17
```
payable(hd_addr).send(hb_tmp)
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedInconsistentFixed/SendReturnValueNotCheckedInconsistentFixed.sol

## Transaction Order Dependence
- SWC ID: 114
- Severity: Medium
- Contract: SendReturnValueNotCheckedInconsistent
- Function name: `bid()`
- PC address: 329
- Estimated Gas Usage: 16196 - 92099

#### Description

The value of the call is dependent on balance or storage write
This can lead to race conditions. An attacker may be able to run a transaction after our transaction which can change the value of the call
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedInconsistentFixed/SendReturnValueNotCheckedInconsistentFixed.sol:17

#### Code

```
payable(hd_addr).send(hb_tmp)
```

#### Initial State:

Account: [CREATOR], balance: 0x0, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x2, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [ATTACKER], function: bid(), txdata: 0x1998aeef, value: 0x1


