**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [return-bomb](#return-bomb) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [low-level-calls](#low-level-calls) (1 results) (Informational)
## return-bomb
Impact: Low
Confidence: Medium
 - [ ] ID-0
[MishandledOutOfGasExceptionFixed.borrow(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_ExceptionFixed/Mishandled_Out_Of_Gas_ExceptionFixed.sol#L8-L18) tries to limit the gas of an external call that controls implicit decoding
	[(success,None) = address(msg.sender).call{gas: gasleft()(),value: amount}()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_ExceptionFixed/Mishandled_Out_Of_Gas_ExceptionFixed.sol#L11-L14)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_ExceptionFixed/Mishandled_Out_Of_Gas_ExceptionFixed.sol#L8-L18


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_ExceptionFixed/Mishandled_Out_Of_Gas_ExceptionFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_ExceptionFixed/Mishandled_Out_Of_Gas_ExceptionFixed.sol#L2


## low-level-calls
Impact: Informational
Confidence: High
 - [ ] ID-2
Low level call in [MishandledOutOfGasExceptionFixed.borrow(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_ExceptionFixed/Mishandled_Out_Of_Gas_ExceptionFixed.sol#L8-L18):
	- [(success,None) = address(msg.sender).call{gas: gasleft()(),value: amount}()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_ExceptionFixed/Mishandled_Out_Of_Gas_ExceptionFixed.sol#L11-L14)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_ExceptionFixed/Mishandled_Out_Of_Gas_ExceptionFixed.sol#L8-L18


