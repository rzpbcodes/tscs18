**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [no-reason-string](#no-reason-string) (4 results) (Low)
## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-0
[DenialOfServiceGasLimitBets.bet(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L36-L41) require/ revert has not reason string:- 
	- [require(bool)(state == Status.OPEN)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L37)
	- [require(bool)(msg.value == threshold)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L38)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L36-L41


 - [ ] ID-1
[DenialOfServiceGasLimitBets.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L51-L56) require/ revert has not reason string:- 
	- [require(bool)(state == Status.FINISHED)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L52)
	- [require(bool)(bets[msg.sender] == winningScore)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L53)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L51-L56


 - [ ] ID-2
[DenialOfServiceGasLimitBets.open()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L30-L33) require/ revert has not reason string:- 
	- [require(bool)(state == Status.CLOSED)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L31)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L30-L33


 - [ ] ID-3
[DenialOfServiceGasLimitBets.close(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L43-L49) require/ revert has not reason string:- 
	- [require(bool)(state == Status.OPEN)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L44)
	- [require(bool)(betsCount[score] > 0)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L45)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBetsFixed/DoSWithGasLimitBetsFixed.sol#L43-L49


