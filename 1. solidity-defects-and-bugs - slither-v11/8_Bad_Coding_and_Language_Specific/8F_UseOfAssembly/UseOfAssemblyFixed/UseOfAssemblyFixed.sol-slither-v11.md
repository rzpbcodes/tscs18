**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [return-bomb](#return-bomb) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [low-level-calls](#low-level-calls) (1 results) (Informational)
## return-bomb
Impact: Low
Confidence: Medium
 - [ ] ID-0
[UseOfAssemblyFixed.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssemblyFixed/UseOfAssemblyFixed.sol#L12-L18) tries to limit the gas of an external call that controls implicit decoding
	[(sent,None) = address(msg.sender).call{gas: 2300,value: toSend}()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssemblyFixed/UseOfAssemblyFixed.sol#L16)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssemblyFixed/UseOfAssemblyFixed.sol#L12-L18


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssemblyFixed/UseOfAssemblyFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssemblyFixed/UseOfAssemblyFixed.sol#L2


## low-level-calls
Impact: Informational
Confidence: High
 - [ ] ID-2
Low level call in [UseOfAssemblyFixed.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssemblyFixed/UseOfAssemblyFixed.sol#L12-L18):
	- [(sent,None) = address(msg.sender).call{gas: 2300,value: toSend}()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssemblyFixed/UseOfAssemblyFixed.sol#L16)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8F_UseOfAssembly/UseOfAssemblyFixed/UseOfAssemblyFixed.sol#L12-L18


