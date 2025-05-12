**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [reentrancy-no-eth](#reentrancy-no-eth) (1 results) (Medium)
 - [missing-zero-check](#missing-zero-check) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [low-level-calls](#low-level-calls) (1 results) (Informational)
## reentrancy-no-eth
Impact: Medium
Confidence: Medium
 - [ ] ID-0
Reentrancy in [InsufficientGasGriefingFixed.execute(bytes,address)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefingFixed/InsufficientGasGriefingFixed.sol#L8-L26):
	External calls:
	- [(gasCallSuccess,gasBytes) = address(worker).call(abi.encodeWithSignature(getGasLimit()))](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefingFixed/InsufficientGasGriefingFixed.sol#L13-L15)
	State variables written after the call(s):
	- [executed[data] = true](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefingFixed/InsufficientGasGriefingFixed.sol#L21)
	[InsufficientGasGriefingFixed.executed](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefingFixed/InsufficientGasGriefingFixed.sol#L6) can be used in cross function reentrancies:
	- [InsufficientGasGriefingFixed.execute(bytes,address)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefingFixed/InsufficientGasGriefingFixed.sol#L8-L26)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefingFixed/InsufficientGasGriefingFixed.sol#L8-L26


## missing-zero-check
Impact: Low
Confidence: Medium
 - [ ] ID-1
[InsufficientGasGriefingFixed.execute(bytes,address).worker](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefingFixed/InsufficientGasGriefingFixed.sol#L8) lacks a zero-check on :
		- [(gasCallSuccess,gasBytes) = address(worker).call(abi.encodeWithSignature(getGasLimit()))](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefingFixed/InsufficientGasGriefingFixed.sol#L13-L15)
		- [(success,None) = address(worker).call(abi.encodeWithSignature(execute(bytes),data))](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefingFixed/InsufficientGasGriefingFixed.sol#L22-L24)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefingFixed/InsufficientGasGriefingFixed.sol#L8


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-2
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefingFixed/InsufficientGasGriefingFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefingFixed/InsufficientGasGriefingFixed.sol#L2


## low-level-calls
Impact: Informational
Confidence: High
 - [ ] ID-3
Low level call in [InsufficientGasGriefingFixed.execute(bytes,address)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefingFixed/InsufficientGasGriefingFixed.sol#L8-L26):
	- [(gasCallSuccess,gasBytes) = address(worker).call(abi.encodeWithSignature(getGasLimit()))](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefingFixed/InsufficientGasGriefingFixed.sol#L13-L15)
	- [(success,None) = address(worker).call(abi.encodeWithSignature(execute(bytes),data))](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefingFixed/InsufficientGasGriefingFixed.sol#L22-L24)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4E_InsufficientGasGriefing/InsufficientGasGriefingFixed/InsufficientGasGriefingFixed.sol#L8-L26


