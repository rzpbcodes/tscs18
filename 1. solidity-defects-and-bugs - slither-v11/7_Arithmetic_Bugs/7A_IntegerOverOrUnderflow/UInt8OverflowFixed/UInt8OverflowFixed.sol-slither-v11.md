**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [solc-version](#solc-version) (1 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-0
Version constraint ^0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [^0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/7_Arithmetic_Bugs/7A_IntegerOverOrUnderflow/UInt8OverflowFixed/UInt8OverflowFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/7_Arithmetic_Bugs/7A_IntegerOverOrUnderflow/UInt8OverflowFixed/UInt8OverflowFixed.sol#L2


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-1
[Overflow.owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/7_Arithmetic_Bugs/7A_IntegerOverOrUnderflow/UInt8OverflowFixed/UInt8OverflowFixed.sol#L6) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/7_Arithmetic_Bugs/7A_IntegerOverOrUnderflow/UInt8OverflowFixed/UInt8OverflowFixed.sol#L6


