## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/ChecksEffectsInteractionsSendFixed/ChecksEffectsInteractionsSendFixed.sol
### Transaction Order Dependence
- SWC ID: 114 in Contract `ChecksEffectsInteractionsSendFixed`
- Function name: `withdraw()`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/ChecksEffectsInteractionsSendFixed/ChecksEffectsInteractionsSendFixed.sol:18
```
payable(msg.sender).send(addrBal)
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/ChecksEffectsInteractionsSendFixed/ChecksEffectsInteractionsSendFixed.sol

## Transaction Order Dependence
- SWC ID: 114
- Severity: Medium
- Contract: ChecksEffectsInteractionsSendFixed
- Function name: `withdraw()`
- PC address: 264
- Estimated Gas Usage: 6935 - 61596

#### Description

The value of the call is dependent on balance or storage write
This can lead to race conditions. An attacker may be able to run a transaction after our transaction which can change the value of the call
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/ChecksEffectsInteractionsSendFixed/ChecksEffectsInteractionsSendFixed.sol:18

#### Code

```
payable(msg.sender).send(addrBal)
```

#### Initial State:

Account: [CREATOR], balance: 0x0, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x0, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [ATTACKER], function: withdraw(), txdata: 0x3ccfd60b, value: 0x0


