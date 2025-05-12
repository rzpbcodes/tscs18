**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [weak-prng](#weak-prng) (1 results) (High)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## weak-prng
Impact: High
Confidence: Medium
 - [ ] ID-0
[BlockhashDependency.chooseWinner()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2F_BlockchashDependency/BlockhashDependency/BlockhashDependency.sol#L34-L43) uses a weak PRNG: "[winnerIndex = uint256(blockhash(uint256)(block.number)) % contendersCount](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2F_BlockchashDependency/BlockhashDependency/BlockhashDependency.sol#L36-L37)" 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2F_BlockchashDependency/BlockhashDependency/BlockhashDependency.sol#L34-L43


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2F_BlockchashDependency/BlockhashDependency/BlockhashDependency.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2F_BlockchashDependency/BlockhashDependency/BlockhashDependency.sol#L2


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-2
[BlockhashDependency.owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2F_BlockchashDependency/BlockhashDependency/BlockhashDependency.sol#L8) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2F_BlockchashDependency/BlockhashDependency/BlockhashDependency.sol#L8


