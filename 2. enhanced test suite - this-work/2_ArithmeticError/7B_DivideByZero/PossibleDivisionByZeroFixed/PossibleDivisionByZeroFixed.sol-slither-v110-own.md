**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [no-reason-string](#no-reason-string) (1 results) (Low)
 - [gas-costly-loop](#gas-costly-loop) (1 results) (Optimization)
## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-0
[PossibleDivisionByZeroFixed.distributeToRecipients()](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/PossibleDivisionByZeroFixed/PossibleDivisionByZeroFixed.sol#L32-L44) require/ revert has not reason string:- 
	- [require(bool)(recipientsCount > 0)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/PossibleDivisionByZeroFixed/PossibleDivisionByZeroFixed.sol#L33)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/PossibleDivisionByZeroFixed/PossibleDivisionByZeroFixed.sol#L32-L44


## gas-costly-loop
Impact: Optimization
Confidence: High
 - [ ] ID-1
[PossibleDivisionByZeroFixed.distributeToRecipients()](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/PossibleDivisionByZeroFixed/PossibleDivisionByZeroFixed.sol#L32-L44) access variables in loop: 
	- [_rewardCollected[_recipients[index]] = true](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/PossibleDivisionByZeroFixed/PossibleDivisionByZeroFixed.sol#L41)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/PossibleDivisionByZeroFixed/PossibleDivisionByZeroFixed.sol#L32-L44


