**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [gas-costly-loop](#gas-costly-loop) (3 results) (Optimization)
## gas-costly-loop
Impact: Optimization
Confidence: High
 - [ ] ID-0
[InadequateOrIncorrectLoggingOrDocumenation.refund(address)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L71-L93) access variables in loop: 
	- [transactionIndex < _recordedTransactions.length](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L74)
	- [_recordedTransactions[transactionIndex].from == msg.sender && _recordedTransactions[transactionIndex].to == recepient](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L78-L79)
	- [address(msg.sender).transfer(_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L81-L83)
	- [_recordedTransactions[transactionIndex].isFinished = true](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L84)
	- [TransactionRevoked(msg.sender,recepient,_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L85-L89)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L71-L93


 - [ ] ID-1
[InadequateOrIncorrectLoggingOrDocumenation.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L50-L69) access variables in loop: 
	- [transactionIndex < _recordedTransactions.length](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L53)
	- [_recordedTransactions[transactionIndex].to == msg.sender](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L56)
	- [Received(_recordedTransactions[transactionIndex].to,_recordedTransactions[transactionIndex].from,_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L57-L61)
	- [address(msg.sender).transfer(_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L62-L64)
	- [_recordedTransactions[transactionIndex].isFinished = true](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L65)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L50-L69


 - [ ] ID-2
[InadequateOrIncorrectLoggingOrDocumenation.Split(address[])](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L19-L48) access variables in loop: 
	- [_recordedTransactions.push(Transaction(msg.sender,recepients[recepientIndex],share,false))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L34-L41)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenation.sol#L19-L48


