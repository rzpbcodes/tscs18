**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [div-by-zero-unchecked](#div-by-zero-unchecked) (1 results) (Low)
## div-by-zero-unchecked
Impact: Low
Confidence: Low
 - [ ] ID-0
[Computer.compute(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/9_Environment_Configuration_Issues/9E_EthereumUpdateIncompatibility/HardcodedGasLimit/HardcodedGasLimit.sol#L5-L11) performs divison by not zero-checked variable:- 
	- [x = x / x](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/9_Environment_Configuration_Issues/9E_EthereumUpdateIncompatibility/HardcodedGasLimit/HardcodedGasLimit.sol#L8)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/9_Environment_Configuration_Issues/9E_EthereumUpdateIncompatibility/HardcodedGasLimit/HardcodedGasLimit.sol#L5-L11


