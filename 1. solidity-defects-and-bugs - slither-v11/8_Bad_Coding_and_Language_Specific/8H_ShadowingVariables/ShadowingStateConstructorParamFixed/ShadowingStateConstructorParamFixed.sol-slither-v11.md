**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [calls-loop](#calls-loop) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## calls-loop
Impact: Low
Confidence: Medium
 - [ ] ID-0
[ShadowingStateConstructorParamFixed.split(address[])](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParamFixed/ShadowingStateConstructorParamFixed.sol#L12-L30) has external calls inside a loop: [success = address(sendTo[index]).send(amount)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParamFixed/ShadowingStateConstructorParamFixed.sol#L27)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParamFixed/ShadowingStateConstructorParamFixed.sol#L12-L30


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParamFixed/ShadowingStateConstructorParamFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParamFixed/ShadowingStateConstructorParamFixed.sol#L2


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-2
[ShadowingStateConstructorParamFixed._sendToLimit](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParamFixed/ShadowingStateConstructorParamFixed.sol#L6) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParamFixed/ShadowingStateConstructorParamFixed.sol#L6


