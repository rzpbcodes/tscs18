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
[ShortAddressFixed](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddressFixed/ShortAddressFixed.sol#L5-L37) has incorrect ERC20 function interface:[ShortAddressFixed.transfer(address,uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddressFixed/ShortAddressFixed.sol#L27-L36)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddressFixed/ShortAddressFixed.sol#L5-L37


## missing-zero-check
Impact: Low
Confidence: Medium
 - [ ] ID-1
[ShortAddressFixed.transfer(address,uint256).to](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddressFixed/ShortAddressFixed.sol#L27) lacks a zero-check on :
		- [address(to).transfer(value)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddressFixed/ShortAddressFixed.sol#L35)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddressFixed/ShortAddressFixed.sol#L27


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-2
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddressFixed/ShortAddressFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddressFixed/ShortAddressFixed.sol#L2


## reentrancy-unlimited-gas
Impact: Informational
Confidence: Medium
 - [ ] ID-3
Reentrancy in [ShortAddressFixed.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddressFixed/ShortAddressFixed.sol#L20-L25):
	External calls:
	- [address(msg.sender).transfer(toSend)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddressFixed/ShortAddressFixed.sol#L23)
	State variables written after the call(s):
	- [_balance[msg.sender] = 0](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddressFixed/ShortAddressFixed.sol#L24)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9A_ShortAddress/ShortAddressFixed/ShortAddressFixed.sol#L20-L25


