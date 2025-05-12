**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [incorrect-equality](#incorrect-equality) (1 results) (Medium)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## incorrect-equality
Impact: Medium
Confidence: High
 - [ ] ID-0
[StrictBalanceEquality.getFunds()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEquality/StrictBalanceEquality.sol#L22-L28) uses a dangerous strict equality:
	- [require(bool,string)(address(this).balance == 10000000000000000000,The funding goal has not been reached)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEquality/StrictBalanceEquality.sol#L23-L26)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEquality/StrictBalanceEquality.sol#L22-L28


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEquality/StrictBalanceEquality.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEquality/StrictBalanceEquality.sol#L2


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-2
[StrictBalanceEquality._owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEquality/StrictBalanceEquality.sol#L6) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEquality/StrictBalanceEquality.sol#L6


