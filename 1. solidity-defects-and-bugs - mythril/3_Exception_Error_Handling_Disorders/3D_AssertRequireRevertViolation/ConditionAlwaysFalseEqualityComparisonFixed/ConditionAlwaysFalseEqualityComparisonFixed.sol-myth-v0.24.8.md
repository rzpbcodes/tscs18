## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3D_AssertRequireRevertViolation/ConditionAlwaysFalseEqualityComparisonFixed/ConditionAlwaysFalseEqualityComparisonFixed.sol
### Exception State
- SWC ID: 110 in Contract `ConditionAlwaysFalse`
- Function name: `notGonnaExecute(uint256,uint256)`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3D_AssertRequireRevertViolation/ConditionAlwaysFalseEqualityComparisonFixed/ConditionAlwaysFalseEqualityComparisonFixed.sol:12
```
assert(number != 0)
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3D_AssertRequireRevertViolation/ConditionAlwaysFalseEqualityComparisonFixed/ConditionAlwaysFalseEqualityComparisonFixed.sol

## Exception State
- SWC ID: 110
- Severity: Medium
- Contract: ConditionAlwaysFalse
- Function name: `notGonnaExecute(uint256,uint256)`
- PC address: 464
- Estimated Gas Usage: 871 - 1156

#### Description

An assertion violation was triggered.
It is possible to trigger an assertion violation. Note that Solidity assert() statements should only be used to check invariants. Review the transaction trace generated for this issue and either make sure your program logic is correct, or use require() instead of assert() if your goal is to constrain user inputs or enforce preconditions. Remember to validate inputs from both callers (for instance, via passed arguments) and callees (for instance, via return values).
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3D_AssertRequireRevertViolation/ConditionAlwaysFalseEqualityComparisonFixed/ConditionAlwaysFalseEqualityComparisonFixed.sol:12

#### Code

```
assert(number != 0)
```

#### Initial State:

Account: [CREATOR], balance: 0x0, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x0, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [SOMEGUY], function: notGonnaExecute(uint256,uint256), txdata: 0x46cc0a6780000000000000000000c1000000000000000000002df00400010000000008040000000000000000000000000000000000000000000000000000000000000000, decoded_data: (57896044618658097711785564714216851171886374940480552400943852969069176162308, 0), value: 0x0


