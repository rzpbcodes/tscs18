**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [no-reason-string](#no-reason-string) (1 results) (Low)
## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-0
[UnexpectedThrowOrRevert.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedAssertCallFixed/UnexpectedAssertCallFixed.sol#L20-L26) require/ revert has not reason string:- 
	- [require(bool)(bids[msg.sender] > 0)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedAssertCallFixed/UnexpectedAssertCallFixed.sol#L21)
	- [require(bool)(msg.sender != maxBidder)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedAssertCallFixed/UnexpectedAssertCallFixed.sol#L22)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedAssertCallFixed/UnexpectedAssertCallFixed.sol#L20-L26


