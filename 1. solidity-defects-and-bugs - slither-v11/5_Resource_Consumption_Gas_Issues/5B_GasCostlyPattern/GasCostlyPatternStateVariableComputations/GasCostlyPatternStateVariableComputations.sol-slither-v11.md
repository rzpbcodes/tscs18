**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [costly-loop](#costly-loop) (1 results) (Informational)
 - [solc-version](#solc-version) (1 results) (Informational)
## costly-loop
Impact: Informational
Confidence: Medium
 - [ ] ID-0
[GasCostlyPatternStateVariableComputations.computeAPR(uint256[])](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/5_Resource_Consumption_Gas_Issues/5B_GasCostlyPattern/GasCostlyPatternStateVariableComputations/GasCostlyPatternStateVariableComputations.sol#L8-L15) has costly operations inside a loop:
	- [_averageAPR += agenciesAPR[index]](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/5_Resource_Consumption_Gas_Issues/5B_GasCostlyPattern/GasCostlyPatternStateVariableComputations/GasCostlyPatternStateVariableComputations.sol#L12)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/5_Resource_Consumption_Gas_Issues/5B_GasCostlyPattern/GasCostlyPatternStateVariableComputations/GasCostlyPatternStateVariableComputations.sol#L8-L15


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/5_Resource_Consumption_Gas_Issues/5B_GasCostlyPattern/GasCostlyPatternStateVariableComputations/GasCostlyPatternStateVariableComputations.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/5_Resource_Consumption_Gas_Issues/5B_GasCostlyPattern/GasCostlyPatternStateVariableComputations/GasCostlyPatternStateVariableComputations.sol#L2


