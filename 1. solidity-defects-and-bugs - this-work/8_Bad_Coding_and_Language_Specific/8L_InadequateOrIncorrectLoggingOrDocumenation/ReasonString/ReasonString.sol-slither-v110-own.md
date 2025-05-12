**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [no-reason-string](#no-reason-string) (2 results) (Low)
## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-0
[ReasonString.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/ReasonString/ReasonString.sol#L14-L20) require/ revert has not reason string:- 
	- [require(bool)(_balance[msg.sender] != 0)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/ReasonString/ReasonString.sol#L16)
	- [require(bool)(sent)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/ReasonString/ReasonString.sol#L19)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/ReasonString/ReasonString.sol#L14-L20


 - [ ] ID-1
[ReasonString.deposit(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/ReasonString/ReasonString.sol#L8-L11) require/ revert has not reason string:- 
	- [require(bool)(msg.value == amount)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/ReasonString/ReasonString.sol#L9)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/ReasonString/ReasonString.sol#L8-L11


