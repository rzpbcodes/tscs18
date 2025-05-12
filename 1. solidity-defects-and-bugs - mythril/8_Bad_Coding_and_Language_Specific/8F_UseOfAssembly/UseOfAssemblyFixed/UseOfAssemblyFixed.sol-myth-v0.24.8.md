## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssemblyFixed/UseOfAssemblyFixed.sol
### Transaction Order Dependence
- SWC ID: 114 in Contract `UseOfAssemblyFixed`
- Function name: `withdraw()`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssemblyFixed/UseOfAssemblyFixed.sol:16
```
payable(msg.sender).call{gas: 2300, value: toSend}("")
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssemblyFixed/UseOfAssemblyFixed.sol

## Transaction Order Dependence
- SWC ID: 114
- Severity: Medium
- Contract: UseOfAssemblyFixed
- Function name: `withdraw()`
- PC address: 397
- Estimated Gas Usage: 8129 - 63263

#### Description

The value of the call is dependent on balance or storage write
This can lead to race conditions. An attacker may be able to run a transaction after our transaction which can change the value of the call
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssemblyFixed/UseOfAssemblyFixed.sol:16

#### Code

```
payable(msg.sender).call{gas: 2300, value: toSend}("")
```

#### Initial State:

Account: [CREATOR], balance: 0x0, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x40000000000000000, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [ATTACKER], function: deposit(), txdata: 0xd0e30db0, value: 0x1
Caller: [ATTACKER], function: withdraw(), txdata: 0x3ccfd60b, value: 0x0


