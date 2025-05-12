**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [div-by-zero-unchecked](#div-by-zero-unchecked) (1 results) (Low)
## div-by-zero-unchecked
Impact: Low
Confidence: Low
 - [ ] ID-0
[DeadCodeUselessAssignmentFixed.calculateTotalInterest(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8J_DeadCode/DeadCodeUselessAssignmentFixed/DeadCodeUselessAssignmentFixed.sol#L8-L15) performs divison by not zero-checked variable:- 
	- [total = (amount / 100) * interestRate](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8J_DeadCode/DeadCodeUselessAssignmentFixed/DeadCodeUselessAssignmentFixed.sol#L13)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8J_DeadCode/DeadCodeUselessAssignmentFixed/DeadCodeUselessAssignmentFixed.sol#L8-L15


