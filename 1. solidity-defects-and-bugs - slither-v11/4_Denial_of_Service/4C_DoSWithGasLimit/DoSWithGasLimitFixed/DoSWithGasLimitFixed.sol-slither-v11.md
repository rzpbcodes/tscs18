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
[DenialOfServiceGasLimit.distributeToBenefactors(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L32-L49) has external calls inside a loop: [success = _benefactors[index].send(_benefactorShare)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L46)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L32-L49


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L3)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L3


## reentrancy-unlimited-gas
Impact: Informational
Confidence: Medium
 - [ ] ID-2
Reentrancy in [DenialOfServiceGasLimit.distributeToBenefactors(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L32-L49):
	External calls:
	- [success = _benefactors[index].send(_benefactorShare)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L46)
	State variables written after the call(s):
	- [_lastBenefactorIndex = _lastBenefactorIndex + currentSliceCount](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L48)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L32-L49


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-3
[DenialOfServiceGasLimit.owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L8) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L8


