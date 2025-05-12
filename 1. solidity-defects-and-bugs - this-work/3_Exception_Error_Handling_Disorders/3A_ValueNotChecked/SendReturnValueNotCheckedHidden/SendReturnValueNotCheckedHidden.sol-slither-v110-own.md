**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [unchecked-send-hidden](#unchecked-send-hidden) (1 results) (Low)
## unchecked-send-hidden
Impact: Low
Confidence: High
 - [ ] ID-0
[SendReturnValueNotCheckedHidden.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedHidden/SendReturnValueNotCheckedHidden.sol#L11-L15) return value is not checked:- 
	- [success = address(msg.sender).send(amount)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedHidden/SendReturnValueNotCheckedHidden.sol#L13)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedHidden/SendReturnValueNotCheckedHidden.sol#L11-L15


