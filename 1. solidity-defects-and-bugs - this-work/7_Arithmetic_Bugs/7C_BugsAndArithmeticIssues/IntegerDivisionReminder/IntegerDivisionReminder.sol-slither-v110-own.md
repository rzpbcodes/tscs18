**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [no-reason-string](#no-reason-string) (2 results) (Low)
 - [gas-costly-loop](#gas-costly-loop) (1 results) (Optimization)
## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-0
[IntegerDivisionReminder.split(address[])](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminder/IntegerDivisionReminder.sol#L9-L20) require/ revert has not reason string:- 
	- [require(bool)(msg.value > 0)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminder/IntegerDivisionReminder.sol#L11)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminder/IntegerDivisionReminder.sol#L9-L20


 - [ ] ID-1
[IntegerDivisionReminder.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminder/IntegerDivisionReminder.sol#L22-L25) require/ revert has not reason string:- 
	- [require(bool)(shares[msg.sender] > 0)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminder/IntegerDivisionReminder.sol#L23)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminder/IntegerDivisionReminder.sol#L22-L25


## gas-costly-loop
Impact: Optimization
Confidence: High
 - [ ] ID-2
[IntegerDivisionReminder.split(address[])](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminder/IntegerDivisionReminder.sol#L9-L20) access variables in loop: 
	- [shares[recipients[i]] = share](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminder/IntegerDivisionReminder.sol#L18)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminder/IntegerDivisionReminder.sol#L9-L20


