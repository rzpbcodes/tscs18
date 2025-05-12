**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [tautology](#tautology) (1 results) (Medium)
 - [solc-version](#solc-version) (1 results) (Informational)
## tautology
Impact: Medium
Confidence: High
 - [ ] ID-0
[AssertAlwaysFalse.notGonnaExecute(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3D_AssertRequireRevertViolation/ConditionAlwaysFalse/ConditionAlwaysFalse.sol#L5-L12) contains a tautology or contradiction:
	- [require(bool)(parameter < 0)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3D_AssertRequireRevertViolation/ConditionAlwaysFalse/ConditionAlwaysFalse.sol#L10)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3D_AssertRequireRevertViolation/ConditionAlwaysFalse/ConditionAlwaysFalse.sol#L5-L12


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3D_AssertRequireRevertViolation/ConditionAlwaysFalse/ConditionAlwaysFalse.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3D_AssertRequireRevertViolation/ConditionAlwaysFalse/ConditionAlwaysFalse.sol#L2


