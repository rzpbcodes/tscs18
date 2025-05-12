**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [no-reason-string](#no-reason-string) (1 results) (Low)
## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-0
[EtherLostSimpleFixed.forward(address)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostSimpleFixed/EtherLostSimpleFixed.sol#L13-L19) require/ revert has not reason string:- 
	- [require(bool)(msg.value > 0)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostSimpleFixed/EtherLostSimpleFixed.sol#L14)
	- [require(bool)(recipient != address(0))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostSimpleFixed/EtherLostSimpleFixed.sol#L15)
	- [require(bool)(registered[recipient])](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostSimpleFixed/EtherLostSimpleFixed.sol#L16)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostSimpleFixed/EtherLostSimpleFixed.sol#L13-L19


