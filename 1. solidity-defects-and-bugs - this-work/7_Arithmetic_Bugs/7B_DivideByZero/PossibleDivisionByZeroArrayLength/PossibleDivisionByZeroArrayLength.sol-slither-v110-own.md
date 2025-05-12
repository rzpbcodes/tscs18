**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [div-by-zero-unchecked](#div-by-zero-unchecked) (1 results) (Low)
 - [require-calls-loop](#require-calls-loop) (1 results) (Low)
## div-by-zero-unchecked
Impact: Low
Confidence: Low
 - [ ] ID-0
[PossibleDivisionByZeroArrayLength.split(address[])](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7B_DivideByZero/PossibleDivisionByZeroArrayLength/PossibleDivisionByZeroArrayLength.sol#L7-L19) performs divison by not zero-checked variable:- 
	- [bounty = msg.value / recipients.length](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7B_DivideByZero/PossibleDivisionByZeroArrayLength/PossibleDivisionByZeroArrayLength.sol#L12)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7B_DivideByZero/PossibleDivisionByZeroArrayLength/PossibleDivisionByZeroArrayLength.sol#L7-L19


## require-calls-loop
Impact: Low
Confidence: High
 - [ ] ID-1
[PossibleDivisionByZeroArrayLength.split(address[])](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7B_DivideByZero/PossibleDivisionByZeroArrayLength/PossibleDivisionByZeroArrayLength.sol#L7-L19) has `require/ assert` in a loop: 
	- [require(bool,string)(success,Could not send ether to recipients)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7B_DivideByZero/PossibleDivisionByZeroArrayLength/PossibleDivisionByZeroArrayLength.sol#L17)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7B_DivideByZero/PossibleDivisionByZeroArrayLength/PossibleDivisionByZeroArrayLength.sol#L7-L19


