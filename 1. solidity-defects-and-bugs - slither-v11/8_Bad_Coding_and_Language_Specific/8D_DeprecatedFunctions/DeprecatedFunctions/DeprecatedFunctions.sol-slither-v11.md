**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [timestamp](#timestamp) (1 results) (Low)
 - [solc-version](#solc-version) (2 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## timestamp
Impact: Low
Confidence: Medium
 - [ ] ID-0
[DeprecatedFunctions.receiveApplication()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8D_DeprecatedFunctions/DeprecatedFunctions/DeprecatedFunctions.sol#L14-L20) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool,string)(now < deadlineTimestamp,The deadline for applications has been reached)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8D_DeprecatedFunctions/DeprecatedFunctions/DeprecatedFunctions.sol#L15-L18)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8D_DeprecatedFunctions/DeprecatedFunctions/DeprecatedFunctions.sol#L14-L20


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint ^0.6.8 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess
	- AbiReencodingHeadOverflowWithStaticArrayCleanup
	- DirtyBytesArrayToStorage
	- NestedCalldataArrayAbiReencodingSizeValidation
	- SignedImmutables
	- ABIDecodeTwoDimensionalArrayMemory
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup.
It is used by:
	- [^0.6.8](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8D_DeprecatedFunctions/DeprecatedFunctions/DeprecatedFunctions.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8D_DeprecatedFunctions/DeprecatedFunctions/DeprecatedFunctions.sol#L2


 - [ ] ID-2
solc-0.6.8 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.

## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-3
[DeprecatedFunctions.deadlineTimestamp](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8D_DeprecatedFunctions/DeprecatedFunctions/DeprecatedFunctions.sol#L8) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8D_DeprecatedFunctions/DeprecatedFunctions/DeprecatedFunctions.sol#L8


