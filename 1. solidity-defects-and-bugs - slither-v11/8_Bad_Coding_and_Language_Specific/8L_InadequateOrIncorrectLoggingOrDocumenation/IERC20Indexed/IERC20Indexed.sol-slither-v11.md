**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [solc-version](#solc-version) (1 results) (Informational)
 - [erc20-indexed](#erc20-indexed) (4 results) (Informational)
 - [constable-states](#constable-states) (3 results) (Optimization)
## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-0
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/IERC20Indexed/IERC20Indexed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/IERC20Indexed/IERC20Indexed.sol#L2


## erc20-indexed
Impact: Informational
Confidence: High
 - [ ] ID-1
ERC20 event [IERC20.Transfer(address,address,uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/IERC20Indexed/IERC20Indexed.sol#L27)does not index parameter to

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/IERC20Indexed/IERC20Indexed.sol#L27


 - [ ] ID-2
ERC20 event [IERC20.Approval(address,address,uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/IERC20Indexed/IERC20Indexed.sol#L28)does not index parameter owner

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/IERC20Indexed/IERC20Indexed.sol#L28


 - [ ] ID-3
ERC20 event [IERC20.Transfer(address,address,uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/IERC20Indexed/IERC20Indexed.sol#L27)does not index parameter from

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/IERC20Indexed/IERC20Indexed.sol#L27


 - [ ] ID-4
ERC20 event [IERC20.Approval(address,address,uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/IERC20Indexed/IERC20Indexed.sol#L28)does not index parameter spender

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/IERC20Indexed/IERC20Indexed.sol#L28


## constable-states
Impact: Optimization
Confidence: High
 - [ ] ID-5
[ERC20.decimals](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/IERC20Indexed/IERC20Indexed.sol#L37) should be constant 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/IERC20Indexed/IERC20Indexed.sol#L37


 - [ ] ID-6
[ERC20.name](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/IERC20Indexed/IERC20Indexed.sol#L35) should be constant 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/IERC20Indexed/IERC20Indexed.sol#L35


 - [ ] ID-7
[ERC20.symbol](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/IERC20Indexed/IERC20Indexed.sol#L36) should be constant 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8L_InadequateOrIncorrectLoggingOrDocumenation/IERC20Indexed/IERC20Indexed.sol#L36


