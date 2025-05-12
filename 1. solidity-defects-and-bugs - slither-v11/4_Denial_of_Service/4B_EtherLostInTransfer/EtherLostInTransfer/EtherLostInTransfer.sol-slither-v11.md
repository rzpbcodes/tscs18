**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [calls-loop](#calls-loop) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [naming-convention](#naming-convention) (1 results) (Informational)
## calls-loop
Impact: Low
Confidence: Medium
 - [ ] ID-0
[EtherLostInTransfer.Split(address[])](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransfer/EtherLostInTransfer.sol#L6-L23) has external calls inside a loop: [address(recepients[recipientIndex]).transfer(share)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransfer/EtherLostInTransfer.sol#L21)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransfer/EtherLostInTransfer.sol#L6-L23


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-1
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransfer/EtherLostInTransfer.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransfer/EtherLostInTransfer.sol#L2


## naming-convention
Impact: Informational
Confidence: High
 - [ ] ID-2
Function [EtherLostInTransfer.Split(address[])](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransfer/EtherLostInTransfer.sol#L6-L23) is not in mixedCase

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/4_Denial_of_Service/4B_EtherLostInTransfer/EtherLostInTransfer/EtherLostInTransfer.sol#L6-L23


