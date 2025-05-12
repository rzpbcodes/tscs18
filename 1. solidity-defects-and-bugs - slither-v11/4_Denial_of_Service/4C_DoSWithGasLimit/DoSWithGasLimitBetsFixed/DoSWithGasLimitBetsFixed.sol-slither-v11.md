**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [events-maths](#events-maths) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [immutable-states](#immutable-states) (2 results) (Optimization)
## events-maths
Impact: Low
Confidence: Medium
 - [ ] ID-0
[DenialOfServiceGasLimitBets.close(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L43-L49) should emit an event for: 
	- [winningScore = score](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L48) 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L43-L49


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L2


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-2
[DenialOfServiceGasLimitBets.threshold](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L6) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L6


 - [ ] ID-3
[DenialOfServiceGasLimitBets.owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L5) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L5


