**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [solc-version](#solc-version) (1 results) (Informational)
 - [immutable-states](#immutable-states) (2 results) (Optimization)
## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-0
Version constraint ^0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [^0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEqualityRequireFixed/StrictBalanceEqualityRequireFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEqualityRequireFixed/StrictBalanceEqualityRequireFixed.sol#L2


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-1
[StrictBalanceEqualityToken.tokenPrice](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEqualityRequireFixed/StrictBalanceEqualityRequireFixed.sol#L7) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEqualityRequireFixed/StrictBalanceEqualityRequireFixed.sol#L7


 - [ ] ID-2
[StrictBalanceEqualityToken.owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEqualityRequireFixed/StrictBalanceEqualityRequireFixed.sol#L5) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEqualityRequireFixed/StrictBalanceEqualityRequireFixed.sol#L5


