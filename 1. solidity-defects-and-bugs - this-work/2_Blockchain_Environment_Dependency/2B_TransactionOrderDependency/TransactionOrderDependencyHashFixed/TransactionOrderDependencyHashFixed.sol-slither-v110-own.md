**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [no-reason-string](#no-reason-string) (3 results) (Low)
## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-0
[TransactionOrderDependencyHash.commit(bytes32)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L22-L26) require/ revert has not reason string:- 
	- [require(bool)(locked == locked_g)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L23)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L22-L26


 - [ ] ID-1
[TransactionOrderDependencyHash.release()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L28-L31) require/ revert has not reason string:- 
	- [require(bool)(commitTime > block.timestamp + 7200)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L29)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L28-L31


 - [ ] ID-2
[TransactionOrderDependencyHash.guess(bytes)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L14-L20) require/ revert has not reason string:- 
	- [require(bool)(keccak256(bytes)(pack) == locked)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L16)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/2_Blockchain_Environment_Dependency/2B_TransactionOrderDependency/TransactionOrderDependencyHashFixed/TransactionOrderDependencyHashFixed.sol#L14-L20


