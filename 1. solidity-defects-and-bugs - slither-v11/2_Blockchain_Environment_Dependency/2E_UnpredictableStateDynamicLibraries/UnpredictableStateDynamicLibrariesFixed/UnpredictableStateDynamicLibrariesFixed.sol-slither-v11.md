**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [timestamp](#timestamp) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [constable-states](#constable-states) (1 results) (Optimization)
## timestamp
Impact: Low
Confidence: Medium
 - [ ] ID-0
[UnpredictableStateDynamicLibrariesFixed.loan(uint256,uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibrariesFixed/UnpredictableStateDynamicLibrariesFixed.sol#L33-L52) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(! debters[msg.sender].active,You are already in debt)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibrariesFixed/UnpredictableStateDynamicLibrariesFixed.sol#L34)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibrariesFixed/UnpredictableStateDynamicLibrariesFixed.sol#L33-L52


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibrariesFixed/UnpredictableStateDynamicLibrariesFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibrariesFixed/UnpredictableStateDynamicLibrariesFixed.sol#L2


## constable-states
Impact: Optimization
Confidence: High
 - [ ] ID-2
[UnpredictableStateDynamicLibrariesFixed._library](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibrariesFixed/UnpredictableStateDynamicLibrariesFixed.sol#L28-L29) should be constant 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2E_UnpredictableStateDynamicLibraries/UnpredictableStateDynamicLibrariesFixed/UnpredictableStateDynamicLibrariesFixed.sol#L28-L29


