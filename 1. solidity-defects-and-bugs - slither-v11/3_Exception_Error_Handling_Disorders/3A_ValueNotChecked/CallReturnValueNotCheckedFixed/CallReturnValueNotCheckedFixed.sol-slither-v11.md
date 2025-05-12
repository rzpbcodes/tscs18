**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [solc-version](#solc-version) (1 results) (Informational)
 - [low-level-calls](#low-level-calls) (1 results) (Informational)
## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-0
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedFixed/CallReturnValueNotCheckedFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedFixed/CallReturnValueNotCheckedFixed.sol#L2


## low-level-calls
Impact: Informational
Confidence: High
 - [ ] ID-1
Low level call in [CallReturnValueNotChecked.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedFixed/CallReturnValueNotCheckedFixed.sol#L11-L17):
	- [(success,None) = address(msg.sender).call{value: amount}()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedFixed/CallReturnValueNotCheckedFixed.sol#L13)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/CallReturnValueNotCheckedFixed/CallReturnValueNotCheckedFixed.sol#L11-L17


