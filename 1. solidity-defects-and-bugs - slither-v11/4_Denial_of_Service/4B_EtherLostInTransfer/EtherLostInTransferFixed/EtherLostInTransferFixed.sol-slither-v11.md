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
[EtherLostInTransferFixed.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L50-L64) has external calls inside a loop: [address(msg.sender).transfer(_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L57-L59)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L50-L64


 - [ ] ID-1
[EtherLostInTransferFixed.refund(address)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L66-L88) has external calls inside a loop: [address(msg.sender).transfer(_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L76-L78)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L66-L88


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-2
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L2


## naming-convention
Impact: Informational
Confidence: High
 - [ ] ID-3
Function [EtherLostInTransferFixed.Split(address[])](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L19-L48) is not in mixedCase

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L19-L48


## reentrancy-unlimited-gas
Impact: Informational
Confidence: Medium
 - [ ] ID-4
Reentrancy in [EtherLostInTransferFixed.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L50-L64):
	External calls:
	- [address(msg.sender).transfer(_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L57-L59)
	State variables written after the call(s):
	- [_recordedTransactions[transactionIndex].isFinished = true](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L60)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L50-L64


 - [ ] ID-5
Reentrancy in [EtherLostInTransferFixed.refund(address)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L66-L88):
	External calls:
	- [address(msg.sender).transfer(_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L76-L78)
	State variables written after the call(s):
	- [_recordedTransactions[transactionIndex].isFinished = true](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L79)
	Event emitted after the call(s):
	- [TransactionRevoked(msg.sender,recepient,_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L80-L84)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L66-L88


## unused-state
Impact: Informational
Confidence: High
 - [ ] ID-6
[EtherLostInTransferFixed.receivers](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L15) is never used in [EtherLostInTransferFixed](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L6-L89)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L15


## cache-array-length
Impact: Optimization
Confidence: High
 - [ ] ID-7
Loop condition [transactionIndex < _recordedTransactions.length](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L53) should use cached array length instead of referencing `length` member of the storage array.
 
../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L53


 - [ ] ID-8
Loop condition [transactionIndex < _recordedTransactions.length](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L69) should use cached array length instead of referencing `length` member of the storage array.
 
../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L69


