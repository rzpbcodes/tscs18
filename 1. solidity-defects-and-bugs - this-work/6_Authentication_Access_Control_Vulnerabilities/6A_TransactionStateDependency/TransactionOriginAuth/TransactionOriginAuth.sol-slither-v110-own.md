**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [no-reason-string](#no-reason-string) (1 results) (Low)
## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-0
[TransactionStateDependency.distribute(address,uint256)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/6_Authentication_Access_Control_Vulnerabilities/6A_TransactionStateDependency/TransactionOriginAuth/TransactionOriginAuth.sol#L17-L21) require/ revert has not reason string:- 
	- [require(bool)(tx.origin == owner)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/6_Authentication_Access_Control_Vulnerabilities/6A_TransactionStateDependency/TransactionOriginAuth/TransactionOriginAuth.sol#L18)
	- [require(bool)(registered[recipient])](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/6_Authentication_Access_Control_Vulnerabilities/6A_TransactionStateDependency/TransactionOriginAuth/TransactionOriginAuth.sol#L19)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/6_Authentication_Access_Control_Vulnerabilities/6A_TransactionStateDependency/TransactionOriginAuth/TransactionOriginAuth.sol#L17-L21


