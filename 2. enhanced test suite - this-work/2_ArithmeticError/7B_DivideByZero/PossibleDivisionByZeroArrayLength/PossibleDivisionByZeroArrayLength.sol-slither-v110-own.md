NEW VARIABLE bounty = msg.value / recipients.length
**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [div-by-array-length-unchecked](#div-by-array-length-unchecked) (1 results) (Low)
 - [require-calls-loop](#require-calls-loop) (1 results) (Low)
## div-by-array-length-unchecked
Impact: Low
Confidence: Low
 - [ ] ID-0
[PossibleDivisionByZeroArrayLength.split(address[])](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/PossibleDivisionByZeroArrayLength/PossibleDivisionByZeroArrayLength.sol#L7-L19) performs divison by not zero-checked variable:- 
	- [bounty = msg.value / recipients.length](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/PossibleDivisionByZeroArrayLength/PossibleDivisionByZeroArrayLength.sol#L12)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/PossibleDivisionByZeroArrayLength/PossibleDivisionByZeroArrayLength.sol#L7-L19


## require-calls-loop
Impact: Low
Confidence: High
 - [ ] ID-1
[PossibleDivisionByZeroArrayLength.split(address[])](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/PossibleDivisionByZeroArrayLength/PossibleDivisionByZeroArrayLength.sol#L7-L19) has `require/ assert` in a loop: 
	- [require(bool,string)(success,Could not send ether to recipients)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/PossibleDivisionByZeroArrayLength/PossibleDivisionByZeroArrayLength.sol#L17)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/2_ArithmeticError/7B_DivideByZero/PossibleDivisionByZeroArrayLength/PossibleDivisionByZeroArrayLength.sol#L7-L19


