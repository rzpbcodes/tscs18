**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [events-maths](#events-maths) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## events-maths
Impact: Low
Confidence: Medium
 - [ ] ID-0
[UnprotectedEtherTransfer.deposit()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/6_Authentication_Access_Control_Vulnerabilities/6D_UnprotectedEtherTransfer/UnprotectedTransfer/UnprotectedTransfer.sol#L19-L21) should emit an event for: 
	- [reserve = reserve + msg.value](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/6_Authentication_Access_Control_Vulnerabilities/6D_UnprotectedEtherTransfer/UnprotectedTransfer/UnprotectedTransfer.sol#L20) 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/6_Authentication_Access_Control_Vulnerabilities/6D_UnprotectedEtherTransfer/UnprotectedTransfer/UnprotectedTransfer.sol#L19-L21


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/6_Authentication_Access_Control_Vulnerabilities/6D_UnprotectedEtherTransfer/UnprotectedTransfer/UnprotectedTransfer.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/6_Authentication_Access_Control_Vulnerabilities/6D_UnprotectedEtherTransfer/UnprotectedTransfer/UnprotectedTransfer.sol#L2


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-2
[UnprotectedEtherTransfer.owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/6_Authentication_Access_Control_Vulnerabilities/6D_UnprotectedEtherTransfer/UnprotectedTransfer/UnprotectedTransfer.sol#L7) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/6_Authentication_Access_Control_Vulnerabilities/6D_UnprotectedEtherTransfer/UnprotectedTransfer/UnprotectedTransfer.sol#L7


