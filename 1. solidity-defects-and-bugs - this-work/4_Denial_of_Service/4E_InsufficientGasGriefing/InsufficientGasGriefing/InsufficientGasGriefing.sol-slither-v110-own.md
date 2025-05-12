**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [unchecked-lowlevel-hidden](#unchecked-lowlevel-hidden) (1 results) (Low)
## unchecked-lowlevel-hidden
Impact: Low
Confidence: High
 - [ ] ID-0
[InsufficientGasGriefing.execute(bytes,address)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefing/InsufficientGasGriefing.sol#L8-L18) return value is not checked:- 
	- [(success,None) = address(worker).call(abi.encodeWithSignature(execute(bytes),data))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefing/InsufficientGasGriefing.sol#L14-L16)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefing/InsufficientGasGriefing.sol#L8-L18


