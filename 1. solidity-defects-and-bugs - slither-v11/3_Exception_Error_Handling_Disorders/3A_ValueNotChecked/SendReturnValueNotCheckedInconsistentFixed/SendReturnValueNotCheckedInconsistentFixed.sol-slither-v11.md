**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [solc-version](#solc-version) (1 results) (Informational)
 - [reentrancy-unlimited-gas](#reentrancy-unlimited-gas) (1 results) (Informational)
## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-0
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedInconsistentFixed/SendReturnValueNotCheckedInconsistentFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedInconsistentFixed/SendReturnValueNotCheckedInconsistentFixed.sol#L2


## reentrancy-unlimited-gas
Impact: Informational
Confidence: Medium
 - [ ] ID-1
Reentrancy in [SendReturnValueNotCheckedInconsistent.bid()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedInconsistentFixed/SendReturnValueNotCheckedInconsistentFixed.sol#L11-L22):
	External calls:
	- [success = address(hd_addr).send(hb_tmp)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedInconsistentFixed/SendReturnValueNotCheckedInconsistentFixed.sol#L17)
	Event emitted after the call(s):
	- [Bid(highestBidder,success)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedInconsistentFixed/SendReturnValueNotCheckedInconsistentFixed.sol#L18)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3A_ValueNotChecked/SendReturnValueNotCheckedInconsistentFixed/SendReturnValueNotCheckedInconsistentFixed.sol#L11-L22


