**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [solc-version](#solc-version) (1 results) (Informational)
 - [naming-convention](#naming-convention) (9 results) (Informational)
 - [too-many-digits](#too-many-digits) (1 results) (Informational)
 - [immutable-states](#immutable-states) (1 results) (Optimization)
## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-0
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L2


## naming-convention
Impact: Informational
Confidence: High
 - [ ] ID-1
Function [BlockInfoDependencyFixed.provable_randomDS_proofVerify__returnCode(bytes32,string,bytes)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L50-L54) is not in mixedCase

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L50-L54


 - [ ] ID-2
Variable [BlockInfoDependencyFixed._contendersCount](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L9) is not in mixedCase

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L9


 - [ ] ID-3
Variable [BlockInfoDependencyFixed._contenders](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L10) is not in mixedCase

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L10


 - [ ] ID-4
Parameter [BlockInfoDependencyFixed.__callback(bytes32,string,bytes)._proof](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L74) is not in mixedCase

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L74


 - [ ] ID-5
Parameter [BlockInfoDependencyFixed.__callback(bytes32,string,bytes)._result](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L73) is not in mixedCase

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L73


 - [ ] ID-6
Parameter [BlockInfoDependencyFixed.__callback(bytes32,string,bytes)._queryId](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L72) is not in mixedCase

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L72


 - [ ] ID-7
Function [BlockInfoDependencyFixed.__callback(bytes32,string,bytes)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L71-L91) is not in mixedCase

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L71-L91


 - [ ] ID-8
Function [BlockInfoDependencyFixed.provable_cbAddress()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L56-L62) is not in mixedCase

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L56-L62


 - [ ] ID-9
Function [BlockInfoDependencyFixed.provable_newRandomDSQuery(uint256,uint256,uint256)](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L44-L48) is not in mixedCase

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L44-L48


## too-many-digits
Impact: Informational
Confidence: Medium
 - [ ] ID-10
[BlockInfoDependencyFixed.getRandomValue()](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L64-L69) uses literals with too many digits:
	- [GAS = 200000](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L66)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L64-L69


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-11
[BlockInfoDependencyFixed._owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L11) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2C_BadRandomNumberGen/BadRandomNumberGenFixed/BadRandomNumberGenFixed.sol#L11


