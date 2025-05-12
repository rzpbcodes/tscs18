## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateParameter/ShadowingStateParameter.sol
### Unprotected Ether Withdrawal
- SWC ID: 105 in Contract `ShadowingStateParameter`
- Function name: `borrow(uint256)`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateParameter/ShadowingStateParameter.sol:15
```
payable(msg.sender).transfer(amount)
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateParameter/ShadowingStateParameter.sol

## Unprotected Ether Withdrawal
- SWC ID: 105
- Severity: High
- Contract: ShadowingStateParameter
- Function name: `borrow(uint256)`
- PC address: 946
- Estimated Gas Usage: 7293 - 61954

#### Description

Any sender can withdraw Ether from the contract account.
Arbitrary senders other than the contract creator can profitably extract Ether from the contract account. Verify the business logic carefully and make sure that appropriate security controls are in place to prevent unexpected loss of funds.
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateParameter/ShadowingStateParameter.sol:15

#### Code

```
payable(msg.sender).transfer(amount)
```

#### Initial State:

Account: [CREATOR], balance: 0x2, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x0, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [CREATOR], function: payDebt(uint256), txdata: 0x16fc32979797979797979797979797979797979797979797979797979797979797979797, decoded_data: (68567080293469590231212622495340682689583402684359706548855275236058363041687,), value: 0x0
Caller: [ATTACKER], function: borrow(uint256), txdata: 0xc5ebeaec0000000000000000000000000000000000000000000000000000010000000001, decoded_data: (1099511627777,), value: 0x0


