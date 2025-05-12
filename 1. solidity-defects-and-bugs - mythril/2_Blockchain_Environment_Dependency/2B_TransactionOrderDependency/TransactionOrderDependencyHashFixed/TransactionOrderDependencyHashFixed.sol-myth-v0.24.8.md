## Summary results for #utility.yul
### Dependence on predictable environment variable
- SWC ID: 116 in Contract `TransactionOrderDependencyHash`
- Function name: `release()`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol:29
```
require(commitTime > block.timestamp + 7200)
```
### Dependence on predictable environment variable
- SWC ID: 116 in Contract `TransactionOrderDependencyHash`
- Function name: `release()`
In file: #utility.yul:203
```
if gt(x, sum) { panic_error_0x11() }
```
# Analysis results for #utility.yul

## Dependence on predictable environment variable
- SWC ID: 116
- Severity: Low
- Contract: TransactionOrderDependencyHash
- Function name: `release()`
- PC address: 385
- Estimated Gas Usage: 1134 - 1229

#### Description

A control flow decision is made based on The block.timestamp environment variable.
The block.timestamp environment variable is used to determine a control flow decision. Note that the values of variables like coinbase, gaslimit, block number and timestamp are predictable and can be manipulated by a malicious miner. Also keep in mind that attackers know hashes of earlier blocks. Don't use any of those environment variables as sources of randomness and be aware that use of these variables introduces a certain level of trust into miners.
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol:29

#### Code

```
require(commitTime > block.timestamp + 7200)
```

#### Initial State:

Account: [CREATOR], balance: 0x1, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x0, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [ATTACKER], function: release(), txdata: 0x86d1a69f, value: 0x0


## Dependence on predictable environment variable
- SWC ID: 116
- Severity: Low
- Contract: TransactionOrderDependencyHash
- Function name: `release()`
- PC address: 1368
- Estimated Gas Usage: 295 - 390

#### Description

A control flow decision is made based on The block.timestamp environment variable.
The block.timestamp environment variable is used to determine a control flow decision. Note that the values of variables like coinbase, gaslimit, block number and timestamp are predictable and can be manipulated by a malicious miner. Also keep in mind that attackers know hashes of earlier blocks. Don't use any of those environment variables as sources of randomness and be aware that use of these variables introduces a certain level of trust into miners.
In file: #utility.yul:203

#### Code

```
if gt(x, sum) { panic_error_0x11() }
```

#### Initial State:

Account: [CREATOR], balance: 0x1, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x0, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [SOMEGUY], function: release(), txdata: 0x86d1a69f, value: 0x0


