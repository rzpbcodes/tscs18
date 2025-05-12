**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [div-by-zero-unchecked](#div-by-zero-unchecked) (2 results) (Low)
## div-by-zero-unchecked
Impact: Low
Confidence: Low
 - [ ] ID-0
[ImproperDataValidationFixed.modifyState(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1D_ImproperDataValidation/ImproperDataValidationFixed/ImproperDataValidationFixed.sol#L50-L52) performs divison by not zero-checked variable:- 
	- [_someNumber = _someNumber / option](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1D_ImproperDataValidation/ImproperDataValidationFixed/ImproperDataValidationFixed.sol#L51)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1D_ImproperDataValidation/ImproperDataValidationFixed/ImproperDataValidationFixed.sol#L50-L52


 - [ ] ID-1
[ImproperDataValidationFixed.isWinner(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1D_ImproperDataValidation/ImproperDataValidationFixed/ImproperDataValidationFixed.sol#L41-L44) performs divison by not zero-checked variable:- 
	- [(_someNumber <= option) || (_someNumber / option) == 1](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1D_ImproperDataValidation/ImproperDataValidationFixed/ImproperDataValidationFixed.sol#L43)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1D_ImproperDataValidation/ImproperDataValidationFixed/ImproperDataValidationFixed.sol#L41-L44


