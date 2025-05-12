**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [no-reason-string](#no-reason-string) (1 results) (Low)
 - [gas-costly-loop](#gas-costly-loop) (1 results) (Optimization)
## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-0
[DenialOfServiceLoopFixed.distributeToBenefactors()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L32-L44) require/ revert has not reason string:- 
	- [require(bool)(benefactorsCount > 0)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L33)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L32-L44


## gas-costly-loop
Impact: Optimization
Confidence: High
 - [ ] ID-1
[DenialOfServiceLoopFixed.distributeToBenefactors()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L32-L44) access variables in loop: 
	- [rewardCollected[benefactors[index]] = true](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L41)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4D_DenialOfServiceLoop/DenialOfServiceLoopFixed/DenialOfServiceLoopFixed.sol#L32-L44


