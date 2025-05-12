**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [calls-loop](#calls-loop) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [unused-state](#unused-state) (1 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## calls-loop
Impact: Low
Confidence: Medium
 - [ ] ID-0
[DenialOfServiceLoop.distributeToBenefactors()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoop/DenialOfServiceLoop.sol#L32-L38) has external calls inside a loop: [benefactors[index].transfer(ammountPerBenefactor)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoop/DenialOfServiceLoop.sol#L36)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoop/DenialOfServiceLoop.sol#L32-L38


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoop/DenialOfServiceLoop.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoop/DenialOfServiceLoop.sol#L2


## unused-state
Impact: Informational
Confidence: High
 - [ ] ID-2
[DenialOfServiceLoop.rewardCollected](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoop/DenialOfServiceLoop.sol#L9) is never used in [DenialOfServiceLoop](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoop/DenialOfServiceLoop.sol#L6-L39)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoop/DenialOfServiceLoop.sol#L9


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-3
[DenialOfServiceLoop.owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoop/DenialOfServiceLoop.sol#L10) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoop/DenialOfServiceLoop.sol#L10


