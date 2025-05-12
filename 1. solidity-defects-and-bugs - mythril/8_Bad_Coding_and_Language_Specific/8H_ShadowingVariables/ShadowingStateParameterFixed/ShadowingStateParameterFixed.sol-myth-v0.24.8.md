## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateParameterFixed/ShadowingStateParameterFixed.sol
### Unprotected Ether Withdrawal
- SWC ID: 105 in Contract `ShadowingStateParameterFixed`
- Function name: `borrow(uint256)`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateParameterFixed/ShadowingStateParameterFixed.sol:15
```
payable(msg.sender).transfer(amount)
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateParameterFixed/ShadowingStateParameterFixed.sol

## Unprotected Ether Withdrawal
- SWC ID: 105
- Severity: High
- Contract: ShadowingStateParameterFixed
- Function name: `borrow(uint256)`
- PC address: 869
- Estimated Gas Usage: 7271 - 61932

#### Description

Any sender can withdraw Ether from the contract account.
Arbitrary senders other than the contract creator can profitably extract Ether from the contract account. Verify the business logic carefully and make sure that appropriate security controls are in place to prevent unexpected loss of funds.
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateParameterFixed/ShadowingStateParameterFixed.sol:15

#### Code

```
payable(msg.sender).transfer(amount)
```

#### Initial State:

Account: [CREATOR], balance: 0x403, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x0, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [SOMEGUY], function: borrow(uint256), txdata: 0xc5ebeaec0000000000000000000000000000000000000000000000000000000000000000, decoded_data: (0,), value: 0x0
Caller: [ATTACKER], function: borrow(uint256), txdata: 0xc5ebeaec0000000000000000000000000000000000000000000000000200000000442085, decoded_data: (144115188080320645,), value: 0x0


