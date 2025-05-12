**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [weak-prng2](#weak-prng2) (1 results) (High)
## weak-prng2
Impact: High
Confidence: Medium
 - [ ] ID-0
[BlockhashDependency.chooseWinner()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2F_BlockchashDependency/BlockhashDependency/BlockhashDependency.sol#L34-L43) uses a weak PRNG: "[winnerIndex = uint256(blockhash(uint256)(block.number)) % contendersCount](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2F_BlockchashDependency/BlockhashDependency/BlockhashDependency.sol#L36-L37)" 

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2F_BlockchashDependency/BlockhashDependency/BlockhashDependency.sol#L34-L43


