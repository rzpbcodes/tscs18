**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [div-by-zero-unchecked](#div-by-zero-unchecked) (1 results) (Low)
## div-by-zero-unchecked
Impact: Low
Confidence: Low
 - [ ] ID-0
[DeadCodeUselessAssignment.calculateTotalInterest(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8J_DeadCode/DeadCodeUselessAssignment/DeadCodeUselessAssignment.sol#L8-L17) performs divison by not zero-checked variable:- 
	- [total = (amount / 100) * interestRate](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8J_DeadCode/DeadCodeUselessAssignment/DeadCodeUselessAssignment.sol#L14)
	- [total = (amount / 100) * interestRate](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8J_DeadCode/DeadCodeUselessAssignment/DeadCodeUselessAssignment.sol#L15)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8J_DeadCode/DeadCodeUselessAssignment/DeadCodeUselessAssignment.sol#L8-L17


