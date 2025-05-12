**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [div-by-zero-unchecked](#div-by-zero-unchecked) (1 results) (Low)
## div-by-zero-unchecked
Impact: Low
Confidence: Low
 - [ ] ID-0
[TransactionOrderDependencyFixed.checkWinner()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L95-L122) performs divison by not zero-checked variable:- 
	- [address(player1).transfer(entranceFee / 2)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L107)
	- [address(player2).transfer(entranceFee + entranceFee / 2)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L108)
	- [address(player1).transfer(entranceFee + entranceFee / 2)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L112)
	- [address(player2).transfer(entranceFee / 2)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L113)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyFixed/TransactionOrderDependencyFixed.sol#L95-L122


