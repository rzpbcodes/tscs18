**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [div-by-zero-unchecked](#div-by-zero-unchecked) (1 results) (Low)
 - [uint8-overflow](#uint8-overflow) (1 results) (Low)
## div-by-zero-unchecked
Impact: Low
Confidence: Low
 - [ ] ID-0
[HighGasConsumptionDataType.computeAPR(uint8[])](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5C_HighGasConsumptionDataType/HighGasConsumptionDataType/HighGasConsumptionDataType.sol#L8-L17) performs divison by not zero-checked variable:- 
	- [tempAverageAPR = tempAverageAPR / uint8(agenciesAPR.length)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5C_HighGasConsumptionDataType/HighGasConsumptionDataType/HighGasConsumptionDataType.sol#L15)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5C_HighGasConsumptionDataType/HighGasConsumptionDataType/HighGasConsumptionDataType.sol#L8-L17


## uint8-overflow
Impact: Low
Confidence: Low
 - [ ] ID-1
[HighGasConsumptionDataType.computeAPR(uint8[])](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5C_HighGasConsumptionDataType/HighGasConsumptionDataType/HighGasConsumptionDataType.sol#L8-L17) may overflow over small data types:- 
	- [tempAverageAPR += agenciesAPR[index]](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5C_HighGasConsumptionDataType/HighGasConsumptionDataType/HighGasConsumptionDataType.sol#L13)
	- [index ++](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5C_HighGasConsumptionDataType/HighGasConsumptionDataType/HighGasConsumptionDataType.sol#L12)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/5_Resource_Consumption_Gas_Issues/5C_HighGasConsumptionDataType/HighGasConsumptionDataType/HighGasConsumptionDataType.sol#L8-L17


