**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [no-reason-string](#no-reason-string) (1 results) (Low)
 - [require-calls-loop](#require-calls-loop) (1 results) (Low)
 - [gas-costly-loop](#gas-costly-loop) (1 results) (Optimization)
## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-0
[UnexpectedThrowOrRevert.close()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedRequireSend/UnexpectedRequireSend.sol#L29-L35) require/ revert has not reason string:- 
	- [require(bool)(owner == msg.sender)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedRequireSend/UnexpectedRequireSend.sol#L30)
	- [require(bool)(address(bidders[i]).send(bids[i]))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedRequireSend/UnexpectedRequireSend.sol#L33)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedRequireSend/UnexpectedRequireSend.sol#L29-L35


## require-calls-loop
Impact: Low
Confidence: High
 - [ ] ID-1
[UnexpectedThrowOrRevert.close()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedRequireSend/UnexpectedRequireSend.sol#L29-L35) has `require/ assert` in a loop: 
	- [require(bool)(address(bidders[i]).send(bids[i]))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedRequireSend/UnexpectedRequireSend.sol#L33)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedRequireSend/UnexpectedRequireSend.sol#L29-L35


## gas-costly-loop
Impact: Optimization
Confidence: High
 - [ ] ID-2
[UnexpectedThrowOrRevert.close()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedRequireSend/UnexpectedRequireSend.sol#L29-L35) access variables in loop: 
	- [require(bool)(address(bidders[i]).send(bids[i]))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedRequireSend/UnexpectedRequireSend.sol#L33)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/UnexpectedRequireSend/UnexpectedRequireSend.sol#L29-L35


