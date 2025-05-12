**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [no-reason-string](#no-reason-string) (1 results) (Low)
 - [unchecked-send-hidden](#unchecked-send-hidden) (1 results) (Low)
## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-0
[DenialOfServiceGasLimit.distributeToBenefactors(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L32-L49) require/ revert has not reason string:- 
	- [require(bool)(benefactorsCount > 0)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L36)
	- [require(bool)(_lastBenefactorIndex + currentSliceCount < benefactorsCount)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L37)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L32-L49


## unchecked-send-hidden
Impact: Low
Confidence: High
 - [ ] ID-1
[DenialOfServiceGasLimit.distributeToBenefactors(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L32-L49) return value is not checked:- 
	- [success = _benefactors[index].send(_benefactorShare)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L46)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitFixed/DoSWithGasLimitFixed.sol#L32-L49


