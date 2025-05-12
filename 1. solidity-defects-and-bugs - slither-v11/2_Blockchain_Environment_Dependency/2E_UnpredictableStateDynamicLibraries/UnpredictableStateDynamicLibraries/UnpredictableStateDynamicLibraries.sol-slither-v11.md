**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [timestamp](#timestamp) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## timestamp
Impact: Low
Confidence: Medium
 - [ ] ID-0
[UnpredictableStateDynamicLibraries.loan(uint256,uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibraries.sol#L34-L53) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! debters[msg.sender].active,You are already in debt)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibraries.sol#L35)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibraries.sol#L34-L53


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibraries.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibraries.sol#L2


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-2
[UnpredictableStateDynamicLibraries._library](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibraries.sol#L28) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibraries.sol#L28


