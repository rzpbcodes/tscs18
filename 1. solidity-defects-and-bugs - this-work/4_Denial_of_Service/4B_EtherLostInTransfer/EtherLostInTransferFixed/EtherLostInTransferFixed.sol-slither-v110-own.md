**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [gas-costly-loop](#gas-costly-loop) (3 results) (Optimization)
## gas-costly-loop
Impact: Optimization
Confidence: High
 - [ ] ID-0
[EtherLostInTransferFixed.Split(address[])](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L19-L48) access variables in loop: 
	- [_recordedTransactions.push(Transaction(msg.sender,recepients[recepientIndex],share,false))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L34-L41)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L19-L48


 - [ ] ID-1
[EtherLostInTransferFixed.refund(address)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L66-L88) access variables in loop: 
	- [transactionIndex < _recordedTransactions.length](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L69)
	- [_recordedTransactions[transactionIndex].from == msg.sender && _recordedTransactions[transactionIndex].to == recepient](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L73-L74)
	- [address(msg.sender).transfer(_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L76-L78)
	- [_recordedTransactions[transactionIndex].isFinished = true](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L79)
	- [TransactionRevoked(msg.sender,recepient,_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L80-L84)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L66-L88


 - [ ] ID-2
[EtherLostInTransferFixed.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L50-L64) access variables in loop: 
	- [transactionIndex < _recordedTransactions.length](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L53)
	- [_recordedTransactions[transactionIndex].to == msg.sender](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L56)
	- [address(msg.sender).transfer(_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L57-L59)
	- [_recordedTransactions[transactionIndex].isFinished = true](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L60)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransferFixed/EtherLostInTransferFixed.sol#L50-L64


