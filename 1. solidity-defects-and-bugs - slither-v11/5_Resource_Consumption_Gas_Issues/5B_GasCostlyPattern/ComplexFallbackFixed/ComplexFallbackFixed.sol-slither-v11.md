**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [solc-version](#solc-version) (1 results) (Informational)
 - [naming-convention](#naming-convention) (1 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-0
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/5_Resource_Consumption_Gas_Issues/5B_GasCostlyPattern/ComplexFallbackFixed/ComplexFallbackFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/5_Resource_Consumption_Gas_Issues/5B_GasCostlyPattern/ComplexFallbackFixed/ComplexFallbackFixed.sol#L2


## naming-convention
Impact: Informational
Confidence: High
 - [ ] ID-1
Event [ComplexFallbackFixed.newDoner(address)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/5_Resource_Consumption_Gas_Issues/5B_GasCostlyPattern/ComplexFallbackFixed/ComplexFallbackFixed.sol#L7) is not in CapWords

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/5_Resource_Consumption_Gas_Issues/5B_GasCostlyPattern/ComplexFallbackFixed/ComplexFallbackFixed.sol#L7


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-2
[ComplexFallbackFixed._owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/5_Resource_Consumption_Gas_Issues/5B_GasCostlyPattern/ComplexFallbackFixed/ComplexFallbackFixed.sol#L6) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/5_Resource_Consumption_Gas_Issues/5B_GasCostlyPattern/ComplexFallbackFixed/ComplexFallbackFixed.sol#L6


