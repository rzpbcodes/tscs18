**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [div-by-zero-unchecked](#div-by-zero-unchecked) (1 results) (Low)
## div-by-zero-unchecked
Impact: Low
Confidence: Low
 - [ ] ID-0
[DivideByZeroMinimalFixed.divide(uint256,uint256)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/DivideByZeroMinimalFixed/DivideByZeroMinimalFixed.sol#L6-L12) performs divison by not zero-checked variable:- 
	- [number / divisor + 1](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/DivideByZeroMinimalFixed/DivideByZeroMinimalFixed.sol#L11)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/DivideByZeroMinimalFixed/DivideByZeroMinimalFixed.sol#L6-L12


