**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [gas-costly-loop](#gas-costly-loop) (1 results) (Optimization)
## gas-costly-loop
Impact: Optimization
Confidence: High
 - [ ] ID-0
[GasCostlyPatternStateVariableComputations.computeAPR(uint256[])](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5B_GasCostlyPattern/GasCostlyPatternStateVariableComputations/GasCostlyPatternStateVariableComputations.sol#L8-L15) access variables in loop: 
	- [index < agenciesAPR.length](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5B_GasCostlyPattern/GasCostlyPatternStateVariableComputations/GasCostlyPatternStateVariableComputations.sol#L11)
	- [_averageAPR += agenciesAPR[index]](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5B_GasCostlyPattern/GasCostlyPatternStateVariableComputations/GasCostlyPatternStateVariableComputations.sol#L12)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5B_GasCostlyPattern/GasCostlyPatternStateVariableComputations/GasCostlyPatternStateVariableComputations.sol#L8-L15


