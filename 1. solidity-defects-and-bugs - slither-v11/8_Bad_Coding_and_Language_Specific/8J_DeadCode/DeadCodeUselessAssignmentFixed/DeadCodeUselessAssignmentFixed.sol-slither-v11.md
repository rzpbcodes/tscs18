**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [divide-before-multiply](#divide-before-multiply) (1 results) (Medium)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [naming-convention](#naming-convention) (1 results) (Informational)
## divide-before-multiply
Impact: Medium
Confidence: Medium
 - [ ] ID-0
[DeadCodeUselessAssignmentFixed.calculateTotalInterest(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8J_DeadCode/DeadCodeUselessAssignmentFixed/DeadCodeUselessAssignmentFixed.sol#L8-L15) performs a multiplication on the result of a division:
	- [total = (amount / 100) * interestRate](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8J_DeadCode/DeadCodeUselessAssignmentFixed/DeadCodeUselessAssignmentFixed.sol#L13)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8J_DeadCode/DeadCodeUselessAssignmentFixed/DeadCodeUselessAssignmentFixed.sol#L8-L15


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8J_DeadCode/DeadCodeUselessAssignmentFixed/DeadCodeUselessAssignmentFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8J_DeadCode/DeadCodeUselessAssignmentFixed/DeadCodeUselessAssignmentFixed.sol#L2


## naming-convention
Impact: Informational
Confidence: High
 - [ ] ID-2
Constant [DeadCodeUselessAssignmentFixed.interestRate](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8J_DeadCode/DeadCodeUselessAssignmentFixed/DeadCodeUselessAssignmentFixed.sol#L6) is not in UPPER_CASE_WITH_UNDERSCORES

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8J_DeadCode/DeadCodeUselessAssignmentFixed/DeadCodeUselessAssignmentFixed.sol#L6


