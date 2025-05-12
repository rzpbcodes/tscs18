**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [solc-version](#solc-version) (1 results) (Informational)
 - [reentrancy-unlimited-gas](#reentrancy-unlimited-gas) (1 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-0
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependency/TransactionOrderDependency.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependency/TransactionOrderDependency.sol#L2


## reentrancy-unlimited-gas
Impact: Informational
Confidence: Medium
 - [ ] ID-1
Reentrancy in [TransactionOrderDependencyFixed.checkWinner()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependency/TransactionOrderDependency.sol#L47-L70):
	External calls:
	- [address(player1).transfer(entranceFee + 1000000000000000000)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependency/TransactionOrderDependency.sol#L56)
	- [address(player2).transfer(entranceFee + 1000000000000000000)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependency/TransactionOrderDependency.sol#L57)
	- [address(player1).transfer(entranceFee / 2)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependency/TransactionOrderDependency.sol#L59)
	- [address(player2).transfer(entranceFee + entranceFee / 2)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependency/TransactionOrderDependency.sol#L60)
	- [address(player1).transfer(entranceFee + entranceFee / 2)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependency/TransactionOrderDependency.sol#L64)
	- [address(player2).transfer(entranceFee / 2)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependency/TransactionOrderDependency.sol#L65)
	State variables written after the call(s):
	- [resetState()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependency/TransactionOrderDependency.sol#L69)
		- [currentState = States.GameStarted](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependency/TransactionOrderDependency.sol#L73)
	- [resetState()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependency/TransactionOrderDependency.sol#L69)
		- [playerCount = 0](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependency/TransactionOrderDependency.sol#L74)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependency/TransactionOrderDependency.sol#L47-L70


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-2
[TransactionOrderDependencyFixed.entranceFee](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependency/TransactionOrderDependency.sol#L19) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependency/TransactionOrderDependency.sol#L19


