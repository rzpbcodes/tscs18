**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [div-by-zero-unchecked](#div-by-zero-unchecked) (1 results) (Low)
 - [no-reason-string](#no-reason-string) (4 results) (Low)
 - [gas-costly-loop](#gas-costly-loop) (1 results) (Optimization)
## div-by-zero-unchecked
Impact: Low
Confidence: Low
 - [ ] ID-0
[DenialOfServiceGasLimitBets.close(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L47-L62) performs divison by not zero-checked variable:- 
	- [amount = address(this).balance / winners](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L59)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L47-L62


## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-1
[DenialOfServiceGasLimitBets.bet(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L38-L45) require/ revert has not reason string:- 
	- [require(bool)(state == Status.OPEN)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L39)
	- [require(bool)(msg.value == threshold)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L40)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L38-L45


 - [ ] ID-2
[DenialOfServiceGasLimitBets.open()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L32-L35) require/ revert has not reason string:- 
	- [require(bool)(state == Status.CLOSED)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L33)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L32-L35


 - [ ] ID-3
[DenialOfServiceGasLimitBets.close(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L47-L62) require/ revert has not reason string:- 
	- [require(bool)(state == Status.OPEN)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L48)
	- [require(bool)(address(this).balance > 0)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L49)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L47-L62


 - [ ] ID-4
[DenialOfServiceGasLimitBets.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L64-L69) require/ revert has not reason string:- 
	- [require(bool)(state == Status.FINISHED)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L65)
	- [require(bool)(winningBets[msg.sender])](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L66)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L64-L69


## gas-costly-loop
Impact: Optimization
Confidence: High
 - [ ] ID-5
[DenialOfServiceGasLimitBets.close(uint256)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L47-L62) access variables in loop: 
	- [bets[i] == score](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L54)
	- [winningBets[players[i]] = true](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L55)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4C_DoSWithGasLimit/DoSWithGasLimitBets/DoSWithGasLimitBets.sol#L47-L62


