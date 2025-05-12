**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [divide-before-multiply](#divide-before-multiply) (1 results) (Medium)
 - [solc-version](#solc-version) (1 results) (Informational)
## divide-before-multiply
Impact: Medium
Confidence: Medium
 - [ ] ID-0
[GasCostlyLoopFixed.getNetSalary(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/5_Resource_Consumption_Gas_Issues/5A_GasCostlyLoops/GasCostlyLoopsFixed/GasCostlyLoopsFixed.sol#L16-L28) performs a multiplication on the result of a division:
	- [netSalary = salary - (_companyGrossSalaries[index] / 100) * 45](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/5_Resource_Consumption_Gas_Issues/5A_GasCostlyLoops/GasCostlyLoopsFixed/GasCostlyLoopsFixed.sol#L26)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/5_Resource_Consumption_Gas_Issues/5A_GasCostlyLoops/GasCostlyLoopsFixed/GasCostlyLoopsFixed.sol#L16-L28


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/5_Resource_Consumption_Gas_Issues/5A_GasCostlyLoops/GasCostlyLoopsFixed/GasCostlyLoopsFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/5_Resource_Consumption_Gas_Issues/5A_GasCostlyLoops/GasCostlyLoopsFixed/GasCostlyLoopsFixed.sol#L2


