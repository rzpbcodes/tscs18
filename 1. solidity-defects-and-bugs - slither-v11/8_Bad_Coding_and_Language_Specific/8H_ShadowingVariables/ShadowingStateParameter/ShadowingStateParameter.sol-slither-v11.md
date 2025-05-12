**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [shadowing-local](#shadowing-local) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
## shadowing-local
Impact: Low
Confidence: High
 - [ ] ID-0
[ShadowingStateParameter.payDebt(uint256).interest](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateParameter/ShadowingStateParameter.sol#L18) shadows:
	- [ShadowingStateParameter.interest](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateParameter/ShadowingStateParameter.sol#L6) (state variable)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateParameter/ShadowingStateParameter.sol#L18


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateParameter/ShadowingStateParameter.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateParameter/ShadowingStateParameter.sol#L2


