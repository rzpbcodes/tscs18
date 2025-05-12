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
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/Unexpected_Throw_Or_Revert/Unexpected_Throw_Or_Revert.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/Unexpected_Throw_Or_Revert/Unexpected_Throw_Or_Revert.sol#L2


## reentrancy-unlimited-gas
Impact: Informational
Confidence: Medium
 - [ ] ID-1
Reentrancy in [UnexpectedThrowOrRevert.bid()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/Unexpected_Throw_Or_Revert/Unexpected_Throw_Or_Revert.sol#L10-L18):
	External calls:
	- [require(bool)(address(_highestBidder).send(_highestBid))](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/Unexpected_Throw_Or_Revert/Unexpected_Throw_Or_Revert.sol#L12)
	State variables written after the call(s):
	- [_highestBid = msg.value](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/Unexpected_Throw_Or_Revert/Unexpected_Throw_Or_Revert.sol#L14)
	- [_highestBidder = msg.sender](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/Unexpected_Throw_Or_Revert/Unexpected_Throw_Or_Revert.sol#L13)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3B_UnexpectedThrowOrRevert/Unexpected_Throw_Or_Revert/Unexpected_Throw_Or_Revert.sol#L10-L18


