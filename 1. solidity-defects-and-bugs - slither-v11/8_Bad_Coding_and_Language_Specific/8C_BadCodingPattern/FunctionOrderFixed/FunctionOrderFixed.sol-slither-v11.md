**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [locked-ether](#locked-ether) (1 results) (Medium)
 - [dead-code](#dead-code) (2 results) (Informational)
 - [solc-version](#solc-version) (1 results) (Informational)
## locked-ether
Impact: Medium
Confidence: High
 - [ ] ID-0
Contract locking ether found:
	Contract [FunctionOrder](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/FunctionOrderFixed/FunctionOrderFixed.sol#L5-L17) has payable functions:
	 - [FunctionOrder.receive()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/FunctionOrderFixed/FunctionOrderFixed.sol#L8)
	But does not have a function to withdraw the ether

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/FunctionOrderFixed/FunctionOrderFixed.sol#L5-L17


## dead-code
Impact: Informational
Confidence: Medium
 - [ ] ID-1
[FunctionOrder.somethingInternal()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/FunctionOrderFixed/FunctionOrderFixed.sol#L14) is never used and should be removed

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/FunctionOrderFixed/FunctionOrderFixed.sol#L14


 - [ ] ID-2
[FunctionOrder.somethingPrivate()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/FunctionOrderFixed/FunctionOrderFixed.sol#L16) is never used and should be removed

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/FunctionOrderFixed/FunctionOrderFixed.sol#L16


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-3
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/FunctionOrderFixed/FunctionOrderFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/FunctionOrderFixed/FunctionOrderFixed.sol#L2


