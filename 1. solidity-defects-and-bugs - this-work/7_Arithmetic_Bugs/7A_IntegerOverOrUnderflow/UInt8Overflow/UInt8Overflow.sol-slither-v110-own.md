**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [floating-pragma](#floating-pragma) (1 results) (Low)
 - [uint8-overflow](#uint8-overflow) (1 results) (Low)
## floating-pragma
Impact: Low
Confidence: High
 - [ ] ID-0
[^0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7A_IntegerOverOrUnderflow/UInt8Overflow/UInt8Overflow.sol#L2) is a floating pragma, use a fixed version of solidity:

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7A_IntegerOverOrUnderflow/UInt8Overflow/UInt8Overflow.sol#L2


## uint8-overflow
Impact: Low
Confidence: Low
 - [ ] ID-1
[Overflow.increasePrice(uint8)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7A_IntegerOverOrUnderflow/UInt8Overflow/UInt8Overflow.sol#L13-L15) may overflow over small data types:- 
	- [price += amount](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7A_IntegerOverOrUnderflow/UInt8Overflow/UInt8Overflow.sol#L14)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/7_Arithmetic_Bugs/7A_IntegerOverOrUnderflow/UInt8Overflow/UInt8Overflow.sol#L13-L15


