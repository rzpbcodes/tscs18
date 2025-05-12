**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [weak-prng2](#weak-prng2) (1 results) (High)
## weak-prng2
Impact: High
Confidence: Medium
 - [ ] ID-0
[BlockVariableDependency.chooseWinner()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BlockVariableDependency/BlockVariableDependency.sol#L36-L44) uses a weak PRNG: "[winnerIndex = block.difficulty % _contendersCount](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BlockVariableDependency/BlockVariableDependency.sol#L38)" 

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BlockVariableDependency/BlockVariableDependency.sol#L36-L44


