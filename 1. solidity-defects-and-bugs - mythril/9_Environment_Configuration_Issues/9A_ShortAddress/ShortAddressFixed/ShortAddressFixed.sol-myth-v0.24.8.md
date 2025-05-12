## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddressFixed/ShortAddressFixed.sol
### Transaction Order Dependence
- SWC ID: 114 in Contract `ShortAddressFixed`
- Function name: `withdraw()`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddressFixed/ShortAddressFixed.sol:23
```
payable(msg.sender).transfer(toSend)
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddressFixed/ShortAddressFixed.sol

## Transaction Order Dependence
- SWC ID: 114
- Severity: Medium
- Contract: ShortAddressFixed
- Function name: `withdraw()`
- PC address: 375
- Estimated Gas Usage: 7845 - 62696

#### Description

The value of the call is dependent on balance or storage write
This can lead to race conditions. An attacker may be able to run a transaction after our transaction which can change the value of the call
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddressFixed/ShortAddressFixed.sol:23

#### Code

```
payable(msg.sender).transfer(toSend)
```

#### Initial State:

Account: [CREATOR], balance: 0x0, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x40000000000000000, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [ATTACKER], function: deposit(), txdata: 0xd0e30db0, value: 0x1
Caller: [ATTACKER], function: withdraw(), txdata: 0x3ccfd60b, value: 0x0


