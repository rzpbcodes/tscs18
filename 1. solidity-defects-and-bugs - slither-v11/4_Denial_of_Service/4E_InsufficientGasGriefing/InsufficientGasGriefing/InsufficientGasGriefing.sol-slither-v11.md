**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [missing-zero-check](#missing-zero-check) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [low-level-calls](#low-level-calls) (1 results) (Informational)
## missing-zero-check
Impact: Low
Confidence: Medium
 - [ ] ID-0
[InsufficientGasGriefing.execute(bytes,address).worker](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefing/InsufficientGasGriefing.sol#L8) lacks a zero-check on :
		- [(success,None) = address(worker).call(abi.encodeWithSignature(execute(bytes),data))](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefing/InsufficientGasGriefing.sol#L14-L16)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefing/InsufficientGasGriefing.sol#L8


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefing/InsufficientGasGriefing.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefing/InsufficientGasGriefing.sol#L2


## low-level-calls
Impact: Informational
Confidence: High
 - [ ] ID-2
Low level call in [InsufficientGasGriefing.execute(bytes,address)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefing/InsufficientGasGriefing.sol#L8-L18):
	- [(success,None) = address(worker).call(abi.encodeWithSignature(execute(bytes),data))](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefing/InsufficientGasGriefing.sol#L14-L16)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefing/InsufficientGasGriefing.sol#L8-L18


