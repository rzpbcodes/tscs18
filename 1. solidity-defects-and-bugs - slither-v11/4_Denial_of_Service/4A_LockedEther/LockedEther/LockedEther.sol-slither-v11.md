**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [locked-ether](#locked-ether) (1 results) (Medium)
 - [solc-version](#solc-version) (1 results) (Informational)
## locked-ether
Impact: Medium
Confidence: High
 - [ ] ID-0
Contract locking ether found:
	Contract [LockedEther](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4A_LockedEther/LockedEther/LockedEther.sol#L5-L12) has payable functions:
	 - [LockedEther.deposit(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4A_LockedEther/LockedEther/LockedEther.sol#L8-L11)
	But does not have a function to withdraw the ether

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4A_LockedEther/LockedEther/LockedEther.sol#L5-L12


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4A_LockedEther/LockedEther/LockedEther.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4A_LockedEther/LockedEther/LockedEther.sol#L2


