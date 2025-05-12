**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [erc20-interface](#erc20-interface) (1 results) (Medium)
 - [missing-zero-check](#missing-zero-check) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [reentrancy-unlimited-gas](#reentrancy-unlimited-gas) (1 results) (Informational)
## erc20-interface
Impact: Medium
Confidence: High
 - [ ] ID-0
[ShortAddress](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddress/ShortAddress.sol#L5-L26) has incorrect ERC20 function interface:[ShortAddress.transfer(address,uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddress/ShortAddress.sol#L19-L25)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddress/ShortAddress.sol#L5-L26


## missing-zero-check
Impact: Low
Confidence: Medium
 - [ ] ID-1
[ShortAddress.transfer(address,uint256).to](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddress/ShortAddress.sol#L19) lacks a zero-check on :
		- [address(to).transfer(value)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddress/ShortAddress.sol#L24)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddress/ShortAddress.sol#L19


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-2
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddress/ShortAddress.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddress/ShortAddress.sol#L2


## reentrancy-unlimited-gas
Impact: Informational
Confidence: Medium
 - [ ] ID-3
Reentrancy in [ShortAddress.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddress/ShortAddress.sol#L12-L17):
	External calls:
	- [address(msg.sender).transfer(toSend)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddress/ShortAddress.sol#L15)
	State variables written after the call(s):
	- [_balance[msg.sender] = 0](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddress/ShortAddress.sol#L16)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddress/ShortAddress.sol#L12-L17


