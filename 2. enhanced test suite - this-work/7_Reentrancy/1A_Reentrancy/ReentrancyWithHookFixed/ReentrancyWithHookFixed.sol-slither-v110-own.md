**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [floating-pragma](#floating-pragma) (1 results) (Low)
 - [no-reason-string](#no-reason-string) (2 results) (Low)
## floating-pragma
Impact: Low
Confidence: High
 - [ ] ID-0
[^0.8.17](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/7_Reentrancy/1A_Reentrancy/ReentrancyWithHookFixed/ReentrancyWithHookFixed.sol#L2) is a floating pragma, use a fixed version of solidity:

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/7_Reentrancy/1A_Reentrancy/ReentrancyWithHookFixed/ReentrancyWithHookFixed.sol#L2


## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-1
[TokenContract.buyToken(uint256)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/7_Reentrancy/1A_Reentrancy/ReentrancyWithHookFixed/ReentrancyWithHookFixed.sol#L88-L99) require/ revert has not reason string:- 
	- [require(bool)(noOfTokensToBuy > 0)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/7_Reentrancy/1A_Reentrancy/ReentrancyWithHookFixed/ReentrancyWithHookFixed.sol#L92)
	- [require(bool)(noOfTokensToBuy <= availableSupply)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/7_Reentrancy/1A_Reentrancy/ReentrancyWithHookFixed/ReentrancyWithHookFixed.sol#L93)
	- [require(bool)(msg.value >= noOfTokensToBuy * tokenPrice)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/7_Reentrancy/1A_Reentrancy/ReentrancyWithHookFixed/ReentrancyWithHookFixed.sol#L94)
	- [revert()()](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/7_Reentrancy/1A_Reentrancy/ReentrancyWithHookFixed/ReentrancyWithHookFixed.sol#L98)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/7_Reentrancy/1A_Reentrancy/ReentrancyWithHookFixed/ReentrancyWithHookFixed.sol#L88-L99


 - [ ] ID-2
[TokenContract.transfer(address,uint256)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/7_Reentrancy/1A_Reentrancy/ReentrancyWithHookFixed/ReentrancyWithHookFixed.sol#L77-L86) require/ revert has not reason string:- 
	- [require(bool)(balanceOf[msg.sender] >= _value)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/7_Reentrancy/1A_Reentrancy/ReentrancyWithHookFixed/ReentrancyWithHookFixed.sol#L81)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/7_Reentrancy/1A_Reentrancy/ReentrancyWithHookFixed/ReentrancyWithHookFixed.sol#L77-L86


