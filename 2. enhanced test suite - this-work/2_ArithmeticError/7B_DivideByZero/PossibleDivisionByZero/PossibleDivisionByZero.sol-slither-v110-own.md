**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [div-by-zero-unchecked](#div-by-zero-unchecked) (1 results) (Low)
## div-by-zero-unchecked
Impact: Low
Confidence: Low
 - [ ] ID-0
[PossibleDivisionByZero.distributeTorecipients()](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/PossibleDivisionByZero/PossibleDivisionByZero.sol#L32-L37) performs divison by not zero-checked variable:- 
	- [share = address(this).balance / recipientsCount](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/PossibleDivisionByZero/PossibleDivisionByZero.sol#L33)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/PossibleDivisionByZero/PossibleDivisionByZero.sol#L32-L37


