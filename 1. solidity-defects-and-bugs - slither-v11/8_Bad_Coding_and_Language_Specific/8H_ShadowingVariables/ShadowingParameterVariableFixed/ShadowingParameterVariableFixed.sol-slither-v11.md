**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [arbitrary-send-eth](#arbitrary-send-eth) (1 results) (High)
 - [calls-loop](#calls-loop) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
## arbitrary-send-eth
Impact: High
Confidence: Medium
 - [ ] ID-0
[ShadowingParameterVariableFixed.split(address[],uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingParameterVariableFixed/ShadowingParameterVariableFixed.sol#L6-L26) sends eth to arbitrary user
	Dangerous calls:
	- [success = address(sendTo[index]).send(amountToSend)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingParameterVariableFixed/ShadowingParameterVariableFixed.sol#L23)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingParameterVariableFixed/ShadowingParameterVariableFixed.sol#L6-L26


## calls-loop
Impact: Low
Confidence: Medium
 - [ ] ID-1
[ShadowingParameterVariableFixed.split(address[],uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingParameterVariableFixed/ShadowingParameterVariableFixed.sol#L6-L26) has external calls inside a loop: [success = address(sendTo[index]).send(amountToSend)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingParameterVariableFixed/ShadowingParameterVariableFixed.sol#L23)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingParameterVariableFixed/ShadowingParameterVariableFixed.sol#L6-L26


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-2
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingParameterVariableFixed/ShadowingParameterVariableFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8H_ShadowingVariables/ShadowingParameterVariableFixed/ShadowingParameterVariableFixed.sol#L2


