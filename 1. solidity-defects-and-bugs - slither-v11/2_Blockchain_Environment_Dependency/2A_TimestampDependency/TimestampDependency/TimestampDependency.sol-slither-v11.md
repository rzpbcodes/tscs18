**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [arbitrary-send-eth](#arbitrary-send-eth) (1 results) (High)
 - [timestamp](#timestamp) (1 results) (Low)
 - [solc-version](#solc-version) (1 results) (Informational)
 - [immutable-states](#immutable-states) (2 results) (Optimization)
## arbitrary-send-eth
Impact: High
Confidence: Medium
 - [ ] ID-0
[TimestampDependency.play()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2A_TimestampDependency/TimestampDependency/TimestampDependency.sol#L33-L43) sends eth to arbitrary user
	Dangerous calls:
	- [address(msg.sender).transfer(10 * fee)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2A_TimestampDependency/TimestampDependency/TimestampDependency.sol#L38)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2A_TimestampDependency/TimestampDependency/TimestampDependency.sol#L33-L43


## timestamp
Impact: Low
Confidence: Medium
 - [ ] ID-1
[TimestampDependency.play()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2A_TimestampDependency/TimestampDependency/TimestampDependency.sol#L33-L43) uses timestamp for comparisons
	Dangerous comparisons:
	- [block.timestamp >= _gameStartTime && block.timestamp <= _gameEndTime](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2A_TimestampDependency/TimestampDependency/TimestampDependency.sol#L36)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2A_TimestampDependency/TimestampDependency/TimestampDependency.sol#L33-L43


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-2
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2A_TimestampDependency/TimestampDependency/TimestampDependency.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2A_TimestampDependency/TimestampDependency/TimestampDependency.sol#L2


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-3
[TimestampDependency.fee](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2A_TimestampDependency/TimestampDependency/TimestampDependency.sol#L10) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2A_TimestampDependency/TimestampDependency/TimestampDependency.sol#L10


 - [ ] ID-4
[TimestampDependency._owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2A_TimestampDependency/TimestampDependency/TimestampDependency.sol#L7) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2A_TimestampDependency/TimestampDependency/TimestampDependency.sol#L7


