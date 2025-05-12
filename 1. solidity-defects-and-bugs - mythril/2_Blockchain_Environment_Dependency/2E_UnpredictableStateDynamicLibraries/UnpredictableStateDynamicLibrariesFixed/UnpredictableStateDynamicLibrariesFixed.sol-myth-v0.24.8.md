## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibrariesFixed/UnpredictableStateDynamicLibrariesFixed.sol
### Multiple Calls in a Single Transaction
- SWC ID: 113 in Contract `UnpredictableStateDynamicLibrariesFixed`
- Function name: `loan(uint256,uint256)`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibrariesFixed/UnpredictableStateDynamicLibrariesFixed.sol:42
```
_library.getInterest(amount, startLoan, endLoan)
```
### Multiple Calls in a Single Transaction
- SWC ID: 113 in Contract `UnpredictableStateDynamicLibrariesFixed`
- Function name: `loan(uint256,uint256)`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibrariesFixed/UnpredictableStateDynamicLibrariesFixed.sol:51
```
payable(msg.sender).transfer(amount)
```
### Unprotected Ether Withdrawal
- SWC ID: 105 in Contract `UnpredictableStateDynamicLibrariesFixed`
- Function name: `loan(uint256,uint256)`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibrariesFixed/UnpredictableStateDynamicLibrariesFixed.sol:51
```
payable(msg.sender).transfer(amount)
```
### Dependence on predictable environment variable
- SWC ID: 116 in Contract `UnpredictableStateDynamicLibrariesFixed`
- Function name: `loan(uint256,uint256)`
In file: #utility.yul:83
```
if gt(x, sum) { panic_error_0x11() }
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibrariesFixed/UnpredictableStateDynamicLibrariesFixed.sol

## Multiple Calls in a Single Transaction
- SWC ID: 113
- Severity: Low
- Contract: UnpredictableStateDynamicLibrariesFixed
- Function name: `loan(uint256,uint256)`
- PC address: 513
- Estimated Gas Usage: 33490 - 240293

#### Description

Multiple calls are executed in the same transaction.
This call is executed following another call within the same transaction. It is possible that the call never gets executed if a prior call fails permanently. This might be caused intentionally by a malicious callee. If possible, refactor the code such that each transaction only executes one external call or make sure that all callees can be trusted (i.e. they’re part of your own codebase).
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibrariesFixed/UnpredictableStateDynamicLibrariesFixed.sol:42

#### Code

```
_library.getInterest(amount, startLoan, endLoan)
```

#### Initial State:

Account: [CREATOR], balance: 0x2, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x0, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [SOMEGUY], function: loan(uint256,uint256), txdata: 0xf83e48cb00000000000000000000000000000000000000000000000000000000000000009404543004dd86408a200e0041b1042046a280a05b1921240014368220014497, decoded_data: (0, 66949950019865488475444651095435564077660934644442816180379462739682090108055), value: 0x0


## Multiple Calls in a Single Transaction
- SWC ID: 113
- Severity: Low
- Contract: UnpredictableStateDynamicLibrariesFixed
- Function name: `loan(uint256,uint256)`
- PC address: 811
- Estimated Gas Usage: 33490 - 240293

#### Description

Multiple calls are executed in the same transaction.
This call is executed following another call within the same transaction. It is possible that the call never gets executed if a prior call fails permanently. This might be caused intentionally by a malicious callee. If possible, refactor the code such that each transaction only executes one external call or make sure that all callees can be trusted (i.e. they’re part of your own codebase).
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibrariesFixed/UnpredictableStateDynamicLibrariesFixed.sol:51

#### Code

```
payable(msg.sender).transfer(amount)
```

#### Initial State:

Account: [CREATOR], balance: 0x11ffe6c0a00180000, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x0, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [SOMEGUY], function: loan(uint256,uint256), txdata: 0xf83e48cb00000000000000000000000000000000000000000000000057023610410909b2088497802c03225d080a890ea20001e8285880a45c28b84482320808503048b1, decoded_data: (6269633074691639730, 3852772220423446790601026751118565259718950423272022992407678857155355625649), value: 0x0
Caller: [ATTACKER], function: loan(uint256,uint256), txdata: 0xf83e48cb0000000000000000000000000000000000000000000000000800000010000000200043000002122400834d1811a0116b23907842d77651ee4f48119081000002, decoded_data: (576460752571858944, 14474473571670611298871827145033082087791342375234397609277078619304583233538), value: 0x0


## Unprotected Ether Withdrawal
- SWC ID: 105
- Severity: High
- Contract: UnpredictableStateDynamicLibrariesFixed
- Function name: `loan(uint256,uint256)`
- PC address: 811
- Estimated Gas Usage: 33490 - 240293

#### Description

Any sender can withdraw Ether from the contract account.
Arbitrary senders other than the contract creator can profitably extract Ether from the contract account. Verify the business logic carefully and make sure that appropriate security controls are in place to prevent unexpected loss of funds.
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibrariesFixed/UnpredictableStateDynamicLibrariesFixed.sol:51

#### Code

```
payable(msg.sender).transfer(amount)
```

#### Initial State:

Account: [CREATOR], balance: 0xc920020100280000, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x40548000182848c5, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [SOMEGUY], function: loan(uint256,uint256), txdata: 0xf83e48cb00000000000000000000000000000000000000000000000175fffffffff96f041440000100d939d00000d2f085014086143a90d04eca8594840a292942241b9d, decoded_data: (26949540170184617732, 9159335210860452555050892111028256083739884570091599406648465898423401585565), value: 0x0
Caller: [ATTACKER], function: loan(uint256,uint256), txdata: 0xf83e48cb00000000000000000000000000000000000000000000000000000000000000362d0150d1100a00400055820da120204d86cf0209004862480844c4154138a2b1, decoded_data: (54, 20356402809337473370548801480208669965607051318046339894749706007882346570417), value: 0x0


## Dependence on predictable environment variable
- SWC ID: 116
- Severity: Low
- Contract: UnpredictableStateDynamicLibrariesFixed
- Function name: `loan(uint256,uint256)`
- PC address: 1175
- Estimated Gas Usage: 1669 - 2284

#### Description

A control flow decision is made based on The block.timestamp environment variable.
The block.timestamp environment variable is used to determine a control flow decision. Note that the values of variables like coinbase, gaslimit, block number and timestamp are predictable and can be manipulated by a malicious miner. Also keep in mind that attackers know hashes of earlier blocks. Don't use any of those environment variables as sources of randomness and be aware that use of these variables introduces a certain level of trust into miners.
In file: #utility.yul:83

#### Code

```
if gt(x, sum) { panic_error_0x11() }
```

#### Initial State:

Account: [CREATOR], balance: 0x2000000000808, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x0, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [SOMEGUY], function: loan(uint256,uint256), txdata: 0xf83e48cbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcbcb, decoded_data: (92179584765392892827391803752014295271426693675000135294156429621985746340811, 92179584765392892827391803752014295271426693675000135294156429621985746340811), value: 0x0


