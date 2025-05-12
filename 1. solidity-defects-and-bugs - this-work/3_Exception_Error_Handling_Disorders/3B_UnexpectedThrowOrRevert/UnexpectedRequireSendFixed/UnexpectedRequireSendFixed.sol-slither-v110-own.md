**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [no-reason-string](#no-reason-string) (1 results) (Low)
## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-0
[UnexpectedThrowOrRevert.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedRequireSendFixed/UnexpectedRequireSendFixed.sol#L20-L25) require/ revert has not reason string:- 
	- [require(bool)(bids[msg.sender] > 0)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedRequireSendFixed/UnexpectedRequireSendFixed.sol#L21)
	- [require(bool)(msg.sender != maxBidder)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedRequireSendFixed/UnexpectedRequireSendFixed.sol#L22)
	- [require(bool)(address(msg.sender).send(bids[msg.sender]))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedRequireSendFixed/UnexpectedRequireSendFixed.sol#L24)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedRequireSendFixed/UnexpectedRequireSendFixed.sol#L20-L25


