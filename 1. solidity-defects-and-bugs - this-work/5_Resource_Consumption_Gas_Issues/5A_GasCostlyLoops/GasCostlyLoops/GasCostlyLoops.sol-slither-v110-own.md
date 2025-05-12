**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [div-by-zero-unchecked](#div-by-zero-unchecked) (1 results) (Low)
 - [gas-costly-loop](#gas-costly-loop) (1 results) (Optimization)
## div-by-zero-unchecked
Impact: Low
Confidence: Low
 - [ ] ID-0
[GasCostlyLoop.getNetSalariesOrdered()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5A_GasCostlyLoops/GasCostlyLoops/GasCostlyLoops.sol#L12-L37) performs divison by not zero-checked variable:- 
	- [salary = salary - (_companyGrossSalaries[index] / 100) * 45](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5A_GasCostlyLoops/GasCostlyLoops/GasCostlyLoops.sol#L16)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5A_GasCostlyLoops/GasCostlyLoops/GasCostlyLoops.sol#L12-L37


## gas-costly-loop
Impact: Optimization
Confidence: High
 - [ ] ID-1
[GasCostlyLoop.getNetSalariesOrdered()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5A_GasCostlyLoops/GasCostlyLoops/GasCostlyLoops.sol#L12-L37) access variables in loop: 
	- [salary = _companyGrossSalaries[index]](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5A_GasCostlyLoops/GasCostlyLoops/GasCostlyLoops.sol#L15)
	- [salary = salary - (_companyGrossSalaries[index] / 100) * 45](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5A_GasCostlyLoops/GasCostlyLoops/GasCostlyLoops.sol#L16)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5A_GasCostlyLoops/GasCostlyLoops/GasCostlyLoops.sol#L12-L37


