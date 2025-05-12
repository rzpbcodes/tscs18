**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [gas-costly-loop](#gas-costly-loop) (3 results) (Optimization)
## gas-costly-loop
Impact: Optimization
Confidence: High
 - [ ] ID-0
[InadequateOrIncorrectLoggingOrDocumenationFixed.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L50-L69) access variables in loop: 
	- [transactionIndex < _recordedTransactions.length](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L53)
	- [_recordedTransactions[transactionIndex].to == msg.sender](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L56)
	- [address(msg.sender).transfer(_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L57-L59)
	- [Received(_recordedTransactions[transactionIndex].to,_recordedTransactions[transactionIndex].from,_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L60-L64)
	- [_recordedTransactions[transactionIndex].isFinished = true](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L65)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L50-L69


 - [ ] ID-1
[InadequateOrIncorrectLoggingOrDocumenationFixed.refund(address)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L71-L93) access variables in loop: 
	- [transactionIndex < _recordedTransactions.length](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L74)
	- [_recordedTransactions[transactionIndex].from == msg.sender && _recordedTransactions[transactionIndex].to == recepient](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L78-L79)
	- [address(msg.sender).transfer(_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L81-L83)
	- [_recordedTransactions[transactionIndex].isFinished = true](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L84)
	- [TransactionRevoked(msg.sender,recepient,_recordedTransactions[transactionIndex].amount)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L85-L89)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L71-L93


 - [ ] ID-2
[InadequateOrIncorrectLoggingOrDocumenationFixed.Split(address[])](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L19-L48) access variables in loop: 
	- [_recordedTransactions.push(Transaction(msg.sender,recepients[recepientIndex],share,false))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L34-L41)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/InadequateOrIncorrectLoggingOrDocumenationFixed/InadequateOrIncorrectLoggingOrDocumenationFixed.sol#L19-L48


