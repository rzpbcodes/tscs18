**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [no-reason-string](#no-reason-string) (2 results) (Low)
 - [gas-costly-loop](#gas-costly-loop) (1 results) (Optimization)
## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-0
[IntegerDivisionReminderFixed.withdrawRemaining()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminderFixed/IntegerDivisionReminderFixed.sol#L27-L30) require/ revert has not reason string:- 
	- [require(bool)(leftovers[msg.sender] > 0)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminderFixed/IntegerDivisionReminderFixed.sol#L28)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminderFixed/IntegerDivisionReminderFixed.sol#L27-L30


 - [ ] ID-1
[IntegerDivisionReminderFixed.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminderFixed/IntegerDivisionReminderFixed.sol#L22-L25) require/ revert has not reason string:- 
	- [require(bool)(shares[msg.sender] > 0)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminderFixed/IntegerDivisionReminderFixed.sol#L23)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminderFixed/IntegerDivisionReminderFixed.sol#L22-L25


## gas-costly-loop
Impact: Optimization
Confidence: High
 - [ ] ID-2
[IntegerDivisionReminderFixed.split(address[])](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminderFixed/IntegerDivisionReminderFixed.sol#L9-L20) access variables in loop: 
	- [shares[recipients[i]] = share](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminderFixed/IntegerDivisionReminderFixed.sol#L18)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7C_BugsAndArithmeticIssues/IntegerDivisionReminderFixed/IntegerDivisionReminderFixed.sol#L9-L20


