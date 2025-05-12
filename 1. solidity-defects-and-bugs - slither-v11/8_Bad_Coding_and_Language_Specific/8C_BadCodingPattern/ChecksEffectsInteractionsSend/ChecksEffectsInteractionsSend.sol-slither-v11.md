**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [solc-version](#solc-version) (1 results) (Informational)
 - [reentrancy-unlimited-gas](#reentrancy-unlimited-gas) (1 results) (Informational)
## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-0
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/ChecksEffectsInteractionsSend/ChecksEffectsInteractionsSend.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/ChecksEffectsInteractionsSend/ChecksEffectsInteractionsSend.sol#L2


## reentrancy-unlimited-gas
Impact: Informational
Confidence: Medium
 - [ ] ID-1
Reentrancy in [ChecksEffectsInteractionsSend.withdraw()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/ChecksEffectsInteractionsSend/ChecksEffectsInteractionsSend.sol#L15-L20):
	External calls:
	- [success = address(msg.sender).send(addrBal)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/ChecksEffectsInteractionsSend/ChecksEffectsInteractionsSend.sol#L17)
	State variables written after the call(s):
	- [balance[msg.sender] = 0](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/ChecksEffectsInteractionsSend/ChecksEffectsInteractionsSend.sol#L18)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/8_Bad_Coding_and_Language_Specific/8C_BadCodingPattern/ChecksEffectsInteractionsSend/ChecksEffectsInteractionsSend.sol#L15-L20


