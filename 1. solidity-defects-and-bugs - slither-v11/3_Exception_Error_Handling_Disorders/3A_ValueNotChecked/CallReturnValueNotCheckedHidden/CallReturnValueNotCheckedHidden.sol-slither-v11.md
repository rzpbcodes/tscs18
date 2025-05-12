**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [write-after-write](#write-after-write) (1 results) (Medium)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [low-level-calls](#low-level-calls) (1 results) (Informational)
## write-after-write
Impact: Medium
Confidence: High
 - [ ] ID-0
[CallReturnValueNotCheckedHidden.withdraw().success](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHidden/CallReturnValueNotCheckedHidden.sol#L13) is written in both
	[(success,None) = address(msg.sender).call{value: amount}()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHidden/CallReturnValueNotCheckedHidden.sol#L13)
	[success = true](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHidden/CallReturnValueNotCheckedHidden.sol#L14)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHidden/CallReturnValueNotCheckedHidden.sol#L13


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHidden/CallReturnValueNotCheckedHidden.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHidden/CallReturnValueNotCheckedHidden.sol#L2


## low-level-calls
Impact: Informational
Confidence: High
 - [ ] ID-2
Low level call in [CallReturnValueNotCheckedHidden.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHidden/CallReturnValueNotCheckedHidden.sol#L11-L15):
	- [(success,None) = address(msg.sender).call{value: amount}()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHidden/CallReturnValueNotCheckedHidden.sol#L13)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedHidden/CallReturnValueNotCheckedHidden.sol#L11-L15


