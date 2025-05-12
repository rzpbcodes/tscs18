**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [timestamp](#timestamp) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## timestamp
Impact: Low
Confidence: Medium
 - [ ] ID-0
[DeprecatedFunctionsFixed.receiveApplication()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8D_DeprecatedFunctions/DeprecatedFunctionsFixed/DeprecatedFunctionsFixed.sol#L13-L19) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(block.timestamp < deadlineTimestamp,The deadline for applications has been reached)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8D_DeprecatedFunctions/DeprecatedFunctionsFixed/DeprecatedFunctionsFixed.sol#L14-L17)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8D_DeprecatedFunctions/DeprecatedFunctionsFixed/DeprecatedFunctionsFixed.sol#L13-L19


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8D_DeprecatedFunctions/DeprecatedFunctionsFixed/DeprecatedFunctionsFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8D_DeprecatedFunctions/DeprecatedFunctionsFixed/DeprecatedFunctionsFixed.sol#L2


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-2
[DeprecatedFunctionsFixed.deadlineTimestamp](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8D_DeprecatedFunctions/DeprecatedFunctionsFixed/DeprecatedFunctionsFixed.sol#L7) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8D_DeprecatedFunctions/DeprecatedFunctionsFixed/DeprecatedFunctionsFixed.sol#L7


