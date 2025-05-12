**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [solc-version](#solc-version) (2 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-0
solc-0.6.8 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.

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
	- [^0.6.8](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9B_OutdatedCompilerVersion/OutdatedCompilerVersion/OutdatedCompilerVersion.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9B_OutdatedCompilerVersion/OutdatedCompilerVersion/OutdatedCompilerVersion.sol#L2


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-2
[OutdatedCompilerVersion.owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9B_OutdatedCompilerVersion/OutdatedCompilerVersion/OutdatedCompilerVersion.sol#L6) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9B_OutdatedCompilerVersion/OutdatedCompilerVersion/OutdatedCompilerVersion.sol#L6


