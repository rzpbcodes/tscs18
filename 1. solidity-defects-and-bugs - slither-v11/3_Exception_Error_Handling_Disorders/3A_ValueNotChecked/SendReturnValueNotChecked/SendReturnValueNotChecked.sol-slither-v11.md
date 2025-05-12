**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [unchecked-send](#unchecked-send) (1 results) (Medium)
 - [solc-version](#solc-version) (1 results) (Informational)
## unchecked-send
Impact: Medium
Confidence: Medium
 - [ ] ID-0
[SendReturnValueNotChecked.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotChecked/SendReturnValueNotChecked.sol#L11-L14) ignores return value by [address(msg.sender).send(amount)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotChecked/SendReturnValueNotChecked.sol#L13)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotChecked/SendReturnValueNotChecked.sol#L11-L14


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotChecked/SendReturnValueNotChecked.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotChecked/SendReturnValueNotChecked.sol#L2


