**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [solc-version](#solc-version) (1 results) (Informational)
 - [immutable-states](#immutable-states) (3 results) (Optimization)
## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-0
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretFixed/ImproperPrivateVariableSecretFixed.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretFixed/ImproperPrivateVariableSecretFixed.sol#L2


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-1
[ImproperPrivateVariableInitializationFixed._secretNumber](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretFixed/ImproperPrivateVariableSecretFixed.sol#L8) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretFixed/ImproperPrivateVariableSecretFixed.sol#L8


 - [ ] ID-2
[ImproperPrivateVariableInitializationFixed.fee](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretFixed/ImproperPrivateVariableSecretFixed.sol#L9) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretFixed/ImproperPrivateVariableSecretFixed.sol#L9


 - [ ] ID-3
[ImproperPrivateVariableInitializationFixed._owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretFixed/ImproperPrivateVariableSecretFixed.sol#L6) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretFixed/ImproperPrivateVariableSecretFixed.sol#L6


