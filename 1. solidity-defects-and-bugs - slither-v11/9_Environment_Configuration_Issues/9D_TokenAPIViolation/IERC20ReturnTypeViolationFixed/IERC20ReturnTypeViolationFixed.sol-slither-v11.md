**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [solc-version](#solc-version) (1 results) (Informational)
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
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9D_TokenAPIViolation/IERC20ReturnTypeViolationFixed/IERC20ReturnTypeViolationFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9D_TokenAPIViolation/IERC20ReturnTypeViolationFixed/IERC20ReturnTypeViolationFixed.sol#L2


## constable-states
Impact: Optimization
Confidence: High
 - [ ] ID-1
[ERC20.decimals](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9D_TokenAPIViolation/IERC20ReturnTypeViolationFixed/IERC20ReturnTypeViolationFixed.sol#L42) should be constant 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9D_TokenAPIViolation/IERC20ReturnTypeViolationFixed/IERC20ReturnTypeViolationFixed.sol#L42


 - [ ] ID-2
[ERC20.name](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9D_TokenAPIViolation/IERC20ReturnTypeViolationFixed/IERC20ReturnTypeViolationFixed.sol#L40) should be constant 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9D_TokenAPIViolation/IERC20ReturnTypeViolationFixed/IERC20ReturnTypeViolationFixed.sol#L40


 - [ ] ID-3
[ERC20.symbol](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9D_TokenAPIViolation/IERC20ReturnTypeViolationFixed/IERC20ReturnTypeViolationFixed.sol#L41) should be constant 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/9_Environment_Configuration_Issues/9D_TokenAPIViolation/IERC20ReturnTypeViolationFixed/IERC20ReturnTypeViolationFixed.sol#L41


