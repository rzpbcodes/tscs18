**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [solc-version](#solc-version) (1 results) (Informational)
 - [immutable-states](#immutable-states) (2 results) (Optimization)
## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-0
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L2


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-1
[DenialOfServiceGasLimitBets.threshold](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L13) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L13


 - [ ] ID-2
[DenialOfServiceGasLimitBets.owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L5) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L5


