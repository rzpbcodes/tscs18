**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [timestamp](#timestamp) (1 results) (Low)
 - [boolean-equal](#boolean-equal) (1 results) (Informational)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [reentrancy-unlimited-gas](#reentrancy-unlimited-gas) (1 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## timestamp
Impact: Low
Confidence: Medium
 - [ ] ID-0
[TransactionOrderDependencyFixed.reveal(bytes32,TransactionOrderDependencyFixed.Options)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L66-L93) uses timestamp for comparisons
	Dangerous comparisons:
	- [block.timestamp > answers[msg.sender].revealDeadline](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L79)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L66-L93


## boolean-equal
Impact: Informational
Confidence: High
 - [ ] ID-1
[TransactionOrderDependencyFixed.checkWinner()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L95-L122) compares to a boolean constant:
	-[answers[player2].deadlinePassed == true](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L117)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L95-L122


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-2
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L2


## reentrancy-unlimited-gas
Impact: Informational
Confidence: Medium
 - [ ] ID-3
Reentrancy in [TransactionOrderDependencyFixed.checkWinner()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L95-L122):
	External calls:
	- [address(player1).transfer(entranceFee + 1000000000000000000)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L104)
	- [address(player2).transfer(entranceFee + 1000000000000000000)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L105)
	- [address(player1).transfer(entranceFee / 2)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L107)
	- [address(player2).transfer(entranceFee + entranceFee / 2)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L108)
	- [address(player1).transfer(entranceFee + entranceFee / 2)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L112)
	- [address(player2).transfer(entranceFee / 2)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L113)
	- [address(player1).transfer(entranceFee + entranceFee * 2)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L118)
	State variables written after the call(s):
	- [resetState()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L121)
		- [currentState = States.GameStarted](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L125)
	- [resetState()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L121)
		- [playerCount = 0](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L126)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L95-L122


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-4
[TransactionOrderDependencyFixed.entranceFee](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L33) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L33


