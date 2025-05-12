**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [calls-loop](#calls-loop) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [reentrancy-unlimited-gas](#reentrancy-unlimited-gas) (1 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## calls-loop
Impact: Low
Confidence: Medium
 - [ ] ID-0
[DenialOfServiceLoopFixed.distributeToBenefactors()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L32-L44) has external calls inside a loop: [benefactors[index].send(ammountPerBenefactor)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L40)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L32-L44


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L2


## reentrancy-unlimited-gas
Impact: Informational
Confidence: Medium
 - [ ] ID-2
Reentrancy in [DenialOfServiceLoopFixed.distributeToBenefactors()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L32-L44):
	External calls:
	- [benefactors[index].send(ammountPerBenefactor)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L40)
	State variables written after the call(s):
	- [rewardCollected[benefactors[index]] = true](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L41)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L32-L44


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-3
[DenialOfServiceLoopFixed.owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L10) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L10


