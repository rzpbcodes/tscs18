**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [unchecked-lowlevel-hidden](#unchecked-lowlevel-hidden) (1 results) (Low)
## unchecked-lowlevel-hidden
Impact: Low
Confidence: High
 - [ ] ID-0
[CallReturnValueNotCheckedHidden.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHidden/CallReturnValueNotCheckedHidden.sol#L11-L15) return value is not checked:- 
	- [(success,None) = address(msg.sender).call{value: amount}()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHidden/CallReturnValueNotCheckedHidden.sol#L13)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHidden/CallReturnValueNotCheckedHidden.sol#L11-L15


