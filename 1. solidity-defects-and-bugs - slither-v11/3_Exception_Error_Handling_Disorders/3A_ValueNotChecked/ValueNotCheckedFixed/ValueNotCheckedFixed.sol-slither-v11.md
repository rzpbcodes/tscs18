**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [write-after-write](#write-after-write) (1 results) (Medium)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [reentrancy-unlimited-gas](#reentrancy-unlimited-gas) (1 results) (Informational)
## write-after-write
Impact: Medium
Confidence: High
 - [ ] ID-0
[ValueNotCheckedFixed.lockedWithdraw](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotCheckedFixed/ValueNotCheckedFixed.sol#L7) is written in both
	[lockedWithdraw = true](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotCheckedFixed/ValueNotCheckedFixed.sol#L21)
	[lockedWithdraw = false](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotCheckedFixed/ValueNotCheckedFixed.sol#L26)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotCheckedFixed/ValueNotCheckedFixed.sol#L7


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotCheckedFixed/ValueNotCheckedFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotCheckedFixed/ValueNotCheckedFixed.sol#L2


## reentrancy-unlimited-gas
Impact: Informational
Confidence: Medium
 - [ ] ID-2
Reentrancy in [ValueNotCheckedFixed.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotCheckedFixed/ValueNotCheckedFixed.sol#L15-L27):
	External calls:
	- [sent = address(msg.sender).send(toSend)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotCheckedFixed/ValueNotCheckedFixed.sol#L23)
	State variables written after the call(s):
	- [_balance[msg.sender] = 0](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotCheckedFixed/ValueNotCheckedFixed.sol#L25)
	- [lockedWithdraw = false](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotCheckedFixed/ValueNotCheckedFixed.sol#L26)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/ValueNotCheckedFixed/ValueNotCheckedFixed.sol#L15-L27


