**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [uninitialized-state](#uninitialized-state) (1 results) (High)
 - [shadowing-local](#shadowing-local) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [constable-states](#constable-states) (1 results) (Optimization)
## uninitialized-state
Impact: High
Confidence: High
 - [ ] ID-0
[ShadowingStateVariable._result](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateVariable/ShadowingStateVariable.sol#L6) is never initialized. It is used in:
	- [ShadowingStateVariable.getResult()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateVariable/ShadowingStateVariable.sol#L25-L27)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateVariable/ShadowingStateVariable.sol#L6


## shadowing-local
Impact: Low
Confidence: High
 - [ ] ID-1
[ShadowingStateVariable.calculateResult()._result](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateVariable/ShadowingStateVariable.sol#L20) shadows:
	- [ShadowingStateVariable._result](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateVariable/ShadowingStateVariable.sol#L6) (state variable)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateVariable/ShadowingStateVariable.sol#L20


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-2
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateVariable/ShadowingStateVariable.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateVariable/ShadowingStateVariable.sol#L2


## constable-states
Impact: Optimization
Confidence: High
 - [ ] ID-3
[ShadowingStateVariable._result](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateVariable/ShadowingStateVariable.sol#L6) should be constant 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateVariable/ShadowingStateVariable.sol#L6


