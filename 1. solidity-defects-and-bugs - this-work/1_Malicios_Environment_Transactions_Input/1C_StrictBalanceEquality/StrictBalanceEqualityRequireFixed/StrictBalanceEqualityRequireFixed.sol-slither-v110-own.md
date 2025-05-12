**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [floating-pragma](#floating-pragma) (1 results) (Low)
 - [no-reason-string](#no-reason-string) (1 results) (Low)
## floating-pragma
Impact: Low
Confidence: High
 - [ ] ID-0
[^0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEqualityRequireFixed/StrictBalanceEqualityRequireFixed.sol#L2) is a floating pragma, use a fixed version of solidity:

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEqualityRequireFixed/StrictBalanceEqualityRequireFixed.sol#L2


## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-1
[StrictBalanceEqualityToken.buy(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEqualityRequireFixed/StrictBalanceEqualityRequireFixed.sol#L24-L31) require/ revert has not reason string:- 
	- [require(bool)(amount <= availableSupply)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEqualityRequireFixed/StrictBalanceEqualityRequireFixed.sol#L25)
	- [require(bool)(amount * tokenPrice == msg.value)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEqualityRequireFixed/StrictBalanceEqualityRequireFixed.sol#L26)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1C_StrictBalanceEquality/StrictBalanceEqualityRequireFixed/StrictBalanceEqualityRequireFixed.sol#L24-L31


