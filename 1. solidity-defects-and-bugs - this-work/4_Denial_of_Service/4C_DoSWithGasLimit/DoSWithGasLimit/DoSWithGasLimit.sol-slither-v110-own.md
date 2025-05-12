**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [no-reason-string](#no-reason-string) (1 results) (Low)
 - [unchecked-send-hidden](#unchecked-send-hidden) (1 results) (Low)
## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-0
[DenialOfServiceGasLimit.distributeToBenefactors()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimit/DoSWithGasLimit.sol#L30-L36) require/ revert has not reason string:- 
	- [require(bool)(benefactorsCount > 0)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimit/DoSWithGasLimit.sol#L31)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimit/DoSWithGasLimit.sol#L30-L36


## unchecked-send-hidden
Impact: Low
Confidence: High
 - [ ] ID-1
[DenialOfServiceGasLimit.distributeToBenefactors()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimit/DoSWithGasLimit.sol#L30-L36) return value is not checked:- 
	- [success = _benefactors[index].send(ammountPerBenefactor)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimit/DoSWithGasLimit.sol#L34)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimit/DoSWithGasLimit.sol#L30-L36


