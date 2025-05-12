**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [calls-loop](#calls-loop) (2 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [naming-convention](#naming-convention) (1 results) (Informational)
 - [reentrancy-unlimited-gas](#reentrancy-unlimited-gas) (2 results) (Informational)
 - [unused-state](#unused-state) (1 results) (Informational)
 - [cache-array-length](#cache-array-length) (2 results) (Optimization)
## calls-loop
Impact: Low
Confidence: Medium
 - [ ] ID-0
[InadequateOrIncorrectLoggingOrDocumenation.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L50-L69) has external calls inside a loop: [address(msg.sender).transfer(_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L62-L64)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L50-L69


 - [ ] ID-1
[InadequateOrIncorrectLoggingOrDocumenation.refund(address)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L71-L93) has external calls inside a loop: [address(msg.sender).transfer(_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L81-L83)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L71-L93


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-2
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L2


## naming-convention
Impact: Informational
Confidence: High
 - [ ] ID-3
Function [InadequateOrIncorrectLoggingOrDocumenation.Split(address[])](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L19-L48) is not in mixedCase

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L19-L48


## reentrancy-unlimited-gas
Impact: Informational
Confidence: Medium
 - [ ] ID-4
Reentrancy in [InadequateOrIncorrectLoggingOrDocumenation.refund(address)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L71-L93):
	External calls:
	- [address(msg.sender).transfer(_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L81-L83)
	State variables written after the call(s):
	- [_recordedTransactions[transactionIndex].isFinished = true](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L84)
	Event emitted after the call(s):
	- [TransactionRevoked(msg.sender,recepient,_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L85-L89)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L71-L93


 - [ ] ID-5
Reentrancy in [InadequateOrIncorrectLoggingOrDocumenation.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L50-L69):
	External calls:
	- [address(msg.sender).transfer(_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L62-L64)
	State variables written after the call(s):
	- [_recordedTransactions[transactionIndex].isFinished = true](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L65)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L50-L69


## unused-state
Impact: Informational
Confidence: High
 - [ ] ID-6
[InadequateOrIncorrectLoggingOrDocumenation.receivers](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L15) is never used in [InadequateOrIncorrectLoggingOrDocumenation](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L5-L94)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L15


## cache-array-length
Impact: Optimization
Confidence: High
 - [ ] ID-7
Loop condition [transactionIndex < _recordedTransactions.length](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L74) should use cached array length instead of referencing `length` member of the storage array.
 
../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L74


 - [ ] ID-8
Loop condition [transactionIndex < _recordedTransactions.length](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L53) should use cached array length instead of referencing `length` member of the storage array.
 
../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L53


