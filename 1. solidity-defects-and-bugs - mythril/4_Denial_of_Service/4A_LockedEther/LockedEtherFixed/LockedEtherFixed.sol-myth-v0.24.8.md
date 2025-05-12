## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/4_Denial_of_Service/4A_LockedEther/LockedEtherFixed/LockedEtherFixed.sol
### Transaction Order Dependence
- SWC ID: 114 in Contract `LockedEtherFixed`
- Function name: `withdraw()`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/4_Denial_of_Service/4A_LockedEther/LockedEtherFixed/LockedEtherFixed.sol:18
```
payable(msg.sender).send(toSend)
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/4_Denial_of_Service/4A_LockedEther/LockedEtherFixed/LockedEtherFixed.sol

## Transaction Order Dependence
- SWC ID: 114
- Severity: Medium
- Contract: LockedEtherFixed
- Function name: `withdraw()`
- PC address: 411
- Estimated Gas Usage: 7847 - 62698

#### Description

The value of the call is dependent on balance or storage write
This can lead to race conditions. An attacker may be able to run a transaction after our transaction which can change the value of the call
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/4_Denial_of_Service/4A_LockedEther/LockedEtherFixed/LockedEtherFixed.sol:18

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


