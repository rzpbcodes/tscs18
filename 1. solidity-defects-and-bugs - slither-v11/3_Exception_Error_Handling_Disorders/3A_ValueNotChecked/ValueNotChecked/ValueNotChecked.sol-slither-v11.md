**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [unchecked-send](#unchecked-send) (1 results) (Medium)
 - [write-after-write](#write-after-write) (1 results) (Medium)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [reentrancy-unlimited-gas](#reentrancy-unlimited-gas) (1 results) (Informational)
## unchecked-send
Impact: Medium
Confidence: Medium
 - [ ] ID-0
[ValueNotChecked.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol#L15-L26) ignores return value by [address(msg.sender).send(toSend)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol#L23)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol#L15-L26


## write-after-write
Impact: Medium
Confidence: High
 - [ ] ID-1
[ValueNotChecked.lockedWithdraw](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol#L7) is written in both
	[lockedWithdraw = true](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol#L21)
	[lockedWithdraw = false](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol#L25)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol#L7


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-2
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol#L2


## reentrancy-unlimited-gas
Impact: Informational
Confidence: Medium
 - [ ] ID-3
Reentrancy in [ValueNotChecked.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol#L15-L26):
	External calls:
	- [address(msg.sender).send(toSend)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol#L23)
	State variables written after the call(s):
	- [_balance[msg.sender] = 0](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol#L24)
	- [lockedWithdraw = false](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol#L25)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotChecked/ValueNotChecked.sol#L15-L26


