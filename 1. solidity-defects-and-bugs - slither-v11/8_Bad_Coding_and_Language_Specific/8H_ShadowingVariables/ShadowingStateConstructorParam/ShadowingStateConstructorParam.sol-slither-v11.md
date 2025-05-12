**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [uninitialized-state](#uninitialized-state) (1 results) (High)
 - [shadowing-local](#shadowing-local) (1 results) (Low)
 - [calls-loop](#calls-loop) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [constable-states](#constable-states) (1 results) (Optimization)
## uninitialized-state
Impact: High
Confidence: High
 - [ ] ID-0
[ShadowingStateConstructorParam._sendToLimit](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParam/ShadowingStateConstructorParam.sol#L6) is never initialized. It is used in:
	- [ShadowingStateConstructorParam.split(address[])](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParam/ShadowingStateConstructorParam.sol#L12-L30)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParam/ShadowingStateConstructorParam.sol#L6


## shadowing-local
Impact: Low
Confidence: High
 - [ ] ID-1
[ShadowingStateConstructorParam.constructor(uint256)._sendToLimit](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParam/ShadowingStateConstructorParam.sol#L8) shadows:
	- [ShadowingStateConstructorParam._sendToLimit](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParam/ShadowingStateConstructorParam.sol#L6) (state variable)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParam/ShadowingStateConstructorParam.sol#L8


## calls-loop
Impact: Low
Confidence: Medium
 - [ ] ID-2
[ShadowingStateConstructorParam.split(address[])](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParam/ShadowingStateConstructorParam.sol#L12-L30) has external calls inside a loop: [success = address(sendTo[index]).send(amount)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParam/ShadowingStateConstructorParam.sol#L27)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParam/ShadowingStateConstructorParam.sol#L12-L30


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-3
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParam/ShadowingStateConstructorParam.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParam/ShadowingStateConstructorParam.sol#L2


## constable-states
Impact: Optimization
Confidence: High
 - [ ] ID-4
[ShadowingStateConstructorParam._sendToLimit](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParam/ShadowingStateConstructorParam.sol#L6) should be constant 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingStateConstructorParam/ShadowingStateConstructorParam.sol#L6


