**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [timestamp](#timestamp) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [naming-convention](#naming-convention) (1 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## timestamp
Impact: Low
Confidence: Medium
 - [ ] ID-0
[TransactionOrderDependencyHash.release()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L28-L31) uses timestamp for comparisons
	Dangerous comparisons:
	- [require(bool)(commitTime > block.timestamp + 7200)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L29)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L28-L31


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L2


## naming-convention
Impact: Informational
Confidence: High
 - [ ] ID-2
Parameter [TransactionOrderDependencyHash.commit(bytes32).locked_g](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L22) is not in mixedCase

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L22


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-3
[TransactionOrderDependencyHash.prize](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L7) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L7


